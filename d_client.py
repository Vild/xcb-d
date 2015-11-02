#!/usr/bin/env python

# This is a heavy modified "c_client.py" from the libxcb repository.
# Changes made by Dan "Wild" Printzell 2015

from xml.etree.cElementTree import *
from os.path import basename
from functools import reduce
import getopt
import os
import sys
import errno
import time
import re

# Jump to the bottom of this file for the main routine

# Some hacks to make the API more readable, and to keep backwards compability
_cname_re = re.compile('([A-Z0-9][a-z]+|[A-Z0-9]+(?![a-z])|[a-z]+)')
_cname_special_cases = {'DECnet':'decnet'}

_extension_special_cases = ['XPrint', 'XCMisc', 'BigRequests']

_d_keywords = {'class' :    'class_',
               'new'   :    'new_',
               'delete':    'delete_',
               'public':    'public_',
               'private':   'private_',
               'protected': 'protected_',
               'default':   'default_',
               'in':        'in_',
               'out':       'out_',
               'body':      'body_',
               'module':    'module_',
               'import':    'import_',
               'extern':    'extern_',
               'struct':    'struct_',
               'interface': 'interface_',
               'template':  'template_',
               'union':     'union_',
               'while':     'while_',
               'share':     'share_',
               'version':   'version_',
               'function':  'function_',
               'as':        'as_',
               'immutable': 'immutable_',
               'real':      'real_',
               'alias':     'alias_'}

_dmodule = "xcb"
_dlines = []
_dlevel = 0
_ns = None

# global variable to keep track of serializers and
# switch data types due to weird dependencies
finished_serializers = []
finished_sizeof = []
finished_switch = []

# keeps enum objects so that we can refer to them when generating manpages.
enums = {}

def _d(fmt, *args):
    '''
    Writes the given line to the header file.
    '''
    _dlines[_dlevel].append(fmt % args)

# XXX See if this level thing is really necessary.
def _d_setlevel(idx):
    '''
    Changes the array that header lines are written to.
    Supports writing different sections of the header file.
    '''
    global _dlevel
    while len(_dlines) <= idx:
        _dlines.append([])
    _dlevel = idx

def _n_item(str):
    '''
    Does C-name conversion on a single string fragment.
    Uses a regexp with some hard-coded special cases.
    '''
    if str in _cname_special_cases:
        return _cname_special_cases[str]
    else:
        split = _cname_re.finditer(str)
        name_parts = [match.group(0) for match in split]
        return '_'.join(name_parts)

def _dkey(str):
    '''
    Checks for certain C++ reserved words and fixes them.
    '''
    if str in _d_keywords:
        return _d_keywords[str]
    else:
        return str

def _ext(str):
    '''
    Does C-name conversion on an extension name.
    Has some additional special cases on top of _n_item.
    '''
    if str in _extension_special_cases:
        return _n_item(str).lower()
    else:
        return str.lower()

def _n(list):
    '''
    Does C-name conversion on a tuple of strings.
    Different behavior depending on length of tuple, extension/not extension, etc.
    Basically C-name converts the individual pieces, then joins with underscores.
    '''
    if len(list) == 1:
        parts = list
    elif len(list) == 2:
        parts = [list[0], _n_item(list[1])]
    elif _ns.is_ext:
        parts = [list[0], _ext(list[1])] + [_n_item(i) for i in list[2:]]
    else:
        parts = [list[0]] + [_n_item(i) for i in list[1:]]
    return '_'.join(parts).lower()

def c_to_d(type):
    if type == "int8_t":
        return "byte"
    elif type == "uint8_t":
        return "ubyte"
    elif type == "int16_t":
        return "short"
    elif type == "uint16_t":
        return "ushort"
    elif type == "int32_t":
        return "int"
    elif type == "uint32_t":
        return "uint"
    elif type == "int64_t":
        return "long"
    elif type == "uint64_t":
        return "ulong"
    else:
        return type

def _t(list):
    '''
    Does C-name conversion on a tuple of strings representing a type.
    Same as _n but adds a "_t" on the end.
    '''
    if len(list) == 1:
        parts = [c_to_d(list[0])]
    elif len(list) == 2:
        parts = [c_to_d(list[0]), _n_item(list[1]), 't']
    elif _ns.is_ext:
        parts = [c_to_d(list[0]), _ext(list[1])] + [_n_item(i) for i in list[2:]] + ['t']
    else:
        parts = [c_to_d(list[0])] + [_n_item(i) for i in list[1:]] + ['t']
    return '_'.join(parts).lower()


def d_open(self):
    '''
    Exported function that handles module open.
    Opens the files and writes out the auto-generated comment, header file includes, etc.
    '''
    global _ns
    _ns = self.namespace
    _ns.d_ext_global_name = _n(_ns.prefix + ('id',))

    # Build the type-name collision avoidance table used by d_enum
    build_collision_table()

    _d_setlevel(0)

    _d('/*')
    _d(' * This file generated automatically from %s by d_client.py.', _ns.file)
    _d(' * Edit at your peril.')
    _d(' */')
    _d('')

    _d('/**')
    _d(' * @defgroup XCB_%s_API XCB %s API', _ns.ext_name, _ns.ext_name)
    _d(' * @brief %s XCB Protocol Implementation.', _ns.ext_name)
    _d(' * @{')
    _d(' **/')
    _d('')
    _d('module %s.%s;', _dmodule, _ns.header)
    _d('')
    _d('import %s.xcb;', _dmodule)

    if _ns.is_ext:
        for (n, h) in self.direct_imports:
            _d('import %s.%s;', _dmodule, h)

    _d('')
    _d('extern(C):')
    _d('')

    if _ns.is_ext:
        _d('')
        _d('enum int XCB_%s_MAJOR_VERSION = %s;', _ns.ext_name.upper(), _ns.major_version)
        _d('enum int XCB_%s_MINOR_VERSION = %s;', _ns.ext_name.upper(), _ns.minor_version)
        _d('') #XXX
        _d('extern(C) __gshared extern xcb_extension_t %s;', _ns.d_ext_global_name)

def d_close(self):
    '''
    Exported function that handles module close.
    Writes out all the stored content lines, then closes the files.
    '''
    _d_setlevel(2)
    _d('')
    _d('/**')
    _d(' * @}')
    _d(' */')

    # Write header file
    hfile = open('%s.d' % _ns.header, 'w')
    for list in _dlines:
        for line in list:
            hfile.write(line)
            hfile.write('\n')
    hfile.close()

def build_collision_table():
    global namecount
    namecount = {}

    for v in module.types.values():
        name = _t(v[0])
        namecount[name] = (namecount.get(name) or 0) + 1

def d_enum(self, name):
    '''
    Exported function that handles enum declarations.
    '''

    enums[name] = self

    tname = _t(name)
    if namecount[tname] > 1:
        tname = _t(name + ('enum',))

    basetype = ''
    for (enam, eval) in self.values:
        if eval != '':
            if int(eval) >= 2147483648:
                basetype = ' : uint'

    _d_setlevel(0)
    _d('')
    _d('enum %s%s {', tname, basetype)

    count = len(self.values)

    for (enam, eval) in self.values:
        count = count - 1
        equals = ' = ' if eval != '' else ''
        comma = ',' if count > 0 else ''
        doc = ''
        if hasattr(self, "doc") and self.doc and enam in self.doc.fields:
            doc = '\n/**< %s */\n' % self.doc.fields[enam]
        _d('    %s%s%s%s%s', _n(name + (enam,)).upper(), equals, eval, comma, doc)

    _d('}')

    for (enam, eval) in self.values:
        enum_item_name = _n(name+(enam,)).upper()
        _d('alias %s = %s.%s;', enum_item_name, tname, enum_item_name)

