/*
 * This file generated automatically from xfixes.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_XFixes_API XCB XFixes API
 * @brief XFixes XCB Protocol Implementation.
 * @{
 **/

module xcb.xfixes;

import xcb.xcb;
import xcb.xproto;
import xcb.render;
import xcb.shape;

extern (C):

enum int XCB_XFIXES_MAJOR_VERSION = 5;
enum int XCB_XFIXES_MINOR_VERSION = 0;

extern (C) __gshared extern xcb_extension_t xcb_xfixes_id;

/**
 * @brief xcb_xfixes_query_version_cookie_t
 **/
struct xcb_xfixes_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xfixes_query_version. */
enum XCB_XFIXES_QUERY_VERSION = 0;

/**
 * @brief xcb_xfixes_query_version_request_t
 **/
struct xcb_xfixes_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint client_major_version; /**<  */
	uint client_minor_version; /**<  */
}

/**
 * @brief xcb_xfixes_query_version_reply_t
 **/
struct xcb_xfixes_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
	ubyte[16] pad1; /**<  */
}

enum xcb_xfixes_save_set_mode_t {
	XCB_XFIXES_SAVE_SET_MODE_INSERT = 0,
	XCB_XFIXES_SAVE_SET_MODE_DELETE = 1
}

alias XCB_XFIXES_SAVE_SET_MODE_INSERT = xcb_xfixes_save_set_mode_t.XCB_XFIXES_SAVE_SET_MODE_INSERT;
alias XCB_XFIXES_SAVE_SET_MODE_DELETE = xcb_xfixes_save_set_mode_t.XCB_XFIXES_SAVE_SET_MODE_DELETE;

enum xcb_xfixes_save_set_target_t {
	XCB_XFIXES_SAVE_SET_TARGET_NEAREST = 0,
	XCB_XFIXES_SAVE_SET_TARGET_ROOT = 1
}

alias XCB_XFIXES_SAVE_SET_TARGET_NEAREST = xcb_xfixes_save_set_target_t.XCB_XFIXES_SAVE_SET_TARGET_NEAREST;
alias XCB_XFIXES_SAVE_SET_TARGET_ROOT = xcb_xfixes_save_set_target_t.XCB_XFIXES_SAVE_SET_TARGET_ROOT;

enum xcb_xfixes_save_set_mapping_t {
	XCB_XFIXES_SAVE_SET_MAPPING_MAP = 0,
	XCB_XFIXES_SAVE_SET_MAPPING_UNMAP = 1
}

alias XCB_XFIXES_SAVE_SET_MAPPING_MAP = xcb_xfixes_save_set_mapping_t.XCB_XFIXES_SAVE_SET_MAPPING_MAP;
alias XCB_XFIXES_SAVE_SET_MAPPING_UNMAP = xcb_xfixes_save_set_mapping_t.XCB_XFIXES_SAVE_SET_MAPPING_UNMAP;

/** Opcode for xcb_xfixes_change_save_set. */
enum XCB_XFIXES_CHANGE_SAVE_SET = 1;

/**
 * @brief xcb_xfixes_change_save_set_request_t
 **/
struct xcb_xfixes_change_save_set_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte mode; /**<  */
	ubyte target; /**<  */
	ubyte map; /**<  */
	ubyte pad0; /**<  */
	xcb_window_t window; /**<  */
}

enum xcb_xfixes_selection_event_t {
	XCB_XFIXES_SELECTION_EVENT_SET_SELECTION_OWNER = 0,
	XCB_XFIXES_SELECTION_EVENT_SELECTION_WINDOW_DESTROY = 1,
	XCB_XFIXES_SELECTION_EVENT_SELECTION_CLIENT_CLOSE = 2
}

alias XCB_XFIXES_SELECTION_EVENT_SET_SELECTION_OWNER = xcb_xfixes_selection_event_t.XCB_XFIXES_SELECTION_EVENT_SET_SELECTION_OWNER;
alias XCB_XFIXES_SELECTION_EVENT_SELECTION_WINDOW_DESTROY = xcb_xfixes_selection_event_t.XCB_XFIXES_SELECTION_EVENT_SELECTION_WINDOW_DESTROY;
alias XCB_XFIXES_SELECTION_EVENT_SELECTION_CLIENT_CLOSE = xcb_xfixes_selection_event_t.XCB_XFIXES_SELECTION_EVENT_SELECTION_CLIENT_CLOSE;

enum xcb_xfixes_selection_event_mask_t {
	XCB_XFIXES_SELECTION_EVENT_MASK_SET_SELECTION_OWNER = 1,
	XCB_XFIXES_SELECTION_EVENT_MASK_SELECTION_WINDOW_DESTROY = 2,
	XCB_XFIXES_SELECTION_EVENT_MASK_SELECTION_CLIENT_CLOSE = 4
}

alias XCB_XFIXES_SELECTION_EVENT_MASK_SET_SELECTION_OWNER = xcb_xfixes_selection_event_mask_t.XCB_XFIXES_SELECTION_EVENT_MASK_SET_SELECTION_OWNER;
alias XCB_XFIXES_SELECTION_EVENT_MASK_SELECTION_WINDOW_DESTROY = xcb_xfixes_selection_event_mask_t.XCB_XFIXES_SELECTION_EVENT_MASK_SELECTION_WINDOW_DESTROY;
alias XCB_XFIXES_SELECTION_EVENT_MASK_SELECTION_CLIENT_CLOSE = xcb_xfixes_selection_event_mask_t.XCB_XFIXES_SELECTION_EVENT_MASK_SELECTION_CLIENT_CLOSE;

/** Opcode for xcb_xfixes_selection_notify. */
enum XCB_XFIXES_SELECTION_NOTIFY = 0;

/**
 * @brief xcb_xfixes_selection_notify_event_t
 **/
struct xcb_xfixes_selection_notify_event_t {
	ubyte response_type; /**<  */
	ubyte subtype; /**<  */
	ushort sequence; /**<  */
	xcb_window_t window; /**<  */
	xcb_window_t owner; /**<  */
	xcb_atom_t selection; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	xcb_timestamp_t selection_timestamp; /**<  */
	ubyte[8] pad0; /**<  */
}

/** Opcode for xcb_xfixes_select_selection_input. */
enum XCB_XFIXES_SELECT_SELECTION_INPUT = 2;

/**
 * @brief xcb_xfixes_select_selection_input_request_t
 **/
struct xcb_xfixes_select_selection_input_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_atom_t selection; /**<  */
	uint event_mask; /**<  */
}

enum xcb_xfixes_cursor_notify_t {
	XCB_XFIXES_CURSOR_NOTIFY_DISPLAY_CURSOR = 0
}

alias XCB_XFIXES_CURSOR_NOTIFY_DISPLAY_CURSOR = xcb_xfixes_cursor_notify_t.XCB_XFIXES_CURSOR_NOTIFY_DISPLAY_CURSOR;

enum xcb_xfixes_cursor_notify_mask_t {
	XCB_XFIXES_CURSOR_NOTIFY_MASK_DISPLAY_CURSOR = 1
}

alias XCB_XFIXES_CURSOR_NOTIFY_MASK_DISPLAY_CURSOR = xcb_xfixes_cursor_notify_mask_t.XCB_XFIXES_CURSOR_NOTIFY_MASK_DISPLAY_CURSOR;

/** Opcode for xcb_xfixes_cursor_notify. */
enum XCB_XFIXES_CURSOR_NOTIFY = 1;

/**
 * @brief xcb_xfixes_cursor_notify_event_t
 **/
struct xcb_xfixes_cursor_notify_event_t {
	ubyte response_type; /**<  */
	ubyte subtype; /**<  */
	ushort sequence; /**<  */
	xcb_window_t window; /**<  */
	uint cursor_serial; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	xcb_atom_t name; /**<  */
	ubyte[12] pad0; /**<  */
}

/** Opcode for xcb_xfixes_select_cursor_input. */
enum XCB_XFIXES_SELECT_CURSOR_INPUT = 3;

/**
 * @brief xcb_xfixes_select_cursor_input_request_t
 **/
struct xcb_xfixes_select_cursor_input_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	uint event_mask; /**<  */
}

/**
 * @brief xcb_xfixes_get_cursor_image_cookie_t
 **/
struct xcb_xfixes_get_cursor_image_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xfixes_get_cursor_image. */
enum XCB_XFIXES_GET_CURSOR_IMAGE = 4;

/**
 * @brief xcb_xfixes_get_cursor_image_request_t
 **/