def _d_type_setup(self, name, postfix):
    '''
    Sets up all the C-related state by adding additional data fields to
    all Field and Type objects.  Here is where we figure out most of our
    variable and function names.

    Recurses into child fields and list member types.
    '''
    # Do all the various names in advance
    self.d_type = _t(name + postfix)
    self.d_wiretype = 'char' if self.d_type == 'void' else self.d_type

    self.d_iterator_type = _t(name + ('iterator',))
    self.d_next_name = _n(name + ('next',))
    self.d_end_name = _n(name + ('end',))

    self.d_request_name = _n(name)
    self.d_checked_name = _n(name + ('checked',))
    self.d_unchecked_name = _n(name + ('unchecked',))
    self.d_reply_name = _n(name + ('reply',))
    self.d_reply_type = _t(name + ('reply',))
    self.d_cookie_type = _t(name + ('cookie',))
    self.d_reply_fds_name = _n(name + ('reply_fds',))

    self.d_need_aux = False
    self.d_need_serialize = False
    self.d_need_sizeof = False

    self.d_aux_name = _n(name + ('aux',))
    self.d_aux_checked_name = _n(name + ('aux', 'checked'))
    self.d_aux_unchecked_name = _n(name + ('aux', 'unchecked'))
    self.d_serialize_name = _n(name + ('serialize',))
    self.d_unserialize_name = _n(name + ('unserialize',))
    self.d_unpack_name = _n(name + ('unpack',))
    self.d_sizeof_name = _n(name + ('sizeof',))

    # special case: structs where variable size fields are followed by fixed size fields
    self.d_var_followed_by_fixed_fields = False

    if self.is_switch:
        self.d_need_serialize = True
        self.d_container = 'struct'
        for bitcase in self.bitcases:
            bitcase.d_field_name = _dkey(bitcase.field_name)
            bitcase_name = bitcase.field_type if bitcase.type.has_name else name
            _d_type_setup(bitcase.type, bitcase_name, ())

    elif self.is_container:

        self.d_container = 'union' if self.is_union else 'struct'
        prev_varsized_field = None
        prev_varsized_offset = 0
        first_field_after_varsized = None

        for field in self.fields:
            _d_type_setup(field.type, field.field_type, ())
            if field.type.is_list:
                _d_type_setup(field.type.member, field.field_type, ())
                if (field.type.nmemb is None):
                    self.d_need_sizeof = True

            field.d_field_type = _t(field.field_type)
            field.d_field_const_type = ('' if field.type.nmemb == 1 else 'const ') + field.d_field_type
            field.d_field_name = _dkey(field.field_name)
            field.d_subscript = '[%d]' % field.type.nmemb if (field.type.nmemb and field.type.nmemb > 1) else ''
            field.d_pointer = ' ' if field.type.nmemb == 1 else '*'

            # correct the d_pointer field for variable size non-list types
            if not field.type.fixed_size() and field.d_pointer == ' ':
                field.d_pointer = '*'
            if field.type.is_list and not field.type.member.fixed_size():
                field.d_pointer = '*'

            if field.type.is_switch:
                field.d_pointer = '*'
                field.d_field_const_type = 'const ' + field.d_field_type
                self.d_need_aux = True
            elif not field.type.fixed_size() and not field.type.is_bitcase:
                self.d_need_sizeof = True

            field.d_iterator_type = _t(field.field_type + ('iterator',))      # xcb_fieldtype_iterator_t
            field.d_iterator_name = _n(name + (field.field_name, 'iterator')) # xcb_container_field_iterator
            field.d_accessor_name = _n(name + (field.field_name,))            # xcb_container_field
            field.d_length_name = _n(name + (field.field_name, 'length'))     # xcb_container_field_length
            field.d_end_name = _n(name + (field.field_name, 'end'))           # xcb_container_field_end

            field.prev_varsized_field = prev_varsized_field
            field.prev_varsized_offset = prev_varsized_offset

            if prev_varsized_offset == 0:
                first_field_after_varsized = field
            field.first_field_after_varsized = first_field_after_varsized

            if field.type.fixed_size():
                prev_varsized_offset += field.type.size
                # special case: intermixed fixed and variable size fields
                if prev_varsized_field is not None and not field.type.is_pad and field.wire:
                    if not self.is_union:
                        self.d_need_serialize = True
                        self.d_var_followed_by_fixed_fields = True
            else:
                self.last_varsized_field = field
                prev_varsized_field = field
                prev_varsized_offset = 0

            if self.d_var_followed_by_fixed_fields:
                if field.type.fixed_size():
                    field.prev_varsized_field = None

    if self.d_need_serialize:
        # when _unserialize() is wanted, create _sizeof() as well for consistency reasons
        self.d_need_sizeof = True

    # as switch does never appear at toplevel,
    # continue here with type construction
    if self.is_switch:
        if self.d_type not in finished_switch:
            finished_switch.append(self.d_type)
            # special: switch C structs get pointer fields for variable-sized members
            _d_complex(self)
            for bitcase in self.bitcases:
                bitcase_name = bitcase.type.name if bitcase.type.has_name else name
                _d_accessors(bitcase.type, bitcase_name, bitcase_name)
                # no list with switch as element, so no call to
                # _d_iterator(field.type, field_name) necessary

    if not self.is_bitcase:
        if self.d_need_serialize:
            if self.d_serialize_name not in finished_serializers:
                finished_serializers.append(self.d_serialize_name)
                _d_serialize('serialize', self)

                # _unpack() and _unserialize() are only needed for special cases:
                #   switch -> unpack
                #   special cases -> unserialize
                if self.is_switch or self.d_var_followed_by_fixed_fields:
                    _d_serialize('unserialize', self)

        if self.d_need_sizeof:
            if self.d_sizeof_name not in finished_sizeof:
                if not module.namespace.is_ext or self.name[:2] == module.namespace.prefix:
                    finished_sizeof.append(self.d_sizeof_name)
                    _d_serialize('sizeof', self)
# _d_type_setup()

def _d_delper_absolute_name(prefix, field=None):
    """
    turn prefix, which is a list of tuples (name, separator, Type obj) into a string
    representing a valid name in C (based on the context)
    if field is not None, append the field name as well
    """
    prefix_str = ''
    for name, sep, obj in prefix:
        prefix_str += name
        if '' == sep:
            sep = '->'
            if ((obj.is_bitcase and obj.has_name) or     # named bitcase
                (obj.is_switch and len(obj.parents)>1)):
                sep = '.'
        prefix_str += sep
    if field is not None:
        prefix_str += _dkey(field.field_name)
    return prefix_str
# _d_absolute_name

def _d_delper_field_mapping(complex_type, prefix, flat=False):
    """
    generate absolute names, based on prefix, for all fields starting from complex_type
    if flat == True, nested complex types are not taken into account
    """
    all_fields = {}
    if complex_type.is_switch:
        for b in complex_type.bitcases:
            if b.type.has_name:
                switch_name, switch_sep, switch_type = prefix[-1]
                bitcase_prefix = prefix + [(b.type.name[-1], '.', b.type)]
            else:
                bitcase_prefix = prefix

            if (True==flat and not b.type.has_name) or False==flat:
                all_fields.update(_d_delper_field_mapping(b.type, bitcase_prefix, flat))
    else:
        for f in complex_type.fields:
            fname = _d_delper_absolute_name(prefix, f)
            if f.field_name in all_fields:
                raise Exception("field name %s has been registered before" % f.field_name)

            all_fields[f.field_name] = (fname, f)
            if f.type.is_container and flat==False:
                if f.type.is_bitcase and not f.type.has_name:
                    new_prefix = prefix
                elif f.type.is_switch and len(f.type.parents)>1:
                    # nested switch gets another separator
                    new_prefix = prefix+[(f.d_field_name, '.', f.type)]
                else:
                    new_prefix = prefix+[(f.d_field_name, '->', f.type)]
                all_fields.update(_d_delper_field_mapping(f.type, new_prefix, flat))

    return all_fields
# _d_field_mapping()

def _d_delper_resolve_field_names (prefix):
    """
    get field names for all objects in the prefix array
    """
    all_fields = {}
    tmp_prefix = []
    # look for fields in the remaining containers
    for idx, p in enumerate(prefix):
        name, sep, obj = p
        if ''==sep:
            # sep can be preset in prefix, if not, make a sensible guess
            sep = '.' if (obj.is_switch or obj.is_bitcase) else '->'
            # exception: 'toplevel' object (switch as well!) always have sep '->'
            sep = '->' if idx<1 else sep
        if not obj.is_bitcase or (obj.is_bitcase and obj.has_name):
            tmp_prefix.append((name, sep, obj))
        all_fields.update(_d_delper_field_mapping(obj, tmp_prefix, flat=True))

    return all_fields
# _d_delper_resolve_field_names

def get_expr_fields(self):
    """
    get the Fields referenced by switch or list expression
    """
    def get_expr_field_names(expr):
        if expr.op is None:
            if expr.lenfield_name is not None:
                return [expr.lenfield_name]
            else:
                # constant value expr
                return []
        else:
            if expr.op == '~':
                return get_expr_field_names(expr.rhs)
            elif expr.op == 'popcount':
                return get_expr_field_names(expr.rhs)
            elif expr.op == 'sumof':
                # sumof expr references another list,
                # we need that list's length field here
                field = None
                for f in expr.lenfield_parent.fields:
                    if f.field_name == expr.lenfield_name:
                        field = f
                        break
                if field is None:
                    raise Exception("list field '%s' referenced by sumof not found" % expr.lenfield_name)
                # referenced list + its length field
                return [expr.lenfield_name] + get_expr_field_names(field.type.expr)
            elif expr.op == 'enumref':
                return []
            else:
                return get_expr_field_names(expr.lhs) + get_expr_field_names(expr.rhs)
    # get_expr_field_names()

    # resolve the field names with the parent structure(s)
    unresolved_fields_names = get_expr_field_names(self.expr)

    # construct prefix from self
    prefix = [('', '', p) for p in self.parents]
    if self.is_container:
        prefix.append(('', '', self))

    all_fields = _d_delper_resolve_field_names (prefix)
    resolved_fields_names = list(filter(lambda x: x in all_fields.keys(), unresolved_fields_names))
    if len(unresolved_fields_names) != len(resolved_fields_names):
        raise Exception("could not resolve all fields for %s" % self.name)

    resolved_fields = [all_fields[n][1] for n in resolved_fields_names]
    return resolved_fields
# get_expr_fields()

def resolve_expr_fields(complex_obj):
    """
    find expr fields appearing in complex_obj and descendents that cannot be resolved within complex_obj
    these are normally fields that need to be given as function parameters
    """
    all_fields = []
    expr_fields = []
    unresolved = []

    for field in complex_obj.fields:
        all_fields.append(field)
        if field.type.is_switch or field.type.is_list:
            expr_fields += get_expr_fields(field.type)
        if field.type.is_container:
            expr_fields += resolve_expr_fields(field.type)

    # try to resolve expr fields
    for e in expr_fields:
        if e not in all_fields and e not in unresolved:
            unresolved.append(e)
    return unresolved
# resolve_expr_fields()

def get_serialize_params(context, self, buffer_var='_buffer', aux_var='_aux'):
    """
    functions like _serialize(), _unserialize(), and _unpack() sometimes need additional parameters:
    E.g. in order to unpack switch, extra parameters might be needed to evaluate the switch
    expression. This function tries to resolve all fields within a structure, and returns the
    unresolved fields as the list of external parameters.
    """
    def add_param(params, param):
        if param not in params:
            params.append(param)

    # collect all fields into param_fields
    param_fields = []
    wire_fields = []

    for field in self.fields:
        if field.visible:
            # the field should appear as a parameter in the function call
            param_fields.append(field)
        if field.wire and not field.auto:
            if field.type.fixed_size() and not self.is_switch:
                # field in the xcb_out structure
                wire_fields.append(field)
        # fields like 'pad0' are skipped!

    # in case of switch, parameters always contain any fields referenced in the switch expr
    # we do not need any variable size fields here, as the switch data type contains both
    # fixed and variable size fields
    if self.is_switch:
        param_fields = get_expr_fields(self)

    # _serialize()/_unserialize()/_unpack() function parameters
    # note: don't use set() for params, it is unsorted
    params = []

    # 1. the parameter for the void * buffer
    if  'serialize' == context:
        params.append(('void', '**', buffer_var))
    elif context in ('unserialize', 'unpack', 'sizeof'):
        params.append(('const void', '*', buffer_var))

    # 2. any expr fields that cannot be resolved within self and descendants
    unresolved_fields = resolve_expr_fields(self)
    for f in unresolved_fields:
        add_param(params, (f.d_field_type, '', f.d_field_name))

    # 3. param_fields contain the fields necessary to evaluate the switch expr or any other fields
    #    that do not appear in the data type struct
    for p in param_fields:
        if self.is_switch:
            typespec = p.d_field_const_type
            pointerspec = p.d_pointer
            add_param(params, (typespec, pointerspec, p.d_field_name))
        else:
            if p.visible and not p.wire and not p.auto:
                typespec = p.d_field_type
                pointerspec = ''
                add_param(params, (typespec, pointerspec, p.d_field_name))

    # 4. aux argument
    if 'serialize' == context:
        add_param(params, ('const %s' % self.d_type, '*', aux_var))
    elif 'unserialize' == context:
        add_param(params, ('%s' % self.d_type, '**', aux_var))
    elif 'unpack' == context:
        add_param(params, ('%s' % self.d_type, '*', aux_var))

    # 5. switch contains all variable size fields as struct members
    #    for other data types though, these have to be supplied separately
    #    this is important for the special case of intermixed fixed and
    #    variable size fields
    if not self.is_switch and 'serialize' == context:
        for p in param_fields:
            if not p.type.fixed_size():
                add_param(params, (p.d_field_const_type, '*', p.d_field_name))

    return (param_fields, wire_fields, params)
# get_serialize_params()

def _d_serialize_delper_insert_padding(context, code_lines, space, postpone):
    code_lines.append('%s    /* insert padding */' % space)
    code_lines.append('%s    xcb_pad = -xcb_block_len & (xcb_align_to - 1);' % space)
#    code_lines.append('%s    printf("automatically inserting padding: %%%%d\\n", xcb_pad);' % space)
    code_lines.append('%s    xcb_buffer_len += xcb_block_len + xcb_pad;' % space)

    if not postpone:
        code_lines.append('%s    if (0 != xcb_pad) {' % space)

        if 'serialize' == context:
            code_lines.append('%s        xcb_parts[xcb_parts_idx].iov_base = xcb_pad0;' % space)
            code_lines.append('%s        xcb_parts[xcb_parts_idx].iov_len = xcb_pad;' % space)
            code_lines.append('%s        xcb_parts_idx++;' % space)
        elif context in ('unserialize', 'unpack', 'sizeof'):
            code_lines.append('%s        xcb_tmp += xcb_pad;' % space)

        code_lines.append('%s        xcb_pad = 0;' % space)
        code_lines.append('%s    }' % space)

    code_lines.append('%s    xcb_block_len = 0;' % space)

    # keep tracking of xcb_parts entries for serialize
    return 1
# _d_serialize_delper_insert_padding()

def _d_serialize_delper_switch(context, self, complex_name,
                               code_lines, temp_vars,
                               space, prefix):
    count = 0
    switch_expr = _d_accessor_get_expr(self.expr, None)

    for b in self.bitcases:
        len_expr = len(b.type.expr)
        for n, expr in enumerate(b.type.expr):
            bitcase_expr = _d_accessor_get_expr(expr, None)
            # only one <enumref> in the <bitcase>
            if len_expr == 1:
                code_lines.append('    if(%s & %s) {' % (switch_expr, bitcase_expr))
            # multiple <enumref> in the <bitcase>
            elif n == 0: # first
                code_lines.append('    if((%s & %s) ||' % (switch_expr, bitcase_expr))
            elif len_expr == (n + 1): # last
                code_lines.append('       (%s & %s)) {' % (switch_expr, bitcase_expr))
            else: # between first and last
                code_lines.append('       (%s & %s) ||' % (switch_expr, bitcase_expr))

        b_prefix = prefix
        if b.type.has_name:
            b_prefix = prefix + [(b.d_field_name, '.', b.type)]

        count += _d_serialize_delper_fields(context, b.type,
                                            code_lines, temp_vars,
                                            "%s    " % space,
                                            b_prefix,
                                            is_bitcase = True)
        code_lines.append('    }')

#    if 'serialize' == context:
#        count += _d_serialize_delper_insert_padding(context, code_lines, space, False)
#    elif context in ('unserialize', 'unpack', 'sizeof'):
#        # padding
#        code_lines.append('%s    xcb_pad = -xcb_block_len & 3;' % space)
#        code_lines.append('%s    xcb_buffer_len += xcb_block_len + xcb_pad;' % space)

    return count
# _d_serialize_delper_switch

def _d_serialize_delper_switch_field(context, self, field, d_switch_variable, prefix):
    """
    handle switch by calling _serialize() or _unpack(), depending on context
    """
    # switch is handled by this function as a special case
    param_fields, wire_fields, params = get_serialize_params(context, self)
    field_mapping = _d_delper_field_mapping(self, prefix)
    prefix_str = _d_delper_absolute_name(prefix)

    # find the parameters that need to be passed to _serialize()/_unpack():
    # all switch expr fields must be given as parameters
    args = get_expr_fields(field.type)
    # length fields for variable size types in switch, normally only some of need
    # need to be passed as parameters
    switch_len_fields = resolve_expr_fields(field.type)

    # a switch field at this point _must_ be a bitcase field
    # we require that bitcases are "self-contiguous"
    bitcase_unresolved = resolve_expr_fields(self)
    if len(bitcase_unresolved) != 0:
        raise Exception('unresolved fields within bitcase is not supported at this point')

    # get the C names for the parameters
    d_field_names = ''
    for a in switch_len_fields:
        d_field_names += "%s, " % field_mapping[a.d_field_name][0]
    for a in args:
        d_field_names += "%s, " % field_mapping[a.d_field_name][0]

    # call _serialize()/_unpack() to determine the actual size
    if 'serialize' == context:
        length = "%s(&%s, %s&%s%s)" % (field.type.d_serialize_name, d_switch_variable,
                                       d_field_names, prefix_str, field.d_field_name)
    elif context in ('unserialize', 'unpack'):
        length = "%s(xcb_tmp, %s&%s%s)" % (field.type.d_unpack_name,
                                           d_field_names, prefix_str, field.d_field_name)

    return length
# _d_serialize_delper_switch_field()