struct xcb_xfixes_get_cursor_image_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_xfixes_get_cursor_image_reply_t
 **/
struct xcb_xfixes_get_cursor_image_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort xhot; /**<  */
	ushort yhot; /**<  */
	uint cursor_serial; /**<  */
	ubyte[8] pad1; /**<  */
}

alias xcb_xfixes_region_t = uint;

/**
 * @brief xcb_xfixes_region_iterator_t
 **/
struct xcb_xfixes_region_iterator_t {
	xcb_xfixes_region_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_xfixes_bad_region. */
enum XCB_XFIXES_BAD_REGION = 0;

/**
 * @brief xcb_xfixes_bad_region_error_t
 **/
struct xcb_xfixes_bad_region_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

enum xcb_xfixes_region_enum_t {
	XCB_XFIXES_REGION_NONE = 0
}

alias XCB_XFIXES_REGION_NONE = xcb_xfixes_region_enum_t.XCB_XFIXES_REGION_NONE;

/** Opcode for xcb_xfixes_create_region. */
enum XCB_XFIXES_CREATE_REGION = 5;

/**
 * @brief xcb_xfixes_create_region_request_t
 **/
struct xcb_xfixes_create_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t region; /**<  */
}

/** Opcode for xcb_xfixes_create_region_from_bitmap. */
enum XCB_XFIXES_CREATE_REGION_FROM_BITMAP = 6;

/**
 * @brief xcb_xfixes_create_region_from_bitmap_request_t
 **/
struct xcb_xfixes_create_region_from_bitmap_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t region; /**<  */
	xcb_pixmap_t bitmap; /**<  */
}

/** Opcode for xcb_xfixes_create_region_from_window. */
enum XCB_XFIXES_CREATE_REGION_FROM_WINDOW = 7;

/**
 * @brief xcb_xfixes_create_region_from_window_request_t
 **/
struct xcb_xfixes_create_region_from_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t region; /**<  */
	xcb_window_t window; /**<  */
	xcb_shape_kind_t kind; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_xfixes_create_region_from_gc. */
enum XCB_XFIXES_CREATE_REGION_FROM_GC = 8;

/**
 * @brief xcb_xfixes_create_region_from_gc_request_t
 **/
struct xcb_xfixes_create_region_from_gc_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t region; /**<  */
	xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_xfixes_create_region_from_picture. */
enum XCB_XFIXES_CREATE_REGION_FROM_PICTURE = 9;

/**
 * @brief xcb_xfixes_create_region_from_picture_request_t
 **/
struct xcb_xfixes_create_region_from_picture_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t region; /**<  */
	xcb_render_picture_t picture; /**<  */
}

/** Opcode for xcb_xfixes_destroy_region. */
enum XCB_XFIXES_DESTROY_REGION = 10;

/**
 * @brief xcb_xfixes_destroy_region_request_t
 **/
struct xcb_xfixes_destroy_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t region; /**<  */
}

/** Opcode for xcb_xfixes_set_region. */
enum XCB_XFIXES_SET_REGION = 11;

/**
 * @brief xcb_xfixes_set_region_request_t
 **/
struct xcb_xfixes_set_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t region; /**<  */
}

/** Opcode for xcb_xfixes_copy_region. */
enum XCB_XFIXES_COPY_REGION = 12;

/**
 * @brief xcb_xfixes_copy_region_request_t
 **/
struct xcb_xfixes_copy_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t source; /**<  */
	xcb_xfixes_region_t destination; /**<  */
}

/** Opcode for xcb_xfixes_union_region. */
enum XCB_XFIXES_UNION_REGION = 13;

/**
 * @brief xcb_xfixes_union_region_request_t
 **/
struct xcb_xfixes_union_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t source1; /**<  */
	xcb_xfixes_region_t source2; /**<  */
	xcb_xfixes_region_t destination; /**<  */
}

/** Opcode for xcb_xfixes_intersect_region. */
enum XCB_XFIXES_INTERSECT_REGION = 14;

/**
 * @brief xcb_xfixes_intersect_region_request_t
 **/
struct xcb_xfixes_intersect_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t source1; /**<  */
	xcb_xfixes_region_t source2; /**<  */
	xcb_xfixes_region_t destination; /**<  */
}

/** Opcode for xcb_xfixes_subtract_region. */
enum XCB_XFIXES_SUBTRACT_REGION = 15;