def _d_serialize_delper_list_field(context, self, field,
                                   code_lines, temp_vars,
                                   space, prefix):
    """
    helper function to cope with lists of variable length
    """
    expr = field.type.expr
    prefix_str = _d_delper_absolute_name(prefix)
    param_fields, wire_fields, params = get_serialize_params('sizeof', self)
    param_names = [p[2] for p in params]

    expr_fields_names = [f.field_name for f in get_expr_fields(field.type)]
    resolved = list(filter(lambda x: x in param_names, expr_fields_names))
    unresolved = list(filter(lambda x: x not in param_names, expr_fields_names))

    field_mapping = {}
    for r in resolved:
        field_mapping[r] = (r, None)

    if len(unresolved)>0:
        tmp_prefix = prefix
        if len(tmp_prefix)==0:
            raise Exception("found an empty prefix while resolving expr field names for list %s",
                            field.d_field_name)

        field_mapping.update(_d_delper_resolve_field_names(prefix))
        resolved += list(filter(lambda x: x in field_mapping, unresolved))
        unresolved = list(filter(lambda x: x not in field_mapping, unresolved))
        if len(unresolved)>0:
            raise Exception('could not resolve the length fields required for list %s' % field.d_field_name)

    list_length = _d_accessor_get_expr(expr, field_mapping)

    # default: list with fixed size elements
    length = '%s * sizeof(%s)' % (list_length, field.type.member.d_wiretype)

    # list with variable-sized elements
    if not field.type.member.fixed_size():
        length = ''
        if context in ('unserialize', 'sizeof', 'unpack'):
            int_i = '    uint i;'
            xcb_tmp_len = '    uint xcb_tmp_len;'
            if int_i not in temp_vars:
                temp_vars.append(int_i)
            if xcb_tmp_len not in temp_vars:
                temp_vars.append(xcb_tmp_len)
            # loop over all list elements and call sizeof repeatedly
            # this should be a bit faster than using the iterators
            code_lines.append("%s    for(i=0; i<%s; i++) {" % (space, list_length))
            code_lines.append("%s        xcb_tmp_len = %s(xcb_tmp);" %
                              (space, field.type.d_sizeof_name))
            code_lines.append("%s        xcb_block_len += xcb_tmp_len;" % space)
            code_lines.append("%s        xcb_tmp += xcb_tmp_len;" % space)
            code_lines.append("%s    }" % space)

        elif 'serialize' == context:
            code_lines.append('%s    xcb_parts[xcb_parts_idx].iov_len = 0;' % space)
            code_lines.append('%s    xcb_tmp = (char *) %s%s;' % (space, prefix_str, field.d_field_name))
            code_lines.append('%s    for(i=0; i<%s; i++) { ' % (space, list_length))
            code_lines.append('%s        xcb_block_len = %s(xcb_tmp);' % (space, field.type.d_sizeof_name))
            code_lines.append('%s        xcb_parts[xcb_parts_idx].iov_len += xcb_block_len;' % space)
            code_lines.append('%s    }' % space)
            code_lines.append('%s    xcb_block_len = xcb_parts[xcb_parts_idx].iov_len;' % space)

    return length
# _d_serialize_delper_list_field()

def _d_serialize_delper_fields_fixed_size(context, self, field,
                                          code_lines, temp_vars,
                                          space, prefix):
    # keep the C code a bit more readable by giving the field name
    if not self.is_bitcase:
        code_lines.append('%s    /* %s.%s */' % (space, self.d_type, field.d_field_name))
    else:
        scoped_name = [p[2].d_type if idx==0 else p[0] for idx, p in enumerate(prefix)]
        typename = reduce(lambda x,y: "%s.%s" % (x, y), scoped_name)
        code_lines.append('%s    /* %s.%s */' % (space, typename, field.d_field_name))

    abs_field_name = _d_delper_absolute_name(prefix, field)
    # default for simple cases: call sizeof()
    length = "sizeof(%s)" % field.d_field_type

    if context in ('unserialize', 'unpack', 'sizeof'):
        # default: simple cast
        value = '    %s = *(%s *)xcb_tmp;' % (abs_field_name, field.d_field_type)

        # padding - we could probably just ignore it
        if field.type.is_pad and field.type.nmemb > 1:
            value = ''
            for i in range(field.type.nmemb):
                code_lines.append('%s    %s[%d] = *(%s *)xcb_tmp;' %
                                  (space, abs_field_name, i, field.d_field_type))
            # total padding = sizeof(pad0) * nmemb
            length += " * %d" % field.type.nmemb

        if field.type.is_list:
            # no such case in the protocol, cannot be tested and therefore ignored for now
            raise Exception('list with fixed number of elemens unhandled in _unserialize()')

    elif 'serialize' == context:
        value = '    xcb_parts[xcb_parts_idx].iov_base = (char *) '

        if field.type.is_expr:
            # need to register a temporary variable for the expression in case we know its type
            if field.type.d_type is None:
                raise Exception("type for field '%s' (expression '%s') unkown" %
                                (field.field_name, _d_accessor_get_expr(field.type.expr)))

            temp_vars.append('    %s xcb_expr_%s = %s;' % (field.type.d_type, _dkey(field.field_name),
                                                           _d_accessor_get_expr(field.type.expr, prefix)))
            value += "&xcb_expr_%s;" % _dkey(field.field_name)

        elif field.type.is_pad:
            if field.type.nmemb == 1:
                value += "&xcb_pad;"
            else:
                # we could also set it to 0, see definition of xcb_send_request()
                value = '    xcb_parts[xcb_parts_idx].iov_base = xcb_pad0;'
                length += "*%d" % field.type.nmemb

        else:
            # non-list type with fixed size
            if field.type.nmemb == 1:
                value += "&%s;" % (abs_field_name)

            # list with nmemb (fixed size) elements
            else:
                value += '%s;' % (abs_field_name)
                length = '%d' % field.type.nmemb

    return (value, length)
# _d_serialize_delper_fields_fixed_size()

def _d_serialize_delper_fields_variable_size(context, self, field,
                                             code_lines, temp_vars,
                                             space, prefix):
    prefix_str = _d_delper_absolute_name(prefix)

    if context in ('unserialize', 'unpack', 'sizeof'):
        value = ''
        var_field_name = 'xcb_tmp'

        # special case: intermixed fixed and variable size fields
        if self.d_var_followed_by_fixed_fields and 'unserialize' == context:
            value = '    %s = (%s *)xcb_tmp;' % (field.d_field_name, field.d_field_type)
            temp_vars.append('    %s *%s;' % (field.type.d_type, field.d_field_name))
        # special case: switch
        if 'unpack' == context:
            value = '    %s%s = (%s *)xcb_tmp;' % (prefix_str, field.d_field_name, field.d_field_type)

    elif 'serialize' == context:
        # variable size fields appear as parameters to _serialize() if the
        # 'toplevel' container is not a switch
        prefix_string = prefix_str if prefix[0][2].is_switch else ''
        var_field_name = "%s%s" % (prefix_string, field.d_field_name)
        value = '    xcb_parts[xcb_parts_idx].iov_base = (char *) %s;' % var_field_name

    length = ''

    code_lines.append('%s    /* %s */' % (space, field.d_field_name))

    if field.type.is_list:
        if value != '':
            # in any context, list is already a pointer, so the default assignment is ok
            code_lines.append("%s%s" % (space, value))
            value = ''
        length = _d_serialize_delper_list_field(context, self, field,
                                                code_lines, temp_vars,
                                                space, prefix)

    elif field.type.is_switch:
        value = ''
        if context == 'serialize':
            # the _serialize() function allocates the correct amount memory if given a NULL pointer
            value = '    xcb_parts[xcb_parts_idx].iov_base = (char *)0;'
        length = _d_serialize_delper_switch_field(context, self, field,
                                                  'xcb_parts[xcb_parts_idx].iov_base',
                                                  prefix)

    else:
        # in all remaining special cases - call _sizeof()
        length = "%s(%s)" % (field.type.d_sizeof_name, var_field_name)

    return (value, length)
# _d_serialize_delper_fields_variable_size

def _d_serialize_delper_fields(context, self,
                               code_lines, temp_vars,
                               space, prefix, is_bitcase):
    count = 0
    need_padding = False
    prev_field_was_variable = False

    for field in self.fields:
        if not field.visible:
            if not ((field.wire and not field.auto) or 'unserialize' == context):
                continue

        # switch/bitcase: fixed size fields must be considered explicitly
        if field.type.fixed_size():
            if self.is_bitcase or self.d_var_followed_by_fixed_fields:
                if prev_field_was_variable and need_padding:
                    # insert padding
#                    count += _d_serialize_delper_insert_padding(context, code_lines, space,
#                                                                self.d_var_followed_by_fixed_fields)
                    prev_field_was_variable = False

                # prefix for fixed size fields
                fixed_prefix = prefix

                value, length = _d_serialize_delper_fields_fixed_size(context, self, field,
                                                                      code_lines, temp_vars,
                                                                      space, fixed_prefix)
            else:
                continue

        # fields with variable size
        else:
            if field.type.is_pad:
                # Variable length pad is <pad align= />
                code_lines.append('%s    xcb_align_to = %d;' % (space, field.type.align))
                count += _d_serialize_delper_insert_padding(context, code_lines, space,
                                                        self.d_var_followed_by_fixed_fields)
                continue
            else:
                # switch/bitcase: always calculate padding before and after variable sized fields
                if need_padding or is_bitcase:
                    count += _d_serialize_delper_insert_padding(context, code_lines, space,
                                                            self.d_var_followed_by_fixed_fields)

                value, length = _d_serialize_delper_fields_variable_size(context, self, field,
                                                                         code_lines, temp_vars,
                                                                         space, prefix)
                prev_field_was_variable = True

        # save (un)serialization C code
        if '' != value:
            code_lines.append('%s%s' % (space, value))

        if field.type.fixed_size():
            if is_bitcase or self.d_var_followed_by_fixed_fields:
                # keep track of (un)serialized object's size
                code_lines.append('%s    xcb_block_len += %s;' % (space, length))
                if context in ('unserialize', 'unpack', 'sizeof'):
                    code_lines.append('%s    xcb_tmp += %s;' % (space, length))
        else:
            # variable size objects or bitcase:
            #   value & length might have been inserted earlier for special cases
            if '' != length:
                # special case: intermixed fixed and variable size fields
                if (not field.type.fixed_size() and
                    self.d_var_followed_by_fixed_fields and 'unserialize' == context):
                    temp_vars.append('    int %s_len;' % field.d_field_name)
                    code_lines.append('%s    %s_len = %s;' % (space, field.d_field_name, length))
                    code_lines.append('%s    xcb_block_len += %s_len;' % (space, field.d_field_name))
                    code_lines.append('%s    xcb_tmp += %s_len;' % (space, field.d_field_name))
                else:
                    code_lines.append('%s    xcb_block_len += %s;' % (space, length))
                    # increase pointer into the byte stream accordingly
                    if context in ('unserialize', 'sizeof', 'unpack'):
                        code_lines.append('%s    xcb_tmp += xcb_block_len;' % space)

        if 'serialize' == context:
            if '' != length:
                code_lines.append('%s    xcb_parts[xcb_parts_idx].iov_len = %s;' % (space, length))
            code_lines.append('%s    xcb_parts_idx++;' % space)
            count += 1

        code_lines.append('%s    xcb_align_to = ALIGNOF(%s);' % (space, 'char' if field.d_field_type == 'void' else field.d_field_type))

        need_padding = True
        if self.d_var_followed_by_fixed_fields:
            need_padding = False

    return count
# _d_serialize_delper_fields()

def _d_serialize_delper(context, complex_type,
                        code_lines, temp_vars,
                        space='', prefix=[]):
    # count tracks the number of fields to serialize
    count = 0

    if hasattr(complex_type, 'type'):
        self = complex_type.type
        complex_name = complex_type.name
    else:
        self = complex_type
        if self.d_var_followed_by_fixed_fields and 'unserialize' == context:
            complex_name = 'xcb_out'
        else:
            complex_name = '_aux'

    # special case: switch is serialized by evaluating each bitcase separately
    if self.is_switch:
        count += _d_serialize_delper_switch(context, self, complex_name,
                                            code_lines, temp_vars,
                                            space, prefix)

    # all other data types can be evaluated one field a time
    else:
        # unserialize & fixed size fields: simply cast the buffer to the respective xcb_out type
        if context in ('unserialize', 'unpack', 'sizeof') and not self.d_var_followed_by_fixed_fields:
            code_lines.append('%s    xcb_block_len += sizeof(%s);' % (space, self.d_type))
            code_lines.append('%s    xcb_tmp += xcb_block_len;' % space)
            code_lines.append('%s    xcb_buffer_len += xcb_block_len;' % space)
            code_lines.append('%s    xcb_block_len = 0;' % space)

        count += _d_serialize_delper_fields(context, self,
                                            code_lines, temp_vars,
                                            space, prefix, False)
    # "final padding"
    count += _d_serialize_delper_insert_padding(context, code_lines, space, False)

    return count
# _d_serialize_delper()

def _d_serialize(context, self):
    """
    depending on the context variable, generate _serialize(), _unserialize(), _unpack(), or _sizeof()
    for the ComplexType variable self
    """
    _d_setlevel(1)

    _d('')
    # _serialize() returns the buffer size
    _d('int')

    if self.is_switch and 'unserialize' == context:
        context = 'unpack'

    cases = { 'serialize'   : self.d_serialize_name,
              'unserialize' : self.d_unserialize_name,
              'unpack'      : self.d_unpack_name,
              'sizeof'      : self.d_sizeof_name }
    fund_name = cases[context]

    param_fields, wire_fields, params = get_serialize_params(context, self)
    variable_size_fields = 0
    # maximum space required for type definition of function arguments
    maxtypelen = 0

    # determine N(variable_fields)
    for field in param_fields:
        # if self.is_switch, treat all fields as if they are variable sized
        if not field.type.fixed_size() or self.is_switch:
            variable_size_fields += 1
    # determine maxtypelen
    for p in params:
        maxtypelen = max(maxtypelen, len(p[0]) + len(p[1]))

    # write to .c/.h
    indent = ' '*(len(fund_name)+2)
    param_str = []
    for p in params:
        typespec, pointerspec, field_name = p
        spacing = ' '*(maxtypelen-len(typespec)-len(pointerspec))
        param_str.append("%s%s%s  %s%s  /**< */" % (indent, typespec, spacing, pointerspec, field_name))
    # insert function name
    param_str[0] = "%s (%s" % (fund_name, param_str[0].strip())
    param_str = list(map(lambda x: "%s," % x, param_str))
    for s in param_str[:-1]:
        _d(s)
    _d("%s);" % param_str[-1].rstrip(','))

    code_lines = []
    temp_vars = []
    prefix = []

    if 'serialize' == context:
        prefix = [('_aux', '->', self)]
        aux_ptr = 'xcb_out'

    elif context in ('unserialize', 'unpack'):
        if not self.is_switch:
            if not self.d_var_followed_by_fixed_fields:
                prefix = [('_aux', '->', self)]
            else:
                prefix = [('xcb_out', '.', self)]
        else:
            aux_var = '_aux' # default for unpack: single pointer
            # note: unserialize not generated for switch
            if 'unserialize' == context:
                aux_var = '(*_aux)' # unserialize: double pointer (!)
            prefix = [(aux_var, '->', self)]
        aux_ptr = '*_aux'

    elif 'sizeof' == context:
        param_names = [p[2] for p in params]
        if self.is_switch:
            # switch: call _unpack()
            return
        elif self.d_var_followed_by_fixed_fields:
            # special case: call _unserialize()
            return
        else:
            prefix = [('_aux', '->', self)]

    count = _d_serialize_delper(context, self, code_lines, temp_vars, prefix=prefix)
    # update variable size fields (only important for context=='serialize'
    variable_size_fields = count
    if 'serialize' == context:
        temp_vars.append('    uint xcb_pad = 0;')
        temp_vars.append('    char[3] xcb_pad0 = [0, 0, 0];')
        temp_vars.append('    iovec[%d] xcb_parts;' % count)
        temp_vars.append('    uint xcb_parts_idx = 0;')
        temp_vars.append('    uint xcb_block_len = 0;')
        temp_vars.append('    uint i;')
        temp_vars.append('    char *xcb_tmp;')
# _d_serialize()

def _d_iterator_get_end(field, accum):
    '''
    Figures out what C code is needed to find the end of a variable-length structure field.
    For nested structures, recurses into its last variable-sized field.
    For lists, calls the end function
    '''
    if field.type.is_container:
        accum = field.d_accessor_name + '(' + accum + ')'
        return _d_iterator_get_end(field.type.last_varsized_field, accum)
    if field.type.is_list:
        # XXX we can always use the first way
        if field.type.member.is_simple:
            return field.d_end_name + '(' + accum + ')'
        else:
            return field.type.member.d_end_name + '(' + field.d_iterator_name + '(' + accum + '))'

def _d_iterator(self, name):
    '''
    Declares the iterator structure and next/end functions for a given type.
    '''
    _d_setlevel(0)
    _d('')
    _d('/**')
    _d(' * @brief %s', self.d_iterator_type)
    _d(' **/')
    _d('struct %s {', self.d_iterator_type)
    _d('    %s *data; /**<  */', self.d_type)
    _d('    int%s rem; /**<  */', ' ' * (len(self.d_type) - 2))
    _d('    int%s index; /**<  */', ' ' * (len(self.d_type) - 2))
    _d('}')

    _d_setlevel(1)
    _d('')
    _d('/**')
    _d(' * Get the next element of the iterator')
    _d(' * @param i Pointer to a %s', self.d_iterator_type)
    _d(' *')
    _d(' * Get the next element in the iterator. The member rem is')
    _d(' * decreased by one. The member data points to the next')
    _d(' * element. The member index is increased by sizeof(%s)', self.d_type)
    _d(' */')
    _d('void %s (%s *i  /**< */);', self.d_next_name, self.d_iterator_type)

    _d('')
    _d('/**')
    _d(' * Return the iterator pointing to the last element')
    _d(' * @param i An %s', self.d_iterator_type)
    _d(' * @return  The iterator pointing to the last element')
    _d(' *')
    _d(' * Set the current element in the iterator to the last element.')
    _d(' * The member rem is set to 0. The member data points to the')
    _d(' * last element.')
    _d(' */')
    _d('xcb_generic_iterator_t %s (%s i  /**< */);', self.d_end_name, self.d_iterator_type)