/**
 * @brief xcb_xfixes_subtract_region_request_t
 **/
struct xcb_xfixes_subtract_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t source1; /**<  */
	xcb_xfixes_region_t source2; /**<  */
	xcb_xfixes_region_t destination; /**<  */
}

/** Opcode for xcb_xfixes_invert_region. */
enum XCB_XFIXES_INVERT_REGION = 16;

/**
 * @brief xcb_xfixes_invert_region_request_t
 **/
struct xcb_xfixes_invert_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t source; /**<  */
	xcb_rectangle_t bounds; /**<  */
	xcb_xfixes_region_t destination; /**<  */
}

/** Opcode for xcb_xfixes_translate_region. */
enum XCB_XFIXES_TRANSLATE_REGION = 17;

/**
 * @brief xcb_xfixes_translate_region_request_t
 **/
struct xcb_xfixes_translate_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t region; /**<  */
	short dx; /**<  */
	short dy; /**<  */
}

/** Opcode for xcb_xfixes_region_extents. */
enum XCB_XFIXES_REGION_EXTENTS = 18;

/**
 * @brief xcb_xfixes_region_extents_request_t
 **/
struct xcb_xfixes_region_extents_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t source; /**<  */
	xcb_xfixes_region_t destination; /**<  */
}

/**
 * @brief xcb_xfixes_fetch_region_cookie_t
 **/
struct xcb_xfixes_fetch_region_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xfixes_fetch_region. */
enum XCB_XFIXES_FETCH_REGION = 19;

/**
 * @brief xcb_xfixes_fetch_region_request_t
 **/
struct xcb_xfixes_fetch_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t region; /**<  */
}

/**
 * @brief xcb_xfixes_fetch_region_reply_t
 **/
struct xcb_xfixes_fetch_region_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_rectangle_t extents; /**<  */
	ubyte[16] pad1; /**<  */
}

/** Opcode for xcb_xfixes_set_gc_clip_region. */
enum XCB_XFIXES_SET_GC_CLIP_REGION = 20;

/**
 * @brief xcb_xfixes_set_gc_clip_region_request_t
 **/
struct xcb_xfixes_set_gc_clip_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_gcontext_t gc; /**<  */
	xcb_xfixes_region_t region; /**<  */
	short x_origin; /**<  */
	short y_origin; /**<  */
}

/** Opcode for xcb_xfixes_set_window_shape_region. */
enum XCB_XFIXES_SET_WINDOW_SHAPE_REGION = 21;

/**
 * @brief xcb_xfixes_set_window_shape_region_request_t
 **/
struct xcb_xfixes_set_window_shape_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t dest; /**<  */
	xcb_shape_kind_t dest_kind; /**<  */
	ubyte[3] pad0; /**<  */
	short x_offset; /**<  */
	short y_offset; /**<  */
	xcb_xfixes_region_t region; /**<  */
}

/** Opcode for xcb_xfixes_set_picture_clip_region. */
enum XCB_XFIXES_SET_PICTURE_CLIP_REGION = 22;

/**
 * @brief xcb_xfixes_set_picture_clip_region_request_t
 **/
struct xcb_xfixes_set_picture_clip_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
	xcb_xfixes_region_t region; /**<  */
	short x_origin; /**<  */
	short y_origin; /**<  */
}

/** Opcode for xcb_xfixes_set_cursor_name. */
enum XCB_XFIXES_SET_CURSOR_NAME = 23;

/**
 * @brief xcb_xfixes_set_cursor_name_request_t
 **/
struct xcb_xfixes_set_cursor_name_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_cursor_t cursor; /**<  */
	ushort nbytes; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xfixes_get_cursor_name_cookie_t
 **/
struct xcb_xfixes_get_cursor_name_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xfixes_get_cursor_name. */
enum XCB_XFIXES_GET_CURSOR_NAME = 24;

/**
 * @brief xcb_xfixes_get_cursor_name_request_t
 **/
struct xcb_xfixes_get_cursor_name_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_cursor_t cursor; /**<  */
}

/**
 * @brief xcb_xfixes_get_cursor_name_reply_t
 **/
struct xcb_xfixes_get_cursor_name_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_atom_t atom; /**<  */
	ushort nbytes; /**<  */
	ubyte[18] pad1; /**<  */
}