def _d_accessor_get_length(expr, field_mapping=None):
    '''
    Figures out what C code is needed to get a length field.
    The field_mapping parameter can be used to change the absolute name of a length field.
    For fields that follow a variable-length field, use the accessor.
    Otherwise, just reference the structure field directly.
    '''

    lenfield_name = expr.lenfield_name
    if lenfield_name is not None:
        if field_mapping is not None:
            lenfield_name = field_mapping[lenfield_name][0]

    if expr.lenfield is not None and expr.lenfield.prev_varsized_field is not None:
        # special case: variable and fixed size fields are intermixed
        # if the lenfield is among the fixed size fields, there is no need
        # to call a special accessor function like <expr.lenfield.d_accessor_name + '(' + prefix + ')'>
        return field_mapping(expr.lenfield_name)
    elif expr.lenfield_name is not None:
        return lenfield_name
    else:
        return str(expr.nmemb)

def _d_accessor_get_expr(expr, field_mapping):
    '''
    Figures out what C code is needed to get the length of a list field.
    The field_mapping parameter can be used to change the absolute name of a length field.
    Recurses for math operations.
    Returns bitcount for value-mask fields.
    Otherwise, uses the value of the length field.
    '''
    lenexp = _d_accessor_get_length(expr, field_mapping)

    if expr.op == '~':
        return '(' + '~' + _d_accessor_get_expr(expr.rhs, field_mapping) + ')'
    elif expr.op == 'popcount':
        return 'xcb_popcount(' + _d_accessor_get_expr(expr.rhs, field_mapping) + ')'
    elif expr.op == 'enumref':
        enum_name = expr.lenfield_type.name
        constant_name = expr.lenfield_name
        d_name = _n(enum_name + (constant_name,)).upper()
        return d_name
    elif expr.op == 'sumof':
        # locate the referenced list object
        list_obj = expr.lenfield_type
        field = None
        for f in expr.lenfield_parent.fields:
            if f.field_name == expr.lenfield_name:
                field = f
                break

        if field is None:
            raise Exception("list field '%s' referenced by sumof not found" % expr.lenfield_name)
        list_name = field_mapping[field.d_field_name][0]
        d_length_func = "%s(%s)" % (field.d_length_name, list_name)
        # note: xcb_sumof() has only been defined for integers
        d_length_func = _d_accessor_get_expr(field.type.expr, field_mapping)
        return 'xcb_sumof(%s, %s)' % (list_name, d_length_func)
    elif expr.op != None:
        return ('(' + _d_accessor_get_expr(expr.lhs, field_mapping) +
                ' ' + expr.op + ' ' +
                _d_accessor_get_expr(expr.rhs, field_mapping) + ')')
    elif expr.bitfield:
        return 'xcb_popcount(' + lenexp + ')'
    else:
        return lenexp

def type_pad_type(type):
    if type == 'void':
        return 'char'
    return type

def _d_accessors_field(self, field):
    '''
    Declares the accessor functions for a non-list field that follows a variable-length field.
    '''
    d_type = self.d_type

    # special case: switch
    switch_obj = self if self.is_switch else None
    if self.is_bitcase:
        switch_obj = self.parents[-1]
    if switch_obj is not None:
        d_type = switch_obj.d_type

    if field.type.is_simple:
        _d('')
        _d('%s %s (const %s *R  /**< */);', field.d_field_type, field.d_accessor_name, d_type)
    else:
        _d('')
        if field.type.is_switch and switch_obj is None:
            return_type = 'void *'
        else:
            return_type = '%s *' % field.d_field_type

        _d('%s %s (const %s *R  /**< */);', return_type, field.d_accessor_name, d_type)


def _d_accessors_list(self, field):
    '''
    Declares the accessor functions for a list field.
    Declares a direct-accessor function only if the list members are fixed size.
    Declares length and get-iterator functions always.
    '''

    def get_align_pad(field):
            prev = field.prev_varsized_field
            prev_prev = field.prev_varsized_field.prev_varsized_field

            if (prev.type.is_pad and prev.type.align > 0 and prev_prev is not None):
                return (prev_prev, '((-prev.index) & (%d - 1))' % prev.type.align)
            else:
                return (prev, None)


    list = field.type
    d_type = self.d_type

    # special case: switch
    # in case of switch, 2 params have to be supplied to certain accessor functions:
    #   1. the anchestor object (request or reply)
    #   2. the (anchestor) switch object
    # the reason is that switch is either a child of a request/reply or nested in another switch,
    # so whenever we need to access a length field, we might need to refer to some anchestor type
    switch_obj = self if self.is_switch else None
    if self.is_bitcase:
        switch_obj = self.parents[-1]
    if switch_obj is not None:
        d_type = switch_obj.d_type

    params = []
    fields = {}
    parents = self.parents if hasattr(self, 'parents') else [self]
    # 'R': parents[0] is always the 'toplevel' container type
    params.append(('const %s *R' % parents[0].d_type, parents[0]))
    fields.update(_d_delper_field_mapping(parents[0], [('R', '->', parents[0])], flat=True))
    # auxiliary object for 'R' parameters
    R_obj = parents[0]

    if switch_obj is not None:
        # now look where the fields are defined that are needed to evaluate
        # the switch expr, and store the parent objects in accessor_params and
        # the fields in switch_fields

        # 'S': name for the 'toplevel' switch
        toplevel_switch = parents[1]
        params.append(('const %s *S' % toplevel_switch.d_type, toplevel_switch))
        fields.update(_d_delper_field_mapping(toplevel_switch, [('S', '->', toplevel_switch)], flat=True))

        # initialize prefix for everything "below" S
        prefix_str = '/* %s */ S' % toplevel_switch.name[-1]
        prefix = [(prefix_str, '->', toplevel_switch)]

        # look for fields in the remaining containers
        for p in parents[2:] + [self]:
            # the separator between parent and child is always '.' here,
            # because of nested switch statements
            if not p.is_bitcase or (p.is_bitcase and p.has_name):
                prefix.append((p.name[-1], '.', p))
            fields.update(_d_delper_field_mapping(p, prefix, flat=True))

        # auxiliary object for 'S' parameter
        S_obj = parents[1]

    _d_setlevel(1)
    if list.member.fixed_size():
        idx = 1 if switch_obj is not None else 0
        _d('')

        _d('%s * %s (%s  /**< */);', field.d_field_type, field.d_accessor_name, params[idx][0])
    _d('')
    if switch_obj is not None:
        _d('int %s (const %s *R  /**< */,', field.d_length_name, R_obj.d_type)
        spacing = ' '*(len(field.d_length_name)+2)
        _d('%sconst %s *S /**< */);', spacing, S_obj.d_type)
        length = _d_accessor_get_expr(field.type.expr, fields)
    else:
        _d('int %s (const %s *R  /**< */);', field.d_length_name, d_type)
        length = _d_accessor_get_expr(field.type.expr, fields)

    if field.type.member.is_simple:
        _d('')
        if switch_obj is not None:
            _d('xcb_generic_iterator_t %s (const %s *R  /**< */,', field.d_end_name, R_obj.d_type)
            spacing = ' '*(len(field.d_end_name)+2)
            _d('%sconst %s *S /**< */);', spacing, S_obj.d_type)
        else:
            _d('xcb_generic_iterator_t %s (const %s *R  /**< */);', field.d_end_name, d_type)

        param = 'R' if switch_obj is None else 'S'
    else:
        _d('')
        if switch_obj is not None:
            _d('%s %s (const %s *R  /**< */,', field.d_iterator_type, field.d_iterator_name, R_obj.d_type)
            spacing = ' '*(len(field.d_iterator_name)+2)
            _d('%sconst %s *S /**< */);', spacing, S_obj.d_type)
        else:
            _d('%s %s (const %s *R  /**< */);', field.d_iterator_type, field.d_iterator_name, d_type)

        if switch_obj is None and field.prev_varsized_field is not None:
            (prev_varsized_field, align_pad) = get_align_pad(field)

            if align_pad is None:
                align_pad = ('XCB_TYPE_PAD(%s, prev.index)' %
                    type_pad_type(field.d_field_type))


def _d_accessors(self, name, base):
    '''
    Declares the accessor functions for the fields of a structure.
    '''
    # no accessors for switch itself -
    # switch always needs to be unpacked explicitly
#    if self.is_switch:
#        pass
#    else:
    if True:
        for field in self.fields:
            if not field.type.is_pad:
                if field.type.is_list and not field.type.fixed_size():
                    _d_accessors_list(self, field)
                elif field.prev_varsized_field is not None or not field.type.fixed_size():
                    _d_accessors_field(self, field)

def d_simple(self, name):
    '''
    Exported function that handles cardinal type declarations.
    These are types which are typedef'd to one of the CARDx's, char, float, etc.
    '''
    _d_type_setup(self, name, ())

    if (self.name != name):
        # Typedef
        _d_setlevel(0)
        my_name = _t(name)
        _d('')
        _d('alias %s = %s;', my_name, _t(self.name))

        # Iterator
        _d_iterator(self, name)

def _d_complex(self, force_packed = False):
    '''
    Helper function for handling all structure types.
    Called for all structs, requests, replies, events, errors.
    '''
    _d_setlevel(0)
    _d('')
    _d('/**')
    _d(' * @brief %s', self.d_type)
    _d(' **/')
    _d('%s %s {', self.d_container, self.d_type)
    if force_packed:
        _d('align(1):')

    struct_fields = []
    maxtypelen = 0

    varfield = None
    for field in self.fields:
        if not field.type.fixed_size() and not self.is_switch and not self.is_union:
            varfield = field.d_field_name
            continue
        if field.wire:
            struct_fields.append(field)

    for field in struct_fields:
        length = len(field.d_field_type)
        # account for '*' pointer_spec
        if not field.type.fixed_size() and not self.is_union:
            length += 1
        maxtypelen = max(maxtypelen, length)

    def _d_complex_field(self, field, space=''):
        if (field.type.fixed_size() or self.is_union or
            # in case of switch with switch children, don't make the field a pointer
            # necessary for unserialize to work
            (self.is_switch and field.type.is_switch)):
            spacing = ' ' * (maxtypelen - len(field.d_field_type))
            _d('%s    %s%s%s %s; /**<  */', space, field.d_field_type, field.d_subscript, spacing, field.d_field_name)
        else:
            spacing = ' ' * (maxtypelen - (len(field.d_field_type) + 1))
            _d('%s    %s%s%s *%s; /**<  */', space, field.d_field_type, field.d_subscript, spacing, field.d_field_name)

    if not self.is_switch:
        for field in struct_fields:
            _d_complex_field(self, field)
    else:
        for b in self.bitcases:
            space = ''
            if b.type.has_name:
                _d('    struct _%s {', b.d_field_name)
                space = '    '
            for field in b.type.fields:
                _d_complex_field(self, field, space)
            if b.type.has_name:
                _d('    }')
                _d('    _%s %s;', b.d_field_name, b.d_field_name)

    _d('}')

def d_struct(self, name):
    '''
    Exported function that handles structure declarations.
    '''
    _d_type_setup(self, name, ())
    _d_complex(self)
    _d_accessors(self, name, name)
    _d_iterator(self, name)

def d_union(self, name):
    '''
    Exported function that handles union declarations.
    '''
    _d_type_setup(self, name, ())
    _d_complex(self)
    _d_iterator(self, name)

def _d_request_delper(self, name, cookie_type, void, regular, aux=False, reply_fds=False):
    '''
    Declares a request function.
    '''

    # Four stunningly confusing possibilities here:
    #
    #   Void            Non-void
    # ------------------------------
    # "req"            "req"
    # 0 flag           CHECKED flag   Normal Mode
    # void_cookie      req_cookie
    # ------------------------------
    # "req_checked"    "req_unchecked"
    # CHECKED flag     0 flag         Abnormal Mode
    # void_cookie      req_cookie
    # ------------------------------


    # Whether we are _checked or _unchecked
    checked = void and not regular
    unchecked = not void and not regular

    # What kind of cookie we return
    fund_cookie = 'xcb_void_cookie_t' if void else self.d_cookie_type

    # What flag is passed to xcb_request
    fund_flags = '0' if (void and regular) or (not void and not regular) else 'XCB_REQUEST_CHECKED'

    if reply_fds:
        if fund_flags == '0':
            fund_flags = 'XCB_REQUEST_REPLY_FDS'
        else:
            fund_flags = fund_flags + '|XCB_REQUEST_REPLY_FDS'

    # Global extension id variable or NULL for xproto
    fund_ext_global = '&' + _ns.d_ext_global_name if _ns.is_ext else '0'

    # What our function name is
    fund_name = self.d_request_name if not aux else self.d_aux_name
    if checked:
        fund_name = self.d_checked_name if not aux else self.d_aux_checked_name
    if unchecked:
        fund_name = self.d_unchecked_name if not aux else self.d_aux_unchecked_name

    param_fields = []
    wire_fields = []
    maxtypelen = len('xcb_connection_t')
    serial_fields = []
    # special case: list with variable size elements
    list_with_var_size_elems = False

    for field in self.fields:
        if field.visible:
            # The field should appear as a call parameter
            param_fields.append(field)
        if field.wire and not field.auto:
            # We need to set the field up in the structure
            wire_fields.append(field)
        if field.type.d_need_serialize or field.type.d_need_sizeof:
            serial_fields.append(field)

    for field in param_fields:
        d_field_const_type = field.d_field_const_type
        if field.type.d_need_serialize and not aux:
            d_field_const_type = "const void"
        if len(d_field_const_type) > maxtypelen:
            maxtypelen = len(d_field_const_type)
        if field.type.is_list and not field.type.member.fixed_size():
            list_with_var_size_elems = True

    _d_setlevel(1)
    _d('')
    _d('/**')
    if hasattr(self, "doc") and self.doc:
        if self.doc.brief:
            _d(' * @brief ' + self.doc.brief)
        else:
            _d(' * No brief doc yet')

    _d(' *')
    _d(' * @param c The connection')
    param_names = [f.d_field_name for f in param_fields]
    if hasattr(self, "doc") and self.doc:
        for field in param_fields:
            # XXX: hard-coded until we fix xproto.xml
            base_fund_name = self.d_request_name if not aux else self.d_aux_name
            if base_fund_name == 'xcb_change_gc' and field.d_field_name == 'value_mask':
                field.enum = 'GC'
            elif base_fund_name == 'xcb_change_window_attributes' and field.d_field_name == 'value_mask':
                field.enum = 'CW'
            elif base_fund_name == 'xcb_create_window' and field.d_field_name == 'value_mask':
                field.enum = 'CW'
            if field.enum:
                # XXX: why the 'xcb' prefix?
                key = ('xcb', field.enum)

                tname = _t(key)
                if namecount[tname] > 1:
                    tname = _t(key + ('enum',))
                _d(' * @param %s A bitmask of #%s values.' % (field.d_field_name, tname))

            if self.doc and field.field_name in self.doc.fields:
                desc = self.doc.fields[field.field_name]
                for name in param_names:
                    desc = desc.replace('`%s`' % name, '\\a %s' % (name))
                desc = desc.split("\n")
                desc = [line if line != '' else '\\n' for line in desc]
                _d(' * @param %s %s' % (field.d_field_name, "\n * ".join(desc)))
            # If there is no documentation yet, we simply don't generate an
            # @param tag. Doxygen will then warn about missing documentation.

    _d(' * @return A cookie')
    _d(' *')

    if hasattr(self, "doc") and self.doc:
        if self.doc.description:
            desc = self.doc.description
            for name in param_names:
                desc = desc.replace('`%s`' % name, '\\a %s' % (name))
            desc = desc.split("\n")
            _d(' * ' + "\n * ".join(desc))
        else:
            _d(' * No description yet')
    else:
        _d(' * Delivers a request to the X server.')
    _d(' *')
    if checked:
        _d(' * This form can be used only if the request will not cause')
        _d(' * a reply to be generated. Any returned error will be')
        _d(' * saved for handling by xcb_request_check().')
    if unchecked:
        _d(' * This form can be used only if the request will cause')
        _d(' * a reply to be generated. Any returned error will be')
        _d(' * placed in the event queue.')
    _d(' */')

    spacing = ' ' * (maxtypelen - len('xcb_connection_t'))
    comma = ',' if len(param_fields) else ');'
    _d('%s %s (xcb_connection_t%s *c  /**< */%s', cookie_type, fund_name, spacing, comma)
    comma = ',' if len(param_fields) else ')'

    fund_spacing = ' ' * (len(fund_name) + 2)
    count = len(param_fields)
    for field in param_fields:
        count = count - 1
        d_field_const_type = field.d_field_const_type
        d_pointer = field.d_pointer
        if field.type.d_need_serialize and not aux:
            d_field_const_type = "const void"
            d_pointer = '*'
        spacing = ' ' * (maxtypelen - len(d_field_const_type))
        comma = ',' if count else ');'
        _d('%s%s%s %s%s  /**< */%s', fund_spacing, d_field_const_type,
           spacing, d_pointer, field.d_field_name, comma)
        comma = ',' if count else ')'

    count = 2
    if not self.d_var_followed_by_fixed_fields:
        for field in param_fields:
            if not field.type.fixed_size():
                count = count + 2
                if field.type.d_need_serialize:
                    # _serialize() keeps track of padding automatically
                    count -= 1
    dimension = count + 2

    def get_serialize_args(type_obj, d_field_name, aux_var, context='serialize'):
        serialize_args = get_serialize_params(context, type_obj,
                                              d_field_name,
                                              aux_var)[2]
        return reduce(lambda x,y: "%s, %s" % (x,y), [a[2] for a in serialize_args])

    # calls in order to free dyn. all. memory
    free_calls = []

    if not self.d_var_followed_by_fixed_fields:

        count = 4

        for field in param_fields:
            if not field.type.fixed_size():
                # default: simple cast to char *
                if not field.type.d_need_serialize and not field.type.d_need_sizeof:
                    if not field.type.is_list:
                        # not supposed to happen
                        raise Exception("unhandled variable size field %s" % field.d_field_name)
                else:
                    idx = serial_fields.index(field)
                    aux_var = '&xcb_aux%d' % idx
                    context = 'serialize' if aux else 'sizeof'
                    if aux:
                        serialize_args = get_serialize_args(field.type, aux_var, field.d_field_name, context)
                        free_calls.append('    free(xcb_aux%d);' % idx)
                    else:
                        serialize_args = get_serialize_args(field.type, field.d_field_name, aux_var, context)
                        fund_name = field.type.d_sizeof_name

                count += 1
                if not (field.type.d_need_serialize or field.type.d_need_sizeof):
                    # the _serialize() function keeps track of padding automatically
                    count += 1

    # elif self.d_var_followed_by_fixed_fields:
    else:
        # request header: opcodes + length
        count += 1
        # call _serialize()
        buffer_var = '&xcb_aux'
        serialize_args = get_serialize_args(self, buffer_var, '&xcb_out', 'serialize')
        free_calls.append('    free(xcb_aux);')
        # no padding necessary - _serialize() keeps track of padding automatically