/**
 * @brief xcb_xfixes_get_cursor_image_and_name_cookie_t
 **/
struct xcb_xfixes_get_cursor_image_and_name_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xfixes_get_cursor_image_and_name. */
enum XCB_XFIXES_GET_CURSOR_IMAGE_AND_NAME = 25;

/**
 * @brief xcb_xfixes_get_cursor_image_and_name_request_t
 **/
struct xcb_xfixes_get_cursor_image_and_name_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_xfixes_get_cursor_image_and_name_reply_t
 **/
struct xcb_xfixes_get_cursor_image_and_name_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort xhot; /**<  */
	ushort yhot; /**<  */
	uint cursor_serial; /**<  */
	xcb_atom_t cursor_atom; /**<  */
	ushort nbytes; /**<  */
	ubyte[2] pad1; /**<  */
}

/** Opcode for xcb_xfixes_change_cursor. */
enum XCB_XFIXES_CHANGE_CURSOR = 26;

/**
 * @brief xcb_xfixes_change_cursor_request_t
 **/
struct xcb_xfixes_change_cursor_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_cursor_t source; /**<  */
	xcb_cursor_t destination; /**<  */
}

/** Opcode for xcb_xfixes_change_cursor_by_name. */
enum XCB_XFIXES_CHANGE_CURSOR_BY_NAME = 27;

/**
 * @brief xcb_xfixes_change_cursor_by_name_request_t
 **/
struct xcb_xfixes_change_cursor_by_name_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_cursor_t src; /**<  */
	ushort nbytes; /**<  */
	ubyte[2] pad0; /**<  */
}

/** Opcode for xcb_xfixes_expand_region. */
enum XCB_XFIXES_EXPAND_REGION = 28;

/**
 * @brief xcb_xfixes_expand_region_request_t
 **/
struct xcb_xfixes_expand_region_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t source; /**<  */
	xcb_xfixes_region_t destination; /**<  */
	ushort left; /**<  */
	ushort right; /**<  */
	ushort top; /**<  */
	ushort bottom; /**<  */
}

/** Opcode for xcb_xfixes_hide_cursor. */
enum XCB_XFIXES_HIDE_CURSOR = 29;

/**
 * @brief xcb_xfixes_hide_cursor_request_t
 **/
struct xcb_xfixes_hide_cursor_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/** Opcode for xcb_xfixes_show_cursor. */
enum XCB_XFIXES_SHOW_CURSOR = 30;

/**
 * @brief xcb_xfixes_show_cursor_request_t
 **/
struct xcb_xfixes_show_cursor_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

alias xcb_xfixes_barrier_t = uint;

/**
 * @brief xcb_xfixes_barrier_iterator_t
 **/
struct xcb_xfixes_barrier_iterator_t {
	xcb_xfixes_barrier_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xfixes_barrier_directions_t {
	XCB_XFIXES_BARRIER_DIRECTIONS_POSITIVE_X = 1,
	XCB_XFIXES_BARRIER_DIRECTIONS_POSITIVE_Y = 2,
	XCB_XFIXES_BARRIER_DIRECTIONS_NEGATIVE_X = 4,
	XCB_XFIXES_BARRIER_DIRECTIONS_NEGATIVE_Y = 8
}

alias XCB_XFIXES_BARRIER_DIRECTIONS_POSITIVE_X = xcb_xfixes_barrier_directions_t.XCB_XFIXES_BARRIER_DIRECTIONS_POSITIVE_X;
alias XCB_XFIXES_BARRIER_DIRECTIONS_POSITIVE_Y = xcb_xfixes_barrier_directions_t.XCB_XFIXES_BARRIER_DIRECTIONS_POSITIVE_Y;
alias XCB_XFIXES_BARRIER_DIRECTIONS_NEGATIVE_X = xcb_xfixes_barrier_directions_t.XCB_XFIXES_BARRIER_DIRECTIONS_NEGATIVE_X;
alias XCB_XFIXES_BARRIER_DIRECTIONS_NEGATIVE_Y = xcb_xfixes_barrier_directions_t.XCB_XFIXES_BARRIER_DIRECTIONS_NEGATIVE_Y;

/** Opcode for xcb_xfixes_create_pointer_barrier. */
enum XCB_XFIXES_CREATE_POINTER_BARRIER = 31;

/**
 * @brief xcb_xfixes_create_pointer_barrier_request_t
 **/
struct xcb_xfixes_create_pointer_barrier_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_barrier_t barrier; /**<  */
	xcb_window_t window; /**<  */
	ushort x1; /**<  */
	ushort y1; /**<  */
	ushort x2; /**<  */
	ushort y2; /**<  */
	uint directions; /**<  */
	ubyte[2] pad0; /**<  */
	ushort num_devices; /**<  */
}