def _d_reply(self, name):
    '''
    Declares the function that returns the reply structure.
    '''
    spacing1 = ' ' * (len(self.d_cookie_type) - len('xcb_connection_t'))
    spacing2 = ' ' * (len(self.d_cookie_type) - len('xcb_generic_error_t'))
    spacing3 = ' ' * (len(self.d_reply_name) + 2)

    # check if _unserialize() has to be called for any field
    def look_for_special_cases(complex_obj):
        unserialize_fields = []
        # no unserialize call in case of switch
        if not complex_obj.is_switch:
            for field in complex_obj.fields:
                # three cases: 1. field with special case
                #              2. container that contains special case field
                #              3. list with special case elements
                if field.type.d_var_followed_by_fixed_fields:
                    unserialize_fields.append(field)
                elif field.type.is_container:
                    unserialize_fields += look_for_special_cases(field.type)
                elif field.type.is_list:
                    if field.type.member.d_var_followed_by_fixed_fields:
                        unserialize_fields.append(field)
                    if field.type.member.is_container:
                        unserialize_fields += look_for_special_cases(field.type.member)
        return unserialize_fields

    unserialize_fields = look_for_special_cases(self.reply)

    _d('')
    _d('/**')
    _d(' * Return the reply')
    _d(' * @param c      The connection')
    _d(' * @param cookie The cookie')
    _d(' * @param e      The xcb_generic_error_t supplied')
    _d(' *')
    _d(' * Returns the reply of the request asked by')
    _d(' *')
    _d(' * The parameter @p e supplied to this function must be NULL if')
    _d(' * %s(). is used.', self.d_unchecked_name)
    _d(' * Otherwise, it stores the error if any.')
    _d(' *')
    _d(' * The returned value must be freed by the caller using free().')
    _d(' */')
    _d('%s * %s (xcb_connection_t%s  *c  /**< */,', self.d_reply_type, self.d_reply_name, spacing1)
    _d('%s%s   cookie  /**< */,', spacing3, self.d_cookie_type)
    _d('%sxcb_generic_error_t%s **e  /**< */);', spacing3, spacing2)

    if len(unserialize_fields)>0:
        # certain variable size fields need to be unserialized explicitly
        for field in unserialize_fields:
            if not field.type.is_list:
                raise Exception('not implemented: call _unserialize() in reply for non-list type %s', field.d_field_type)

def _d_reply_das_fds(self):
    for field in self.fields:
        if field.isfd:
            return True
    return False

def _d_reply_fds(self, name):
    '''
    Declares the function that returns fds related to the reply.
    '''
    spacing1 = ' ' * (len(self.d_reply_type) - len('xcb_connection_t'))
    spacing3 = ' ' * (len(self.d_reply_fds_name) + 2)
    _d('')
    _d('/**')
    _d(' * Return the reply fds')
    _d(' * @param c      The connection')
    _d(' * @param reply  The reply')
    _d(' *')
    _d(' * Returns the array of reply fds of the request asked by')
    _d(' *')
    _d(' * The returned value must be freed by the caller using free().')
    _d(' */')
    _d('int * %s (xcb_connection_t%s  *c  /**< */,', self.d_reply_fds_name, spacing1)
    _d('%s%s  *reply  /**< */);', spacing3, self.d_reply_type)




def _d_opcode(name, opcode):
    '''
    Declares the opcode define for requests, events, and errors.
    '''
    _d_setlevel(0)
    _d('')
    _d('/** Opcode for %s. */', _n(name))
    _d('enum %s = %s;', _n(name).upper(), opcode)

def _d_cookie(self, name):
    '''
    Declares the cookie type for a non-void request.
    '''
    _d_setlevel(0)
    _d('')
    _d('/**')
    _d(' * @brief %s', self.d_cookie_type)
    _d(' **/')
    _d('struct %s {', self.d_cookie_type)
    _d('    uint sequence; /**<  */')
    _d('}')

def d_request(self, name):
    '''
    Exported function that handles request declarations.
    '''
    _d_type_setup(self, name, ('request',))

    if self.reply:
        # Cookie type declaration
        _d_cookie(self, name)

    # Opcode define
    _d_opcode(name, self.opcode)

    # Request structure declaration
    _d_complex(self)

    if self.reply:
        _d_type_setup(self.reply, name, ('reply',))
        # Reply structure definition
        _d_complex(self.reply)
        # Request prototypes
        has_fds = _d_reply_das_fds(self.reply)
        _d_request_delper(self, name, self.d_cookie_type, False, True, False, has_fds)
        _d_request_delper(self, name, self.d_cookie_type, False, False, False, has_fds)
        if self.d_need_aux:
            _d_request_delper(self, name, self.d_cookie_type, False, True, True, has_fds)
            _d_request_delper(self, name, self.d_cookie_type, False, False, True, has_fds)
        # Reply accessors
        _d_accessors(self.reply, name + ('reply',), name)
        _d_reply(self, name)
        if has_fds:
            _d_reply_fds(self, name)
    else:
        # Request prototypes
        _d_request_delper(self, name, 'xcb_void_cookie_t', True, False)
        _d_request_delper(self, name, 'xcb_void_cookie_t', True, True)
        if self.d_need_aux:
            _d_request_delper(self, name, 'xcb_void_cookie_t', True, False, True)
            _d_request_delper(self, name, 'xcb_void_cookie_t', True, True, True)

    # We generate the manpage afterwards because _d_type_setup has been called.
    # TODO: what about aux helpers?
    cookie_type = self.d_cookie_type if self.reply else 'xcb_void_cookie_t'

def d_event(self, name):
    '''
    Exported function that handles event declarations.
    '''

    # The generic event structure xcb_ge_event_t has the full_sequence field
    # at the 32byte boundary. That's why we've to inject this field into GE
    # events while generating the structure for them. Otherwise we would read
    # garbage (the internal full_sequence) when accessing normal event fields
    # there.
    force_packed = False
    if hasattr(self, 'is_ge_event') and self.is_ge_event and self.name == name:
        event_size = 0
        for field in self.fields:
            if field.type.size != None and field.type.nmemb != None:
                event_size += field.type.size * field.type.nmemb
            if event_size == 32:
                full_sequence = Field(tcard32, tcard32.name, 'full_sequence', False, True, True)
                idx = self.fields.index(field)
                self.fields.insert(idx + 1, full_sequence)

                # If the event contains any 64-bit extended fields, they need
                # to remain aligned on a 64-bit boundary.  Adding full_sequence
                # would normally break that; force the struct to be packed.
                force_packed = any(f.type.size == 8 and f.type.is_simple for f in self.fields[(idx+1):])
                break

    _d_type_setup(self, name, ('event',))

    # Opcode define
    _d_opcode(name, self.opcodes[name])

    if self.name == name:
        # Structure definition
        _d_complex(self, force_packed)
    else:
        # Typedef
        _d('')
        _d('alias %s = %s;', _t(name + ('event',)), _t(self.name + ('event',)))

def d_error(self, name):
    '''
    Exported function that handles error declarations.
    '''
    _d_type_setup(self, name, ('error',))

    # Opcode define
    _d_opcode(name, self.opcodes[name])

    if self.name == name:
        # Structure definition
        _d_complex(self)
    else:
        # Typedef
        _d('')
        _d('alias %s = %s;', _t(name + ('error',)), _t(self.name + ('error',)))


# Main routine starts here

# Must create an "output" dictionary before any xcbgen imports.
output = {'open'    : d_open,
          'close'   : d_close,
          'simple'  : d_simple,
          'enum'    : d_enum,
          'struct'  : d_struct,
          'union'   : d_union,
          'request' : d_request,
          'event'   : d_event,
          'error'   : d_error,
          }

# Boilerplate below this point

def help():
    print('Usage: d_client.py -m module [-p path] file.xml')
    sys.exit(1)

# Check for the argument that specifies path to the xcbgen python package.
try:
    if len(sys.argv) < 2:
        help()

    opts, args = getopt.getopt(sys.argv[1:], 'm:p:')
except getopt.GetoptError as err:
    print(err)
    help()

for (opt, arg) in opts:
    if opt == '-m':
        _dmodule=arg
    if opt == '-p':
        sys.path.insert(1, arg)

# Import the module class
try:
    from xcbgen.state import Module
    from xcbgen.xtypes import *
except ImportError:
    print('''
Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.
''')
    raise

# Parse the xml header
module = Module(args[0], output)

# Build type-registry and resolve type dependencies
module.register()
module.resolve()

# Output the code
module.generate()