/** Opcode for xcb_xfixes_delete_pointer_barrier. */
enum XCB_XFIXES_DELETE_POINTER_BARRIER = 32;

/**
 * @brief xcb_xfixes_delete_pointer_barrier_request_t
 **/
struct xcb_xfixes_delete_pointer_barrier_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_barrier_t barrier; /**<  */
}

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xfixes_query_version_cookie_t xcb_xfixes_query_version(xcb_connection_t* c /**< */ , uint client_major_version /**< */ ,
	uint client_minor_version /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_xfixes_query_version_cookie_t xcb_xfixes_query_version_unchecked(xcb_connection_t* c /**< */ ,
	uint client_major_version /**< */ , uint client_minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xfixes_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xfixes_query_version_reply_t* xcb_xfixes_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_xfixes_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_change_save_set_checked(xcb_connection_t* c /**< */ , ubyte mode /**< */ , ubyte target /**< */ ,
	ubyte map /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_change_save_set(xcb_connection_t* c /**< */ , ubyte mode /**< */ , ubyte target /**< */ ,
	ubyte map /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_select_selection_input_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_atom_t selection /**< */ , uint event_mask /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_select_selection_input(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_atom_t selection /**< */ , uint event_mask /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_select_cursor_input_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , uint event_mask /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_select_cursor_input(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , uint event_mask /**< */ );

int xcb_xfixes_get_cursor_image_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xfixes_get_cursor_image_cookie_t xcb_xfixes_get_cursor_image(xcb_connection_t* c /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_xfixes_get_cursor_image_cookie_t xcb_xfixes_get_cursor_image_unchecked(xcb_connection_t* c /**< */ );

uint* xcb_xfixes_get_cursor_image_cursor_image(const xcb_xfixes_get_cursor_image_reply_t* R /**< */ );

int xcb_xfixes_get_cursor_image_cursor_image_length(const xcb_xfixes_get_cursor_image_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xfixes_get_cursor_image_cursor_image_end(const xcb_xfixes_get_cursor_image_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xfixes_get_cursor_image_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xfixes_get_cursor_image_reply_t* xcb_xfixes_get_cursor_image_reply(xcb_connection_t* c /**< */ ,
	xcb_xfixes_get_cursor_image_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xfixes_region_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xfixes_region_t)
 */
void xcb_xfixes_region_next(xcb_xfixes_region_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xfixes_region_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xfixes_region_end(xcb_xfixes_region_iterator_t i /**< */ );

int xcb_xfixes_create_region_sizeof(const void* _buffer /**< */ , uint rectangles_len /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_create_region_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ , uint rectangles_len /**< */ ,
	const xcb_rectangle_t* rectangles /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_create_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ , uint rectangles_len /**< */ ,
	const xcb_rectangle_t* rectangles /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_create_region_from_bitmap_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ ,
	xcb_pixmap_t bitmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_create_region_from_bitmap(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ , xcb_pixmap_t bitmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_create_region_from_window_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ ,
	xcb_window_t window /**< */ , xcb_shape_kind_t kind /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_create_region_from_window(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ ,
	xcb_window_t window /**< */ , xcb_shape_kind_t kind /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_create_region_from_gc_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ ,
	xcb_gcontext_t gc /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_create_region_from_gc(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ , xcb_gcontext_t gc /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_create_region_from_picture_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ ,
	xcb_render_picture_t picture /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_create_region_from_picture(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ ,
	xcb_render_picture_t picture /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_destroy_region_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_destroy_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ );

int xcb_xfixes_set_region_sizeof(const void* _buffer /**< */ , uint rectangles_len /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_set_region_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ , uint rectangles_len /**< */ ,
	const xcb_rectangle_t* rectangles /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_set_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ , uint rectangles_len /**< */ ,
	const xcb_rectangle_t* rectangles /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_copy_region_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source /**< */ ,
	xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_copy_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source /**< */ , xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_union_region_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source1 /**< */ ,
	xcb_xfixes_region_t source2 /**< */ , xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_union_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source1 /**< */ , xcb_xfixes_region_t source2 /**< */ ,
	xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_intersect_region_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source1 /**< */ ,
	xcb_xfixes_region_t source2 /**< */ , xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_intersect_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source1 /**< */ , xcb_xfixes_region_t source2 /**< */ ,
	xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_subtract_region_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source1 /**< */ ,
	xcb_xfixes_region_t source2 /**< */ , xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_subtract_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source1 /**< */ , xcb_xfixes_region_t source2 /**< */ ,
	xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_invert_region_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source /**< */ , xcb_rectangle_t bounds /**< */ ,
	xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_invert_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source /**< */ , xcb_rectangle_t bounds /**< */ ,
	xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_translate_region_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ , short dx /**< */ ,
	short dy /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_translate_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ , short dx /**< */ ,
	short dy /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_region_extents_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source /**< */ ,
	xcb_xfixes_region_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_region_extents(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source /**< */ ,
	xcb_xfixes_region_t destination /**< */ );

int xcb_xfixes_fetch_region_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xfixes_fetch_region_cookie_t xcb_xfixes_fetch_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_xfixes_fetch_region_cookie_t xcb_xfixes_fetch_region_unchecked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ );

xcb_rectangle_t* xcb_xfixes_fetch_region_rectangles(const xcb_xfixes_fetch_region_reply_t* R /**< */ );

int xcb_xfixes_fetch_region_rectangles_length(const xcb_xfixes_fetch_region_reply_t* R /**< */ );

xcb_rectangle_iterator_t xcb_xfixes_fetch_region_rectangles_iterator(const xcb_xfixes_fetch_region_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xfixes_fetch_region_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xfixes_fetch_region_reply_t* xcb_xfixes_fetch_region_reply(xcb_connection_t* c /**< */ ,
	xcb_xfixes_fetch_region_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_set_gc_clip_region_checked(xcb_connection_t* c /**< */ , xcb_gcontext_t gc /**< */ , xcb_xfixes_region_t region /**< */ ,
	short x_origin /**< */ , short y_origin /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_set_gc_clip_region(xcb_connection_t* c /**< */ , xcb_gcontext_t gc /**< */ ,
	xcb_xfixes_region_t region /**< */ , short x_origin /**< */ , short y_origin /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_set_window_shape_region_checked(xcb_connection_t* c /**< */ , xcb_window_t dest /**< */ ,
	xcb_shape_kind_t dest_kind /**< */ , short x_offset /**< */ , short y_offset /**< */ , xcb_xfixes_region_t region /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_set_window_shape_region(xcb_connection_t* c /**< */ , xcb_window_t dest /**< */ , xcb_shape_kind_t dest_kind /**< */ ,
	short x_offset /**< */ , short y_offset /**< */ , xcb_xfixes_region_t region /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_set_picture_clip_region_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_xfixes_region_t region /**< */ , short x_origin /**< */ , short y_origin /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_set_picture_clip_region(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_xfixes_region_t region /**< */ , short x_origin /**< */ , short y_origin /**< */ );

int xcb_xfixes_set_cursor_name_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_set_cursor_name_checked(xcb_connection_t* c /**< */ , xcb_cursor_t cursor /**< */ ,
	ushort nbytes /**< */ , const char* name /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_set_cursor_name(xcb_connection_t* c /**< */ , xcb_cursor_t cursor /**< */ , ushort nbytes /**< */ ,
	const char* name /**< */ );

int xcb_xfixes_get_cursor_name_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xfixes_get_cursor_name_cookie_t xcb_xfixes_get_cursor_name(xcb_connection_t* c /**< */ , xcb_cursor_t cursor /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_xfixes_get_cursor_name_cookie_t xcb_xfixes_get_cursor_name_unchecked(xcb_connection_t* c /**< */ , xcb_cursor_t cursor /**< */ );

char* xcb_xfixes_get_cursor_name_name(const xcb_xfixes_get_cursor_name_reply_t* R /**< */ );

int xcb_xfixes_get_cursor_name_name_length(const xcb_xfixes_get_cursor_name_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xfixes_get_cursor_name_name_end(const xcb_xfixes_get_cursor_name_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xfixes_get_cursor_name_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xfixes_get_cursor_name_reply_t* xcb_xfixes_get_cursor_name_reply(xcb_connection_t* c /**< */ ,
	xcb_xfixes_get_cursor_name_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xfixes_get_cursor_image_and_name_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xfixes_get_cursor_image_and_name_cookie_t xcb_xfixes_get_cursor_image_and_name(xcb_connection_t* c /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_xfixes_get_cursor_image_and_name_cookie_t xcb_xfixes_get_cursor_image_and_name_unchecked(xcb_connection_t* c /**< */ );

char* xcb_xfixes_get_cursor_image_and_name_name(const xcb_xfixes_get_cursor_image_and_name_reply_t* R /**< */ );

int xcb_xfixes_get_cursor_image_and_name_name_length(const xcb_xfixes_get_cursor_image_and_name_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xfixes_get_cursor_image_and_name_name_end(const xcb_xfixes_get_cursor_image_and_name_reply_t* R /**< */ );

uint* xcb_xfixes_get_cursor_image_and_name_cursor_image(const xcb_xfixes_get_cursor_image_and_name_reply_t* R /**< */ );

int xcb_xfixes_get_cursor_image_and_name_cursor_image_length(const xcb_xfixes_get_cursor_image_and_name_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xfixes_get_cursor_image_and_name_cursor_image_end(const xcb_xfixes_get_cursor_image_and_name_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xfixes_get_cursor_image_and_name_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xfixes_get_cursor_image_and_name_reply_t* xcb_xfixes_get_cursor_image_and_name_reply(xcb_connection_t* c /**< */ ,
	xcb_xfixes_get_cursor_image_and_name_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_change_cursor_checked(xcb_connection_t* c /**< */ , xcb_cursor_t source /**< */ , xcb_cursor_t destination /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_change_cursor(xcb_connection_t* c /**< */ , xcb_cursor_t source /**< */ , xcb_cursor_t destination /**< */ );

int xcb_xfixes_change_cursor_by_name_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_change_cursor_by_name_checked(xcb_connection_t* c /**< */ , xcb_cursor_t src /**< */ ,
	ushort nbytes /**< */ , const char* name /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_change_cursor_by_name(xcb_connection_t* c /**< */ , xcb_cursor_t src /**< */ , ushort nbytes /**< */ ,
	const char* name /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_expand_region_checked(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source /**< */ ,
	xcb_xfixes_region_t destination /**< */ , ushort left /**< */ , ushort right /**< */ , ushort top /**< */ , ushort bottom /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_expand_region(xcb_connection_t* c /**< */ , xcb_xfixes_region_t source /**< */ , xcb_xfixes_region_t destination /**< */ ,
	ushort left /**< */ , ushort right /**< */ , ushort top /**< */ , ushort bottom /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_hide_cursor_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_hide_cursor(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_show_cursor_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_show_cursor(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xfixes_barrier_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xfixes_barrier_t)
 */
void xcb_xfixes_barrier_next(xcb_xfixes_barrier_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xfixes_barrier_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xfixes_barrier_end(xcb_xfixes_barrier_iterator_t i /**< */ );

int xcb_xfixes_create_pointer_barrier_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_create_pointer_barrier_checked(xcb_connection_t* c /**< */ , xcb_xfixes_barrier_t barrier /**< */ ,
	xcb_window_t window /**< */ , ushort x1 /**< */ , ushort y1 /**< */ , ushort x2 /**< */ , ushort y2 /**< */ , uint directions /**< */ ,
	ushort num_devices /**< */ , const ushort* devices /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_create_pointer_barrier(xcb_connection_t* c /**< */ , xcb_xfixes_barrier_t barrier /**< */ , xcb_window_t window /**< */ ,
	ushort x1 /**< */ , ushort y1 /**< */ , ushort x2 /**< */ , ushort y2 /**< */ , uint directions /**< */ ,
	ushort num_devices /**< */ , const ushort* devices /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_xfixes_delete_pointer_barrier_checked(xcb_connection_t* c /**< */ , xcb_xfixes_barrier_t barrier /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xfixes_delete_pointer_barrier(xcb_connection_t* c /**< */ , xcb_xfixes_barrier_t barrier /**< */ );

/**
 * @}
 */
