/*
 * This file generated automatically from glx.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Glx_API XCB Glx API
 * @brief Glx XCB Protocol Implementation.
 * @{
 **/

module xcb.glx;

import xcb.xcb;
import xcb.xproto;

extern (C):

enum int XCB_GLX_MAJOR_VERSION = 1;
enum int XCB_GLX_MINOR_VERSION = 4;

extern (C) __gshared extern xcb_extension_t xcb_glx_id;

alias xcb_glx_pixmap_t = uint;

/**
 * @brief xcb_glx_pixmap_iterator_t
 **/
struct xcb_glx_pixmap_iterator_t {
	xcb_glx_pixmap_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_glx_context_t = uint;

/**
 * @brief xcb_glx_context_iterator_t
 **/
struct xcb_glx_context_iterator_t {
	xcb_glx_context_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_glx_pbuffer_t = uint;

/**
 * @brief xcb_glx_pbuffer_iterator_t
 **/
struct xcb_glx_pbuffer_iterator_t {
	xcb_glx_pbuffer_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_glx_window_t = uint;

/**
 * @brief xcb_glx_window_iterator_t
 **/
struct xcb_glx_window_iterator_t {
	xcb_glx_window_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_glx_fbconfig_t = uint;

/**
 * @brief xcb_glx_fbconfig_iterator_t
 **/
struct xcb_glx_fbconfig_iterator_t {
	xcb_glx_fbconfig_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_glx_drawable_t = uint;

/**
 * @brief xcb_glx_drawable_iterator_t
 **/
struct xcb_glx_drawable_iterator_t {
	xcb_glx_drawable_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_glx_float32_t = float;

/**
 * @brief xcb_glx_float32_iterator_t
 **/
struct xcb_glx_float32_iterator_t {
	xcb_glx_float32_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_glx_float64_t = double;

/**
 * @brief xcb_glx_float64_iterator_t
 **/
struct xcb_glx_float64_iterator_t {
	xcb_glx_float64_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_glx_bool32_t = uint;

/**
 * @brief xcb_glx_bool32_iterator_t
 **/
struct xcb_glx_bool32_iterator_t {
	xcb_glx_bool32_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_glx_context_tag_t = uint;

/**
 * @brief xcb_glx_context_tag_iterator_t
 **/
struct xcb_glx_context_tag_iterator_t {
	xcb_glx_context_tag_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_glx_generic. */
enum XCB_GLX_GENERIC = -1;

/**
 * @brief xcb_glx_generic_error_t
 **/
struct xcb_glx_generic_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
	uint bad_value; /**<  */
	ushort minor_opcode; /**<  */
	ubyte major_opcode; /**<  */
	ubyte[21] pad0; /**<  */
}

/** Opcode for xcb_glx_bad_context. */
enum XCB_GLX_BAD_CONTEXT = 0;

alias xcb_glx_bad_context_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_context_state. */
enum XCB_GLX_BAD_CONTEXT_STATE = 1;

alias xcb_glx_bad_context_state_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_drawable. */
enum XCB_GLX_BAD_DRAWABLE = 2;

alias xcb_glx_bad_drawable_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_pixmap. */
enum XCB_GLX_BAD_PIXMAP = 3;

alias xcb_glx_bad_pixmap_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_context_tag. */
enum XCB_GLX_BAD_CONTEXT_TAG = 4;

alias xcb_glx_bad_context_tag_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_current_window. */
enum XCB_GLX_BAD_CURRENT_WINDOW = 5;

alias xcb_glx_bad_current_window_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_render_request. */
enum XCB_GLX_BAD_RENDER_REQUEST = 6;

alias xcb_glx_bad_render_request_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_large_request. */
enum XCB_GLX_BAD_LARGE_REQUEST = 7;

alias xcb_glx_bad_large_request_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_unsupported_private_request. */
enum XCB_GLX_UNSUPPORTED_PRIVATE_REQUEST = 8;

alias xcb_glx_unsupported_private_request_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_fb_config. */
enum XCB_GLX_BAD_FB_CONFIG = 9;

alias xcb_glx_bad_fb_config_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_pbuffer. */
enum XCB_GLX_BAD_PBUFFER = 10;

alias xcb_glx_bad_pbuffer_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_current_drawable. */
enum XCB_GLX_BAD_CURRENT_DRAWABLE = 11;

alias xcb_glx_bad_current_drawable_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_bad_window. */
enum XCB_GLX_BAD_WINDOW = 12;

alias xcb_glx_bad_window_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_glx_bad_profile_arb. */
enum XCB_GLX_GLX_BAD_PROFILE_ARB = 13;

alias xcb_glx_glx_bad_profile_arb_error_t = xcb_glx_generic_error_t;

/** Opcode for xcb_glx_pbuffer_clobber. */
enum XCB_GLX_PBUFFER_CLOBBER = 0;

/**
 * @brief xcb_glx_pbuffer_clobber_event_t
 **/
struct xcb_glx_pbuffer_clobber_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	ushort event_type; /**<  */
	ushort draw_type; /**<  */
	xcb_glx_drawable_t drawable; /**<  */
	uint b_mask; /**<  */
	ushort aux_buffer; /**<  */
	ushort x; /**<  */
	ushort y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort count; /**<  */
	ubyte[4] pad1; /**<  */
}

/** Opcode for xcb_glx_buffer_swap_complete. */
enum XCB_GLX_BUFFER_SWAP_COMPLETE = 1;

/**
 * @brief xcb_glx_buffer_swap_complete_event_t
 **/
struct xcb_glx_buffer_swap_complete_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	ushort event_type; /**<  */
	ubyte[2] pad1; /**<  */
	xcb_glx_drawable_t drawable; /**<  */
	uint ust_hi; /**<  */
	uint ust_lo; /**<  */
	uint msc_hi; /**<  */
	uint msc_lo; /**<  */
	uint sbc; /**<  */
}

enum xcb_glx_pbcet_t {
	XCB_GLX_PBCET_DAMAGED = 32791,
	XCB_GLX_PBCET_SAVED = 32792
}

alias XCB_GLX_PBCET_DAMAGED = xcb_glx_pbcet_t.XCB_GLX_PBCET_DAMAGED;
alias XCB_GLX_PBCET_SAVED = xcb_glx_pbcet_t.XCB_GLX_PBCET_SAVED;

enum xcb_glx_pbcdt_t {
	XCB_GLX_PBCDT_WINDOW = 32793,
	XCB_GLX_PBCDT_PBUFFER = 32794
}

alias XCB_GLX_PBCDT_WINDOW = xcb_glx_pbcdt_t.XCB_GLX_PBCDT_WINDOW;
alias XCB_GLX_PBCDT_PBUFFER = xcb_glx_pbcdt_t.XCB_GLX_PBCDT_PBUFFER;

/** Opcode for xcb_glx_render. */
enum XCB_GLX_RENDER = 1;

/**
 * @brief xcb_glx_render_request_t
 **/
struct xcb_glx_render_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
}

/** Opcode for xcb_glx_render_large. */
enum XCB_GLX_RENDER_LARGE = 2;

/**
 * @brief xcb_glx_render_large_request_t
 **/
struct xcb_glx_render_large_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	ushort request_num; /**<  */
	ushort request_total; /**<  */
	uint data_len; /**<  */
}

/** Opcode for xcb_glx_create_context. */
enum XCB_GLX_CREATE_CONTEXT = 3;

/**
 * @brief xcb_glx_create_context_request_t
 **/
struct xcb_glx_create_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_t context; /**<  */
	xcb_visualid_t visual; /**<  */
	uint screen; /**<  */
	xcb_glx_context_t share_list; /**<  */
	ubyte is_direct; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_glx_destroy_context. */
enum XCB_GLX_DESTROY_CONTEXT = 4;

/**
 * @brief xcb_glx_destroy_context_request_t
 **/
struct xcb_glx_destroy_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_t context; /**<  */
}

/**
 * @brief xcb_glx_make_current_cookie_t
 **/
struct xcb_glx_make_current_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_make_current. */
enum XCB_GLX_MAKE_CURRENT = 5;

/**
 * @brief xcb_glx_make_current_request_t
 **/
struct xcb_glx_make_current_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_drawable_t drawable; /**<  */
	xcb_glx_context_t context; /**<  */
	xcb_glx_context_tag_t old_context_tag; /**<  */
}

/**
 * @brief xcb_glx_make_current_reply_t
 **/
struct xcb_glx_make_current_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_glx_is_direct_cookie_t
 **/
struct xcb_glx_is_direct_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_is_direct. */
enum XCB_GLX_IS_DIRECT = 6;

/**
 * @brief xcb_glx_is_direct_request_t
 **/
struct xcb_glx_is_direct_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_t context; /**<  */
}

/**
 * @brief xcb_glx_is_direct_reply_t
 **/
struct xcb_glx_is_direct_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte is_direct; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_glx_query_version_cookie_t
 **/
struct xcb_glx_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_query_version. */
enum XCB_GLX_QUERY_VERSION = 7;

/**
 * @brief xcb_glx_query_version_request_t
 **/
struct xcb_glx_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
}

/**
 * @brief xcb_glx_query_version_reply_t
 **/
struct xcb_glx_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
	ubyte[16] pad1; /**<  */
}

/** Opcode for xcb_glx_wait_gl. */
enum XCB_GLX_WAIT_GL = 8;

/**
 * @brief xcb_glx_wait_gl_request_t
 **/
struct xcb_glx_wait_gl_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
}

/** Opcode for xcb_glx_wait_x. */
enum XCB_GLX_WAIT_X = 9;

/**
 * @brief xcb_glx_wait_x_request_t
 **/
struct xcb_glx_wait_x_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
}

/** Opcode for xcb_glx_copy_context. */
enum XCB_GLX_COPY_CONTEXT = 10;

/**
 * @brief xcb_glx_copy_context_request_t
 **/
struct xcb_glx_copy_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_t src; /**<  */
	xcb_glx_context_t dest; /**<  */
	uint mask; /**<  */
	xcb_glx_context_tag_t src_context_tag; /**<  */
}

enum xcb_glx_gc_t {
	XCB_GLX_GC_GL_CURRENT_BIT = 1,
	XCB_GLX_GC_GL_POINT_BIT = 2,
	XCB_GLX_GC_GL_LINE_BIT = 4,
	XCB_GLX_GC_GL_POLYGON_BIT = 8,
	XCB_GLX_GC_GL_POLYGON_STIPPLE_BIT = 16,
	XCB_GLX_GC_GL_PIXEL_MODE_BIT = 32,
	XCB_GLX_GC_GL_LIGHTING_BIT = 64,
	XCB_GLX_GC_GL_FOG_BIT = 128,
	XCB_GLX_GC_GL_DEPTH_BUFFER_BIT = 256,
	XCB_GLX_GC_GL_ACCUM_BUFFER_BIT = 512,
	XCB_GLX_GC_GL_STENCIL_BUFFER_BIT = 1024,
	XCB_GLX_GC_GL_VIEWPORT_BIT = 2048,
	XCB_GLX_GC_GL_TRANSFORM_BIT = 4096,
	XCB_GLX_GC_GL_ENABLE_BIT = 8192,
	XCB_GLX_GC_GL_COLOR_BUFFER_BIT = 16384,
	XCB_GLX_GC_GL_HINT_BIT = 32768,
	XCB_GLX_GC_GL_EVAL_BIT = 65536,
	XCB_GLX_GC_GL_LIST_BIT = 131072,
	XCB_GLX_GC_GL_TEXTURE_BIT = 262144,
	XCB_GLX_GC_GL_SCISSOR_BIT = 524288,
	XCB_GLX_GC_GL_ALL_ATTRIB_BITS = 16777215
}

alias XCB_GLX_GC_GL_CURRENT_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_CURRENT_BIT;
alias XCB_GLX_GC_GL_POINT_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_POINT_BIT;
alias XCB_GLX_GC_GL_LINE_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_LINE_BIT;
alias XCB_GLX_GC_GL_POLYGON_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_POLYGON_BIT;
alias XCB_GLX_GC_GL_POLYGON_STIPPLE_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_POLYGON_STIPPLE_BIT;
alias XCB_GLX_GC_GL_PIXEL_MODE_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_PIXEL_MODE_BIT;
alias XCB_GLX_GC_GL_LIGHTING_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_LIGHTING_BIT;
alias XCB_GLX_GC_GL_FOG_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_FOG_BIT;
alias XCB_GLX_GC_GL_DEPTH_BUFFER_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_DEPTH_BUFFER_BIT;
alias XCB_GLX_GC_GL_ACCUM_BUFFER_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_ACCUM_BUFFER_BIT;
alias XCB_GLX_GC_GL_STENCIL_BUFFER_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_STENCIL_BUFFER_BIT;
alias XCB_GLX_GC_GL_VIEWPORT_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_VIEWPORT_BIT;
alias XCB_GLX_GC_GL_TRANSFORM_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_TRANSFORM_BIT;
alias XCB_GLX_GC_GL_ENABLE_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_ENABLE_BIT;
alias XCB_GLX_GC_GL_COLOR_BUFFER_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_COLOR_BUFFER_BIT;
alias XCB_GLX_GC_GL_HINT_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_HINT_BIT;
alias XCB_GLX_GC_GL_EVAL_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_EVAL_BIT;
alias XCB_GLX_GC_GL_LIST_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_LIST_BIT;
alias XCB_GLX_GC_GL_TEXTURE_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_TEXTURE_BIT;
alias XCB_GLX_GC_GL_SCISSOR_BIT = xcb_glx_gc_t.XCB_GLX_GC_GL_SCISSOR_BIT;
alias XCB_GLX_GC_GL_ALL_ATTRIB_BITS = xcb_glx_gc_t.XCB_GLX_GC_GL_ALL_ATTRIB_BITS;

/** Opcode for xcb_glx_swap_buffers. */
enum XCB_GLX_SWAP_BUFFERS = 11;

/**
 * @brief xcb_glx_swap_buffers_request_t
 **/
struct xcb_glx_swap_buffers_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	xcb_glx_drawable_t drawable; /**<  */
}

/** Opcode for xcb_glx_use_x_font. */
enum XCB_GLX_USE_X_FONT = 12;

/**
 * @brief xcb_glx_use_x_font_request_t
 **/
struct xcb_glx_use_x_font_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	xcb_font_t font; /**<  */
	uint first; /**<  */
	uint count; /**<  */
	uint list_base; /**<  */
}

/** Opcode for xcb_glx_create_glx_pixmap. */
enum XCB_GLX_CREATE_GLX_PIXMAP = 13;

/**
 * @brief xcb_glx_create_glx_pixmap_request_t
 **/
struct xcb_glx_create_glx_pixmap_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
	xcb_visualid_t visual; /**<  */
	xcb_pixmap_t pixmap; /**<  */
	xcb_glx_pixmap_t glx_pixmap; /**<  */
}

/**
 * @brief xcb_glx_get_visual_configs_cookie_t
 **/
struct xcb_glx_get_visual_configs_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_visual_configs. */
enum XCB_GLX_GET_VISUAL_CONFIGS = 14;

/**
 * @brief xcb_glx_get_visual_configs_request_t
 **/
struct xcb_glx_get_visual_configs_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
}

/**
 * @brief xcb_glx_get_visual_configs_reply_t
 **/
struct xcb_glx_get_visual_configs_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_visuals; /**<  */
	uint num_properties; /**<  */
	ubyte[16] pad1; /**<  */
}

/** Opcode for xcb_glx_destroy_glx_pixmap. */
enum XCB_GLX_DESTROY_GLX_PIXMAP = 15;

/**
 * @brief xcb_glx_destroy_glx_pixmap_request_t
 **/
struct xcb_glx_destroy_glx_pixmap_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_pixmap_t glx_pixmap; /**<  */
}

/** Opcode for xcb_glx_vendor_private. */
enum XCB_GLX_VENDOR_PRIVATE = 16;

/**
 * @brief xcb_glx_vendor_private_request_t
 **/
struct xcb_glx_vendor_private_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint vendor_code; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
}

/**
 * @brief xcb_glx_vendor_private_with_reply_cookie_t
 **/
struct xcb_glx_vendor_private_with_reply_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_vendor_private_with_reply. */
enum XCB_GLX_VENDOR_PRIVATE_WITH_REPLY = 17;

/**
 * @brief xcb_glx_vendor_private_with_reply_request_t
 **/
struct xcb_glx_vendor_private_with_reply_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint vendor_code; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
}

/**
 * @brief xcb_glx_vendor_private_with_reply_reply_t
 **/
struct xcb_glx_vendor_private_with_reply_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint retval; /**<  */
	ubyte[24] data1; /**<  */
}

/**
 * @brief xcb_glx_query_extensions_string_cookie_t
 **/
struct xcb_glx_query_extensions_string_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_query_extensions_string. */
enum XCB_GLX_QUERY_EXTENSIONS_STRING = 18;

/**
 * @brief xcb_glx_query_extensions_string_request_t
 **/
struct xcb_glx_query_extensions_string_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
}

/**
 * @brief xcb_glx_query_extensions_string_reply_t
 **/
struct xcb_glx_query_extensions_string_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	ubyte[16] pad2; /**<  */
}

/**
 * @brief xcb_glx_query_server_string_cookie_t
 **/
struct xcb_glx_query_server_string_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_query_server_string. */
enum XCB_GLX_QUERY_SERVER_STRING = 19;

/**
 * @brief xcb_glx_query_server_string_request_t
 **/
struct xcb_glx_query_server_string_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
	uint name; /**<  */
}

/**
 * @brief xcb_glx_query_server_string_reply_t
 **/
struct xcb_glx_query_server_string_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint str_len; /**<  */
	ubyte[16] pad2; /**<  */
}

/** Opcode for xcb_glx_client_info. */
enum XCB_GLX_CLIENT_INFO = 20;

/**
 * @brief xcb_glx_client_info_request_t
 **/
struct xcb_glx_client_info_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
	uint str_len; /**<  */
}

/**
 * @brief xcb_glx_get_fb_configs_cookie_t
 **/
struct xcb_glx_get_fb_configs_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_fb_configs. */
enum XCB_GLX_GET_FB_CONFIGS = 21;

/**
 * @brief xcb_glx_get_fb_configs_request_t
 **/
struct xcb_glx_get_fb_configs_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
}

/**
 * @brief xcb_glx_get_fb_configs_reply_t
 **/
struct xcb_glx_get_fb_configs_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_FB_configs; /**<  */
	uint num_properties; /**<  */
	ubyte[16] pad1; /**<  */
}

/** Opcode for xcb_glx_create_pixmap. */
enum XCB_GLX_CREATE_PIXMAP = 22;

/**
 * @brief xcb_glx_create_pixmap_request_t
 **/
struct xcb_glx_create_pixmap_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
	xcb_glx_fbconfig_t fbconfig; /**<  */
	xcb_pixmap_t pixmap; /**<  */
	xcb_glx_pixmap_t glx_pixmap; /**<  */
	uint num_attribs; /**<  */
}

/** Opcode for xcb_glx_destroy_pixmap. */
enum XCB_GLX_DESTROY_PIXMAP = 23;

/**
 * @brief xcb_glx_destroy_pixmap_request_t
 **/
struct xcb_glx_destroy_pixmap_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_pixmap_t glx_pixmap; /**<  */
}

/** Opcode for xcb_glx_create_new_context. */
enum XCB_GLX_CREATE_NEW_CONTEXT = 24;

/**
 * @brief xcb_glx_create_new_context_request_t
 **/
struct xcb_glx_create_new_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_t context; /**<  */
	xcb_glx_fbconfig_t fbconfig; /**<  */
	uint screen; /**<  */
	uint render_type; /**<  */
	xcb_glx_context_t share_list; /**<  */
	ubyte is_direct; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_glx_query_context_cookie_t
 **/
struct xcb_glx_query_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_query_context. */
enum XCB_GLX_QUERY_CONTEXT = 25;

/**
 * @brief xcb_glx_query_context_request_t
 **/
struct xcb_glx_query_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_t context; /**<  */
}

/**
 * @brief xcb_glx_query_context_reply_t
 **/
struct xcb_glx_query_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_attribs; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_glx_make_context_current_cookie_t
 **/
struct xcb_glx_make_context_current_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_make_context_current. */
enum XCB_GLX_MAKE_CONTEXT_CURRENT = 26;

/**
 * @brief xcb_glx_make_context_current_request_t
 **/
struct xcb_glx_make_context_current_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t old_context_tag; /**<  */
	xcb_glx_drawable_t drawable; /**<  */
	xcb_glx_drawable_t read_drawable; /**<  */
	xcb_glx_context_t context; /**<  */
}

/**
 * @brief xcb_glx_make_context_current_reply_t
 **/
struct xcb_glx_make_context_current_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_glx_create_pbuffer. */
enum XCB_GLX_CREATE_PBUFFER = 27;

/**
 * @brief xcb_glx_create_pbuffer_request_t
 **/
struct xcb_glx_create_pbuffer_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
	xcb_glx_fbconfig_t fbconfig; /**<  */
	xcb_glx_pbuffer_t pbuffer; /**<  */
	uint num_attribs; /**<  */
}

/** Opcode for xcb_glx_destroy_pbuffer. */
enum XCB_GLX_DESTROY_PBUFFER = 28;

/**
 * @brief xcb_glx_destroy_pbuffer_request_t
 **/
struct xcb_glx_destroy_pbuffer_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_pbuffer_t pbuffer; /**<  */
}

/**
 * @brief xcb_glx_get_drawable_attributes_cookie_t
 **/
struct xcb_glx_get_drawable_attributes_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_drawable_attributes. */
enum XCB_GLX_GET_DRAWABLE_ATTRIBUTES = 29;

/**
 * @brief xcb_glx_get_drawable_attributes_request_t
 **/
struct xcb_glx_get_drawable_attributes_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_drawable_t drawable; /**<  */
}

/**
 * @brief xcb_glx_get_drawable_attributes_reply_t
 **/
struct xcb_glx_get_drawable_attributes_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_attribs; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_glx_change_drawable_attributes. */
enum XCB_GLX_CHANGE_DRAWABLE_ATTRIBUTES = 30;

/**
 * @brief xcb_glx_change_drawable_attributes_request_t
 **/
struct xcb_glx_change_drawable_attributes_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_drawable_t drawable; /**<  */
	uint num_attribs; /**<  */
}

/** Opcode for xcb_glx_create_window. */
enum XCB_GLX_CREATE_WINDOW = 31;

/**
 * @brief xcb_glx_create_window_request_t
 **/
struct xcb_glx_create_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
	xcb_glx_fbconfig_t fbconfig; /**<  */
	xcb_window_t window; /**<  */
	xcb_glx_window_t glx_window; /**<  */
	uint num_attribs; /**<  */
}

/** Opcode for xcb_glx_delete_window. */
enum XCB_GLX_DELETE_WINDOW = 32;

/**
 * @brief xcb_glx_delete_window_request_t
 **/
struct xcb_glx_delete_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_window_t glxwindow; /**<  */
}

/** Opcode for xcb_glx_set_client_info_arb. */
enum XCB_GLX_SET_CLIENT_INFO_ARB = 33;

/**
 * @brief xcb_glx_set_client_info_arb_request_t
 **/
struct xcb_glx_set_client_info_arb_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
	uint num_versions; /**<  */
	uint gl_str_len; /**<  */
	uint glx_str_len; /**<  */
}

/** Opcode for xcb_glx_create_context_attribs_arb. */
enum XCB_GLX_CREATE_CONTEXT_ATTRIBS_ARB = 34;

/**
 * @brief xcb_glx_create_context_attribs_arb_request_t
 **/
struct xcb_glx_create_context_attribs_arb_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_t context; /**<  */
	xcb_glx_fbconfig_t fbconfig; /**<  */
	uint screen; /**<  */
	xcb_glx_context_t share_list; /**<  */
	ubyte is_direct; /**<  */
	ubyte[3] pad0; /**<  */
	uint num_attribs; /**<  */
}

/** Opcode for xcb_glx_set_client_info_2arb. */
enum XCB_GLX_SET_CLIENT_INFO_2ARB = 35;

/**
 * @brief xcb_glx_set_client_info_2arb_request_t
 **/
struct xcb_glx_set_client_info_2arb_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
	uint num_versions; /**<  */
	uint gl_str_len; /**<  */
	uint glx_str_len; /**<  */
}

/** Opcode for xcb_glx_new_list. */
enum XCB_GLX_NEW_LIST = 101;

/**
 * @brief xcb_glx_new_list_request_t
 **/
struct xcb_glx_new_list_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint list; /**<  */
	uint mode; /**<  */
}

/** Opcode for xcb_glx_end_list. */
enum XCB_GLX_END_LIST = 102;

/**
 * @brief xcb_glx_end_list_request_t
 **/
struct xcb_glx_end_list_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
}

/** Opcode for xcb_glx_delete_lists. */
enum XCB_GLX_DELETE_LISTS = 103;

/**
 * @brief xcb_glx_delete_lists_request_t
 **/
struct xcb_glx_delete_lists_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint list; /**<  */
	int range; /**<  */
}

/**
 * @brief xcb_glx_gen_lists_cookie_t
 **/
struct xcb_glx_gen_lists_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_gen_lists. */
enum XCB_GLX_GEN_LISTS = 104;

/**
 * @brief xcb_glx_gen_lists_request_t
 **/
struct xcb_glx_gen_lists_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int range; /**<  */
}

/**
 * @brief xcb_glx_gen_lists_reply_t
 **/
struct xcb_glx_gen_lists_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint ret_val; /**<  */
}

/** Opcode for xcb_glx_feedback_buffer. */
enum XCB_GLX_FEEDBACK_BUFFER = 105;

/**
 * @brief xcb_glx_feedback_buffer_request_t
 **/
struct xcb_glx_feedback_buffer_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int size; /**<  */
	int type; /**<  */
}

/** Opcode for xcb_glx_select_buffer. */
enum XCB_GLX_SELECT_BUFFER = 106;

/**
 * @brief xcb_glx_select_buffer_request_t
 **/
struct xcb_glx_select_buffer_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int size; /**<  */
}

/**
 * @brief xcb_glx_render_mode_cookie_t
 **/
struct xcb_glx_render_mode_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_render_mode. */
enum XCB_GLX_RENDER_MODE = 107;

/**
 * @brief xcb_glx_render_mode_request_t
 **/
struct xcb_glx_render_mode_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint mode; /**<  */
}

/**
 * @brief xcb_glx_render_mode_reply_t
 **/
struct xcb_glx_render_mode_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint ret_val; /**<  */
	uint n; /**<  */
	uint new_mode; /**<  */
	ubyte[12] pad1; /**<  */
}

enum xcb_glx_rm_t {
	XCB_GLX_RM_GL_RENDER = 7168,
	XCB_GLX_RM_GL_FEEDBACK = 7169,
	XCB_GLX_RM_GL_SELECT = 7170
}

alias XCB_GLX_RM_GL_RENDER = xcb_glx_rm_t.XCB_GLX_RM_GL_RENDER;
alias XCB_GLX_RM_GL_FEEDBACK = xcb_glx_rm_t.XCB_GLX_RM_GL_FEEDBACK;
alias XCB_GLX_RM_GL_SELECT = xcb_glx_rm_t.XCB_GLX_RM_GL_SELECT;

/**
 * @brief xcb_glx_finish_cookie_t
 **/
struct xcb_glx_finish_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_finish. */
enum XCB_GLX_FINISH = 108;

/**
 * @brief xcb_glx_finish_request_t
 **/
struct xcb_glx_finish_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
}

/**
 * @brief xcb_glx_finish_reply_t
 **/
struct xcb_glx_finish_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
}

/** Opcode for xcb_glx_pixel_storef. */
enum XCB_GLX_PIXEL_STOREF = 109;

/**
 * @brief xcb_glx_pixel_storef_request_t
 **/
struct xcb_glx_pixel_storef_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint pname; /**<  */
	xcb_glx_float32_t datum; /**<  */
}

/** Opcode for xcb_glx_pixel_storei. */
enum XCB_GLX_PIXEL_STOREI = 110;

/**
 * @brief xcb_glx_pixel_storei_request_t
 **/
struct xcb_glx_pixel_storei_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint pname; /**<  */
	int datum; /**<  */
}

/**
 * @brief xcb_glx_read_pixels_cookie_t
 **/
struct xcb_glx_read_pixels_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_read_pixels. */
enum XCB_GLX_READ_PIXELS = 111;

/**
 * @brief xcb_glx_read_pixels_request_t
 **/
struct xcb_glx_read_pixels_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int x; /**<  */
	int y; /**<  */
	int width; /**<  */
	int height; /**<  */
	uint format; /**<  */
	uint type; /**<  */
	ubyte swap_bytes; /**<  */
	ubyte lsb_first; /**<  */
}

/**
 * @brief xcb_glx_read_pixels_reply_t
 **/
struct xcb_glx_read_pixels_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad1; /**<  */
}

/**
 * @brief xcb_glx_get_booleanv_cookie_t
 **/
struct xcb_glx_get_booleanv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_booleanv. */
enum XCB_GLX_GET_BOOLEANV = 112;

/**
 * @brief xcb_glx_get_booleanv_request_t
 **/
struct xcb_glx_get_booleanv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int pname; /**<  */
}

/**
 * @brief xcb_glx_get_booleanv_reply_t
 **/
struct xcb_glx_get_booleanv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	ubyte datum; /**<  */
	ubyte[15] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_clip_plane_cookie_t
 **/
struct xcb_glx_get_clip_plane_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_clip_plane. */
enum XCB_GLX_GET_CLIP_PLANE = 113;

/**
 * @brief xcb_glx_get_clip_plane_request_t
 **/
struct xcb_glx_get_clip_plane_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int plane; /**<  */
}

/**
 * @brief xcb_glx_get_clip_plane_reply_t
 **/
struct xcb_glx_get_clip_plane_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad1; /**<  */
}

/**
 * @brief xcb_glx_get_doublev_cookie_t
 **/
struct xcb_glx_get_doublev_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_doublev. */
enum XCB_GLX_GET_DOUBLEV = 114;

/**
 * @brief xcb_glx_get_doublev_request_t
 **/
struct xcb_glx_get_doublev_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_doublev_reply_t
 **/
struct xcb_glx_get_doublev_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float64_t datum; /**<  */
	ubyte[8] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_error_cookie_t
 **/
struct xcb_glx_get_error_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_error. */
enum XCB_GLX_GET_ERROR = 115;

/**
 * @brief xcb_glx_get_error_request_t
 **/
struct xcb_glx_get_error_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
}

/**
 * @brief xcb_glx_get_error_reply_t
 **/
struct xcb_glx_get_error_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	int error; /**<  */
}

/**
 * @brief xcb_glx_get_floatv_cookie_t
 **/
struct xcb_glx_get_floatv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_floatv. */
enum XCB_GLX_GET_FLOATV = 116;

/**
 * @brief xcb_glx_get_floatv_request_t
 **/
struct xcb_glx_get_floatv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_floatv_reply_t
 **/
struct xcb_glx_get_floatv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_integerv_cookie_t
 **/
struct xcb_glx_get_integerv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_integerv. */
enum XCB_GLX_GET_INTEGERV = 117;

/**
 * @brief xcb_glx_get_integerv_request_t
 **/
struct xcb_glx_get_integerv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_integerv_reply_t
 **/
struct xcb_glx_get_integerv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_lightfv_cookie_t
 **/
struct xcb_glx_get_lightfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_lightfv. */
enum XCB_GLX_GET_LIGHTFV = 118;

/**
 * @brief xcb_glx_get_lightfv_request_t
 **/
struct xcb_glx_get_lightfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint light; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_lightfv_reply_t
 **/
struct xcb_glx_get_lightfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_lightiv_cookie_t
 **/
struct xcb_glx_get_lightiv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_lightiv. */
enum XCB_GLX_GET_LIGHTIV = 119;

/**
 * @brief xcb_glx_get_lightiv_request_t
 **/
struct xcb_glx_get_lightiv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint light; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_lightiv_reply_t
 **/
struct xcb_glx_get_lightiv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_mapdv_cookie_t
 **/
struct xcb_glx_get_mapdv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_mapdv. */
enum XCB_GLX_GET_MAPDV = 120;

/**
 * @brief xcb_glx_get_mapdv_request_t
 **/
struct xcb_glx_get_mapdv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint query; /**<  */
}

/**
 * @brief xcb_glx_get_mapdv_reply_t
 **/
struct xcb_glx_get_mapdv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float64_t datum; /**<  */
	ubyte[8] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_mapfv_cookie_t
 **/
struct xcb_glx_get_mapfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_mapfv. */
enum XCB_GLX_GET_MAPFV = 121;

/**
 * @brief xcb_glx_get_mapfv_request_t
 **/
struct xcb_glx_get_mapfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint query; /**<  */
}

/**
 * @brief xcb_glx_get_mapfv_reply_t
 **/
struct xcb_glx_get_mapfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_mapiv_cookie_t
 **/
struct xcb_glx_get_mapiv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_mapiv. */
enum XCB_GLX_GET_MAPIV = 122;

/**
 * @brief xcb_glx_get_mapiv_request_t
 **/
struct xcb_glx_get_mapiv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint query; /**<  */
}

/**
 * @brief xcb_glx_get_mapiv_reply_t
 **/
struct xcb_glx_get_mapiv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_materialfv_cookie_t
 **/
struct xcb_glx_get_materialfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_materialfv. */
enum XCB_GLX_GET_MATERIALFV = 123;

/**
 * @brief xcb_glx_get_materialfv_request_t
 **/
struct xcb_glx_get_materialfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint face; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_materialfv_reply_t
 **/
struct xcb_glx_get_materialfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_materialiv_cookie_t
 **/
struct xcb_glx_get_materialiv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_materialiv. */
enum XCB_GLX_GET_MATERIALIV = 124;

/**
 * @brief xcb_glx_get_materialiv_request_t
 **/
struct xcb_glx_get_materialiv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint face; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_materialiv_reply_t
 **/
struct xcb_glx_get_materialiv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_pixel_mapfv_cookie_t
 **/
struct xcb_glx_get_pixel_mapfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_pixel_mapfv. */
enum XCB_GLX_GET_PIXEL_MAPFV = 125;

/**
 * @brief xcb_glx_get_pixel_mapfv_request_t
 **/
struct xcb_glx_get_pixel_mapfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint map; /**<  */
}

/**
 * @brief xcb_glx_get_pixel_mapfv_reply_t
 **/
struct xcb_glx_get_pixel_mapfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_pixel_mapuiv_cookie_t
 **/
struct xcb_glx_get_pixel_mapuiv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_pixel_mapuiv. */
enum XCB_GLX_GET_PIXEL_MAPUIV = 126;

/**
 * @brief xcb_glx_get_pixel_mapuiv_request_t
 **/
struct xcb_glx_get_pixel_mapuiv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint map; /**<  */
}

/**
 * @brief xcb_glx_get_pixel_mapuiv_reply_t
 **/
struct xcb_glx_get_pixel_mapuiv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	uint datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_pixel_mapusv_cookie_t
 **/
struct xcb_glx_get_pixel_mapusv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_pixel_mapusv. */
enum XCB_GLX_GET_PIXEL_MAPUSV = 127;

/**
 * @brief xcb_glx_get_pixel_mapusv_request_t
 **/
struct xcb_glx_get_pixel_mapusv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint map; /**<  */
}

/**
 * @brief xcb_glx_get_pixel_mapusv_reply_t
 **/
struct xcb_glx_get_pixel_mapusv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	ushort datum; /**<  */
	ubyte[16] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_polygon_stipple_cookie_t
 **/
struct xcb_glx_get_polygon_stipple_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_polygon_stipple. */
enum XCB_GLX_GET_POLYGON_STIPPLE = 128;

/**
 * @brief xcb_glx_get_polygon_stipple_request_t
 **/
struct xcb_glx_get_polygon_stipple_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	ubyte lsb_first; /**<  */
}

/**
 * @brief xcb_glx_get_polygon_stipple_reply_t
 **/
struct xcb_glx_get_polygon_stipple_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad1; /**<  */
}

/**
 * @brief xcb_glx_get_string_cookie_t
 **/
struct xcb_glx_get_string_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_string. */
enum XCB_GLX_GET_STRING = 129;

/**
 * @brief xcb_glx_get_string_request_t
 **/
struct xcb_glx_get_string_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint name; /**<  */
}

/**
 * @brief xcb_glx_get_string_reply_t
 **/
struct xcb_glx_get_string_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	ubyte[16] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_tex_envfv_cookie_t
 **/
struct xcb_glx_get_tex_envfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_tex_envfv. */
enum XCB_GLX_GET_TEX_ENVFV = 130;

/**
 * @brief xcb_glx_get_tex_envfv_request_t
 **/
struct xcb_glx_get_tex_envfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_tex_envfv_reply_t
 **/
struct xcb_glx_get_tex_envfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_tex_enviv_cookie_t
 **/
struct xcb_glx_get_tex_enviv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_tex_enviv. */
enum XCB_GLX_GET_TEX_ENVIV = 131;

/**
 * @brief xcb_glx_get_tex_enviv_request_t
 **/
struct xcb_glx_get_tex_enviv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_tex_enviv_reply_t
 **/
struct xcb_glx_get_tex_enviv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_tex_gendv_cookie_t
 **/
struct xcb_glx_get_tex_gendv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_tex_gendv. */
enum XCB_GLX_GET_TEX_GENDV = 132;

/**
 * @brief xcb_glx_get_tex_gendv_request_t
 **/
struct xcb_glx_get_tex_gendv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint coord; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_tex_gendv_reply_t
 **/
struct xcb_glx_get_tex_gendv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float64_t datum; /**<  */
	ubyte[8] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_tex_genfv_cookie_t
 **/
struct xcb_glx_get_tex_genfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_tex_genfv. */
enum XCB_GLX_GET_TEX_GENFV = 133;

/**
 * @brief xcb_glx_get_tex_genfv_request_t
 **/
struct xcb_glx_get_tex_genfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint coord; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_tex_genfv_reply_t
 **/
struct xcb_glx_get_tex_genfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_tex_geniv_cookie_t
 **/
struct xcb_glx_get_tex_geniv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_tex_geniv. */
enum XCB_GLX_GET_TEX_GENIV = 134;

/**
 * @brief xcb_glx_get_tex_geniv_request_t
 **/
struct xcb_glx_get_tex_geniv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint coord; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_tex_geniv_reply_t
 **/
struct xcb_glx_get_tex_geniv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_tex_image_cookie_t
 **/
struct xcb_glx_get_tex_image_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_tex_image. */
enum XCB_GLX_GET_TEX_IMAGE = 135;

/**
 * @brief xcb_glx_get_tex_image_request_t
 **/
struct xcb_glx_get_tex_image_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	int level; /**<  */
	uint format; /**<  */
	uint type; /**<  */
	ubyte swap_bytes; /**<  */
}

/**
 * @brief xcb_glx_get_tex_image_reply_t
 **/
struct xcb_glx_get_tex_image_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[8] pad1; /**<  */
	int width; /**<  */
	int height; /**<  */
	int depth; /**<  */
	ubyte[4] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_tex_parameterfv_cookie_t
 **/
struct xcb_glx_get_tex_parameterfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_tex_parameterfv. */
enum XCB_GLX_GET_TEX_PARAMETERFV = 136;

/**
 * @brief xcb_glx_get_tex_parameterfv_request_t
 **/
struct xcb_glx_get_tex_parameterfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_tex_parameterfv_reply_t
 **/
struct xcb_glx_get_tex_parameterfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_tex_parameteriv_cookie_t
 **/
struct xcb_glx_get_tex_parameteriv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_tex_parameteriv. */
enum XCB_GLX_GET_TEX_PARAMETERIV = 137;

/**
 * @brief xcb_glx_get_tex_parameteriv_request_t
 **/
struct xcb_glx_get_tex_parameteriv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_tex_parameteriv_reply_t
 **/
struct xcb_glx_get_tex_parameteriv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_tex_level_parameterfv_cookie_t
 **/
struct xcb_glx_get_tex_level_parameterfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_tex_level_parameterfv. */
enum XCB_GLX_GET_TEX_LEVEL_PARAMETERFV = 138;

/**
 * @brief xcb_glx_get_tex_level_parameterfv_request_t
 **/
struct xcb_glx_get_tex_level_parameterfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	int level; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_tex_level_parameterfv_reply_t
 **/
struct xcb_glx_get_tex_level_parameterfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_tex_level_parameteriv_cookie_t
 **/
struct xcb_glx_get_tex_level_parameteriv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_tex_level_parameteriv. */
enum XCB_GLX_GET_TEX_LEVEL_PARAMETERIV = 139;

/**
 * @brief xcb_glx_get_tex_level_parameteriv_request_t
 **/
struct xcb_glx_get_tex_level_parameteriv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	int level; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_tex_level_parameteriv_reply_t
 **/
struct xcb_glx_get_tex_level_parameteriv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_is_list_cookie_t
 **/
struct xcb_glx_is_list_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_is_list. */
enum XCB_GLX_IS_LIST = 141;

/**
 * @brief xcb_glx_is_list_request_t
 **/
struct xcb_glx_is_list_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint list; /**<  */
}

/**
 * @brief xcb_glx_is_list_reply_t
 **/
struct xcb_glx_is_list_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_glx_bool32_t ret_val; /**<  */
}

/** Opcode for xcb_glx_flush. */
enum XCB_GLX_FLUSH = 142;

/**
 * @brief xcb_glx_flush_request_t
 **/
struct xcb_glx_flush_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
}

/**
 * @brief xcb_glx_are_textures_resident_cookie_t
 **/
struct xcb_glx_are_textures_resident_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_are_textures_resident. */
enum XCB_GLX_ARE_TEXTURES_RESIDENT = 143;

/**
 * @brief xcb_glx_are_textures_resident_request_t
 **/
struct xcb_glx_are_textures_resident_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int n; /**<  */
}

/**
 * @brief xcb_glx_are_textures_resident_reply_t
 **/
struct xcb_glx_are_textures_resident_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_glx_bool32_t ret_val; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_glx_delete_textures. */
enum XCB_GLX_DELETE_TEXTURES = 144;

/**
 * @brief xcb_glx_delete_textures_request_t
 **/
struct xcb_glx_delete_textures_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int n; /**<  */
}

/**
 * @brief xcb_glx_gen_textures_cookie_t
 **/
struct xcb_glx_gen_textures_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_gen_textures. */
enum XCB_GLX_GEN_TEXTURES = 145;

/**
 * @brief xcb_glx_gen_textures_request_t
 **/
struct xcb_glx_gen_textures_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int n; /**<  */
}

/**
 * @brief xcb_glx_gen_textures_reply_t
 **/
struct xcb_glx_gen_textures_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad1; /**<  */
}

/**
 * @brief xcb_glx_is_texture_cookie_t
 **/
struct xcb_glx_is_texture_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_is_texture. */
enum XCB_GLX_IS_TEXTURE = 146;

/**
 * @brief xcb_glx_is_texture_request_t
 **/
struct xcb_glx_is_texture_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint texture; /**<  */
}

/**
 * @brief xcb_glx_is_texture_reply_t
 **/
struct xcb_glx_is_texture_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_glx_bool32_t ret_val; /**<  */
}

/**
 * @brief xcb_glx_get_color_table_cookie_t
 **/
struct xcb_glx_get_color_table_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_color_table. */
enum XCB_GLX_GET_COLOR_TABLE = 147;

/**
 * @brief xcb_glx_get_color_table_request_t
 **/
struct xcb_glx_get_color_table_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint format; /**<  */
	uint type; /**<  */
	ubyte swap_bytes; /**<  */
}

/**
 * @brief xcb_glx_get_color_table_reply_t
 **/
struct xcb_glx_get_color_table_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[8] pad1; /**<  */
	int width; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_color_table_parameterfv_cookie_t
 **/
struct xcb_glx_get_color_table_parameterfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_color_table_parameterfv. */
enum XCB_GLX_GET_COLOR_TABLE_PARAMETERFV = 148;

/**
 * @brief xcb_glx_get_color_table_parameterfv_request_t
 **/
struct xcb_glx_get_color_table_parameterfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_color_table_parameterfv_reply_t
 **/
struct xcb_glx_get_color_table_parameterfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_color_table_parameteriv_cookie_t
 **/
struct xcb_glx_get_color_table_parameteriv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_color_table_parameteriv. */
enum XCB_GLX_GET_COLOR_TABLE_PARAMETERIV = 149;

/**
 * @brief xcb_glx_get_color_table_parameteriv_request_t
 **/
struct xcb_glx_get_color_table_parameteriv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_color_table_parameteriv_reply_t
 **/
struct xcb_glx_get_color_table_parameteriv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_convolution_filter_cookie_t
 **/
struct xcb_glx_get_convolution_filter_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_convolution_filter. */
enum XCB_GLX_GET_CONVOLUTION_FILTER = 150;

/**
 * @brief xcb_glx_get_convolution_filter_request_t
 **/
struct xcb_glx_get_convolution_filter_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint format; /**<  */
	uint type; /**<  */
	ubyte swap_bytes; /**<  */
}

/**
 * @brief xcb_glx_get_convolution_filter_reply_t
 **/
struct xcb_glx_get_convolution_filter_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[8] pad1; /**<  */
	int width; /**<  */
	int height; /**<  */
	ubyte[8] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_convolution_parameterfv_cookie_t
 **/
struct xcb_glx_get_convolution_parameterfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_convolution_parameterfv. */
enum XCB_GLX_GET_CONVOLUTION_PARAMETERFV = 151;

/**
 * @brief xcb_glx_get_convolution_parameterfv_request_t
 **/
struct xcb_glx_get_convolution_parameterfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_convolution_parameterfv_reply_t
 **/
struct xcb_glx_get_convolution_parameterfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_convolution_parameteriv_cookie_t
 **/
struct xcb_glx_get_convolution_parameteriv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_convolution_parameteriv. */
enum XCB_GLX_GET_CONVOLUTION_PARAMETERIV = 152;

/**
 * @brief xcb_glx_get_convolution_parameteriv_request_t
 **/
struct xcb_glx_get_convolution_parameteriv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_convolution_parameteriv_reply_t
 **/
struct xcb_glx_get_convolution_parameteriv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_separable_filter_cookie_t
 **/
struct xcb_glx_get_separable_filter_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_separable_filter. */
enum XCB_GLX_GET_SEPARABLE_FILTER = 153;

/**
 * @brief xcb_glx_get_separable_filter_request_t
 **/
struct xcb_glx_get_separable_filter_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint format; /**<  */
	uint type; /**<  */
	ubyte swap_bytes; /**<  */
}

/**
 * @brief xcb_glx_get_separable_filter_reply_t
 **/
struct xcb_glx_get_separable_filter_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[8] pad1; /**<  */
	int row_w; /**<  */
	int col_h; /**<  */
	ubyte[8] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_histogram_cookie_t
 **/
struct xcb_glx_get_histogram_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_histogram. */
enum XCB_GLX_GET_HISTOGRAM = 154;

/**
 * @brief xcb_glx_get_histogram_request_t
 **/
struct xcb_glx_get_histogram_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint format; /**<  */
	uint type; /**<  */
	ubyte swap_bytes; /**<  */
	ubyte reset; /**<  */
}

/**
 * @brief xcb_glx_get_histogram_reply_t
 **/
struct xcb_glx_get_histogram_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[8] pad1; /**<  */
	int width; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_histogram_parameterfv_cookie_t
 **/
struct xcb_glx_get_histogram_parameterfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_histogram_parameterfv. */
enum XCB_GLX_GET_HISTOGRAM_PARAMETERFV = 155;

/**
 * @brief xcb_glx_get_histogram_parameterfv_request_t
 **/
struct xcb_glx_get_histogram_parameterfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_histogram_parameterfv_reply_t
 **/
struct xcb_glx_get_histogram_parameterfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_histogram_parameteriv_cookie_t
 **/
struct xcb_glx_get_histogram_parameteriv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_histogram_parameteriv. */
enum XCB_GLX_GET_HISTOGRAM_PARAMETERIV = 156;

/**
 * @brief xcb_glx_get_histogram_parameteriv_request_t
 **/
struct xcb_glx_get_histogram_parameteriv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_histogram_parameteriv_reply_t
 **/
struct xcb_glx_get_histogram_parameteriv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_minmax_cookie_t
 **/
struct xcb_glx_get_minmax_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_minmax. */
enum XCB_GLX_GET_MINMAX = 157;

/**
 * @brief xcb_glx_get_minmax_request_t
 **/
struct xcb_glx_get_minmax_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint format; /**<  */
	uint type; /**<  */
	ubyte swap_bytes; /**<  */
	ubyte reset; /**<  */
}

/**
 * @brief xcb_glx_get_minmax_reply_t
 **/
struct xcb_glx_get_minmax_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad1; /**<  */
}

/**
 * @brief xcb_glx_get_minmax_parameterfv_cookie_t
 **/
struct xcb_glx_get_minmax_parameterfv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_minmax_parameterfv. */
enum XCB_GLX_GET_MINMAX_PARAMETERFV = 158;

/**
 * @brief xcb_glx_get_minmax_parameterfv_request_t
 **/
struct xcb_glx_get_minmax_parameterfv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_minmax_parameterfv_reply_t
 **/
struct xcb_glx_get_minmax_parameterfv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	xcb_glx_float32_t datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_minmax_parameteriv_cookie_t
 **/
struct xcb_glx_get_minmax_parameteriv_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_minmax_parameteriv. */
enum XCB_GLX_GET_MINMAX_PARAMETERIV = 159;

/**
 * @brief xcb_glx_get_minmax_parameteriv_request_t
 **/
struct xcb_glx_get_minmax_parameteriv_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_minmax_parameteriv_reply_t
 **/
struct xcb_glx_get_minmax_parameteriv_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_compressed_tex_image_arb_cookie_t
 **/
struct xcb_glx_get_compressed_tex_image_arb_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_compressed_tex_image_arb. */
enum XCB_GLX_GET_COMPRESSED_TEX_IMAGE_ARB = 160;

/**
 * @brief xcb_glx_get_compressed_tex_image_arb_request_t
 **/
struct xcb_glx_get_compressed_tex_image_arb_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	int level; /**<  */
}

/**
 * @brief xcb_glx_get_compressed_tex_image_arb_reply_t
 **/
struct xcb_glx_get_compressed_tex_image_arb_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[8] pad1; /**<  */
	int size; /**<  */
	ubyte[12] pad2; /**<  */
}

/** Opcode for xcb_glx_delete_queries_arb. */
enum XCB_GLX_DELETE_QUERIES_ARB = 161;

/**
 * @brief xcb_glx_delete_queries_arb_request_t
 **/
struct xcb_glx_delete_queries_arb_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int n; /**<  */
}

/**
 * @brief xcb_glx_gen_queries_arb_cookie_t
 **/
struct xcb_glx_gen_queries_arb_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_gen_queries_arb. */
enum XCB_GLX_GEN_QUERIES_ARB = 162;

/**
 * @brief xcb_glx_gen_queries_arb_request_t
 **/
struct xcb_glx_gen_queries_arb_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	int n; /**<  */
}

/**
 * @brief xcb_glx_gen_queries_arb_reply_t
 **/
struct xcb_glx_gen_queries_arb_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad1; /**<  */
}

/**
 * @brief xcb_glx_is_query_arb_cookie_t
 **/
struct xcb_glx_is_query_arb_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_is_query_arb. */
enum XCB_GLX_IS_QUERY_ARB = 163;

/**
 * @brief xcb_glx_is_query_arb_request_t
 **/
struct xcb_glx_is_query_arb_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint id; /**<  */
}

/**
 * @brief xcb_glx_is_query_arb_reply_t
 **/
struct xcb_glx_is_query_arb_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_glx_bool32_t ret_val; /**<  */
}

/**
 * @brief xcb_glx_get_queryiv_arb_cookie_t
 **/
struct xcb_glx_get_queryiv_arb_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_queryiv_arb. */
enum XCB_GLX_GET_QUERYIV_ARB = 164;

/**
 * @brief xcb_glx_get_queryiv_arb_request_t
 **/
struct xcb_glx_get_queryiv_arb_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint target; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_queryiv_arb_reply_t
 **/
struct xcb_glx_get_queryiv_arb_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_query_objectiv_arb_cookie_t
 **/
struct xcb_glx_get_query_objectiv_arb_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_query_objectiv_arb. */
enum XCB_GLX_GET_QUERY_OBJECTIV_ARB = 165;

/**
 * @brief xcb_glx_get_query_objectiv_arb_request_t
 **/
struct xcb_glx_get_query_objectiv_arb_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint id; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_query_objectiv_arb_reply_t
 **/
struct xcb_glx_get_query_objectiv_arb_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	int datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * @brief xcb_glx_get_query_objectuiv_arb_cookie_t
 **/
struct xcb_glx_get_query_objectuiv_arb_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_glx_get_query_objectuiv_arb. */
enum XCB_GLX_GET_QUERY_OBJECTUIV_ARB = 166;

/**
 * @brief xcb_glx_get_query_objectuiv_arb_request_t
 **/
struct xcb_glx_get_query_objectuiv_arb_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_glx_context_tag_t context_tag; /**<  */
	uint id; /**<  */
	uint pname; /**<  */
}

/**
 * @brief xcb_glx_get_query_objectuiv_arb_reply_t
 **/
struct xcb_glx_get_query_objectuiv_arb_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[4] pad1; /**<  */
	uint n; /**<  */
	uint datum; /**<  */
	ubyte[12] pad2; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_glx_pixmap_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_glx_pixmap_t)
 */
void xcb_glx_pixmap_next(xcb_glx_pixmap_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_glx_pixmap_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_glx_pixmap_end(xcb_glx_pixmap_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_glx_context_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_glx_context_t)
 */
void xcb_glx_context_next(xcb_glx_context_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_glx_context_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_glx_context_end(xcb_glx_context_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_glx_pbuffer_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_glx_pbuffer_t)
 */
void xcb_glx_pbuffer_next(xcb_glx_pbuffer_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_glx_pbuffer_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_glx_pbuffer_end(xcb_glx_pbuffer_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_glx_window_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_glx_window_t)
 */
void xcb_glx_window_next(xcb_glx_window_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_glx_window_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_glx_window_end(xcb_glx_window_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_glx_fbconfig_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_glx_fbconfig_t)
 */
void xcb_glx_fbconfig_next(xcb_glx_fbconfig_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_glx_fbconfig_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_glx_fbconfig_end(xcb_glx_fbconfig_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_glx_drawable_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_glx_drawable_t)
 */
void xcb_glx_drawable_next(xcb_glx_drawable_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_glx_drawable_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_glx_drawable_end(xcb_glx_drawable_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_glx_float32_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_glx_float32_t)
 */
void xcb_glx_float32_next(xcb_glx_float32_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_glx_float32_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_glx_float32_end(xcb_glx_float32_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_glx_float64_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_glx_float64_t)
 */
void xcb_glx_float64_next(xcb_glx_float64_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_glx_float64_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_glx_float64_end(xcb_glx_float64_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_glx_bool32_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_glx_bool32_t)
 */
void xcb_glx_bool32_next(xcb_glx_bool32_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_glx_bool32_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_glx_bool32_end(xcb_glx_bool32_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_glx_context_tag_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_glx_context_tag_t)
 */
void xcb_glx_context_tag_next(xcb_glx_context_tag_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_glx_context_tag_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_glx_context_tag_end(xcb_glx_context_tag_iterator_t i /**< */ );

int xcb_glx_render_sizeof(const void* _buffer /**< */ , uint data_len /**< */ );

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
xcb_void_cookie_t xcb_glx_render_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint data_len /**< */ , const ubyte* data /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_render(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint data_len /**< */ ,
	const ubyte* data /**< */ );

int xcb_glx_render_large_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_render_large_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , ushort request_num /**< */ ,
	ushort request_total /**< */ , uint data_len /**< */ , const ubyte* data /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_render_large(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , ushort request_num /**< */ ,
	ushort request_total /**< */ , uint data_len /**< */ , const ubyte* data /**< */ );

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
xcb_void_cookie_t xcb_glx_create_context_checked(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ , xcb_visualid_t visual /**< */ ,
	uint screen /**< */ , xcb_glx_context_t share_list /**< */ , ubyte is_direct /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_create_context(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ , xcb_visualid_t visual /**< */ , uint screen /**< */ ,
	xcb_glx_context_t share_list /**< */ , ubyte is_direct /**< */ );

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
xcb_void_cookie_t xcb_glx_destroy_context_checked(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_destroy_context(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_make_current_cookie_t xcb_glx_make_current(xcb_connection_t* c /**< */ , xcb_glx_drawable_t drawable /**< */ ,
	xcb_glx_context_t context /**< */ , xcb_glx_context_tag_t old_context_tag /**< */ );

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
xcb_glx_make_current_cookie_t xcb_glx_make_current_unchecked(xcb_connection_t* c /**< */ , xcb_glx_drawable_t drawable /**< */ ,
	xcb_glx_context_t context /**< */ , xcb_glx_context_tag_t old_context_tag /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_make_current_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_make_current_reply_t* xcb_glx_make_current_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_make_current_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_is_direct_cookie_t xcb_glx_is_direct(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ );

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
xcb_glx_is_direct_cookie_t xcb_glx_is_direct_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_is_direct_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_is_direct_reply_t* xcb_glx_is_direct_reply(xcb_connection_t* c /**< */ , xcb_glx_is_direct_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_query_version_cookie_t xcb_glx_query_version(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ );

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
xcb_glx_query_version_cookie_t xcb_glx_query_version_unchecked(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_query_version_reply_t* xcb_glx_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_glx_wait_gl_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_wait_gl(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

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
xcb_void_cookie_t xcb_glx_wait_x_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_wait_x(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

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
xcb_void_cookie_t xcb_glx_copy_context_checked(xcb_connection_t* c /**< */ , xcb_glx_context_t src /**< */ , xcb_glx_context_t dest /**< */ , uint mask /**< */ ,
	xcb_glx_context_tag_t src_context_tag /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_copy_context(xcb_connection_t* c /**< */ , xcb_glx_context_t src /**< */ , xcb_glx_context_t dest /**< */ , uint mask /**< */ ,
	xcb_glx_context_tag_t src_context_tag /**< */ );

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
xcb_void_cookie_t xcb_glx_swap_buffers_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	xcb_glx_drawable_t drawable /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_swap_buffers(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , xcb_glx_drawable_t drawable /**< */ );

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
xcb_void_cookie_t xcb_glx_use_x_font_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , xcb_font_t font /**< */ ,
	uint first /**< */ , uint count /**< */ , uint list_base /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_use_x_font(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , xcb_font_t font /**< */ ,
	uint first /**< */ , uint count /**< */ , uint list_base /**< */ );

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
xcb_void_cookie_t xcb_glx_create_glx_pixmap_checked(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_visualid_t visual /**< */ ,
	xcb_pixmap_t pixmap /**< */ , xcb_glx_pixmap_t glx_pixmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_create_glx_pixmap(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_visualid_t visual /**< */ , xcb_pixmap_t pixmap /**< */ ,
	xcb_glx_pixmap_t glx_pixmap /**< */ );

int xcb_glx_get_visual_configs_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_visual_configs_cookie_t xcb_glx_get_visual_configs(xcb_connection_t* c /**< */ , uint screen /**< */ );

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
xcb_glx_get_visual_configs_cookie_t xcb_glx_get_visual_configs_unchecked(xcb_connection_t* c /**< */ , uint screen /**< */ );

uint* xcb_glx_get_visual_configs_property_list(const xcb_glx_get_visual_configs_reply_t* R /**< */ );

int xcb_glx_get_visual_configs_property_list_length(const xcb_glx_get_visual_configs_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_visual_configs_property_list_end(const xcb_glx_get_visual_configs_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_visual_configs_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_visual_configs_reply_t* xcb_glx_get_visual_configs_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_visual_configs_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_glx_destroy_glx_pixmap_checked(xcb_connection_t* c /**< */ , xcb_glx_pixmap_t glx_pixmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_destroy_glx_pixmap(xcb_connection_t* c /**< */ , xcb_glx_pixmap_t glx_pixmap /**< */ );

int xcb_glx_vendor_private_sizeof(const void* _buffer /**< */ , uint data_len /**< */ );

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
xcb_void_cookie_t xcb_glx_vendor_private_checked(xcb_connection_t* c /**< */ , uint vendor_code /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint data_len /**< */ , const ubyte* data /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_vendor_private(xcb_connection_t* c /**< */ , uint vendor_code /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint data_len /**< */ , const ubyte* data /**< */ );

int xcb_glx_vendor_private_with_reply_sizeof(const void* _buffer /**< */ , uint data_len /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_vendor_private_with_reply_cookie_t xcb_glx_vendor_private_with_reply(xcb_connection_t* c /**< */ , uint vendor_code /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint data_len /**< */ , const ubyte* data /**< */ );

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
xcb_glx_vendor_private_with_reply_cookie_t xcb_glx_vendor_private_with_reply_unchecked(xcb_connection_t* c /**< */ ,
	uint vendor_code /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint data_len /**< */ , const ubyte* data /**< */ );

ubyte* xcb_glx_vendor_private_with_reply_data_2(const xcb_glx_vendor_private_with_reply_reply_t* R /**< */ );

int xcb_glx_vendor_private_with_reply_data_2_length(const xcb_glx_vendor_private_with_reply_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_vendor_private_with_reply_data_2_end(const xcb_glx_vendor_private_with_reply_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_vendor_private_with_reply_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_vendor_private_with_reply_reply_t* xcb_glx_vendor_private_with_reply_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_vendor_private_with_reply_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_query_extensions_string_cookie_t xcb_glx_query_extensions_string(xcb_connection_t* c /**< */ , uint screen /**< */ );

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
xcb_glx_query_extensions_string_cookie_t xcb_glx_query_extensions_string_unchecked(xcb_connection_t* c /**< */ , uint screen /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_query_extensions_string_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_query_extensions_string_reply_t* xcb_glx_query_extensions_string_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_query_extensions_string_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_query_server_string_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_query_server_string_cookie_t xcb_glx_query_server_string(xcb_connection_t* c /**< */ , uint screen /**< */ , uint name /**< */ );

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
xcb_glx_query_server_string_cookie_t xcb_glx_query_server_string_unchecked(xcb_connection_t* c /**< */ , uint screen /**< */ ,
	uint name /**< */ );

char* xcb_glx_query_server_string_string(const xcb_glx_query_server_string_reply_t* R /**< */ );

int xcb_glx_query_server_string_string_length(const xcb_glx_query_server_string_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_query_server_string_string_end(const xcb_glx_query_server_string_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_query_server_string_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_query_server_string_reply_t* xcb_glx_query_server_string_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_query_server_string_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_client_info_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_client_info_checked(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ ,
	uint str_len /**< */ , const char* string /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_client_info(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ ,
	uint str_len /**< */ , const char* string /**< */ );

int xcb_glx_get_fb_configs_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_fb_configs_cookie_t xcb_glx_get_fb_configs(xcb_connection_t* c /**< */ , uint screen /**< */ );

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
xcb_glx_get_fb_configs_cookie_t xcb_glx_get_fb_configs_unchecked(xcb_connection_t* c /**< */ , uint screen /**< */ );

uint* xcb_glx_get_fb_configs_property_list(const xcb_glx_get_fb_configs_reply_t* R /**< */ );

int xcb_glx_get_fb_configs_property_list_length(const xcb_glx_get_fb_configs_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_fb_configs_property_list_end(const xcb_glx_get_fb_configs_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_fb_configs_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_fb_configs_reply_t* xcb_glx_get_fb_configs_reply(xcb_connection_t* c /**< */ , xcb_glx_get_fb_configs_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_create_pixmap_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_create_pixmap_checked(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_glx_fbconfig_t fbconfig /**< */ ,
	xcb_pixmap_t pixmap /**< */ , xcb_glx_pixmap_t glx_pixmap /**< */ , uint num_attribs /**< */ , const uint* attribs /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_create_pixmap(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_glx_fbconfig_t fbconfig /**< */ , xcb_pixmap_t pixmap /**< */ ,
	xcb_glx_pixmap_t glx_pixmap /**< */ , uint num_attribs /**< */ , const uint* attribs /**< */ );

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
xcb_void_cookie_t xcb_glx_destroy_pixmap_checked(xcb_connection_t* c /**< */ , xcb_glx_pixmap_t glx_pixmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_destroy_pixmap(xcb_connection_t* c /**< */ , xcb_glx_pixmap_t glx_pixmap /**< */ );

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
xcb_void_cookie_t xcb_glx_create_new_context_checked(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ ,
	xcb_glx_fbconfig_t fbconfig /**< */ , uint screen /**< */ , uint render_type /**< */ , xcb_glx_context_t share_list /**< */ ,
	ubyte is_direct /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_create_new_context(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ , xcb_glx_fbconfig_t fbconfig /**< */ ,
	uint screen /**< */ , uint render_type /**< */ , xcb_glx_context_t share_list /**< */ , ubyte is_direct /**< */ );

int xcb_glx_query_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_query_context_cookie_t xcb_glx_query_context(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ );

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
xcb_glx_query_context_cookie_t xcb_glx_query_context_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ );

uint* xcb_glx_query_context_attribs(const xcb_glx_query_context_reply_t* R /**< */ );

int xcb_glx_query_context_attribs_length(const xcb_glx_query_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_query_context_attribs_end(const xcb_glx_query_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_query_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_query_context_reply_t* xcb_glx_query_context_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_query_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_make_context_current_cookie_t xcb_glx_make_context_current(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t old_context_tag /**< */ , xcb_glx_drawable_t drawable /**< */ ,
	xcb_glx_drawable_t read_drawable /**< */ , xcb_glx_context_t context /**< */ );

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
xcb_glx_make_context_current_cookie_t xcb_glx_make_context_current_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t old_context_tag /**< */ , xcb_glx_drawable_t drawable /**< */ ,
	xcb_glx_drawable_t read_drawable /**< */ , xcb_glx_context_t context /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_make_context_current_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_make_context_current_reply_t* xcb_glx_make_context_current_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_make_context_current_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_create_pbuffer_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_create_pbuffer_checked(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_glx_fbconfig_t fbconfig /**< */ ,
	xcb_glx_pbuffer_t pbuffer /**< */ , uint num_attribs /**< */ , const uint* attribs /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_create_pbuffer(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_glx_fbconfig_t fbconfig /**< */ ,
	xcb_glx_pbuffer_t pbuffer /**< */ , uint num_attribs /**< */ , const uint* attribs /**< */ );

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
xcb_void_cookie_t xcb_glx_destroy_pbuffer_checked(xcb_connection_t* c /**< */ , xcb_glx_pbuffer_t pbuffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_destroy_pbuffer(xcb_connection_t* c /**< */ , xcb_glx_pbuffer_t pbuffer /**< */ );

int xcb_glx_get_drawable_attributes_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_drawable_attributes_cookie_t xcb_glx_get_drawable_attributes(xcb_connection_t* c /**< */ , xcb_glx_drawable_t drawable /**< */ );

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
xcb_glx_get_drawable_attributes_cookie_t xcb_glx_get_drawable_attributes_unchecked(xcb_connection_t* c /**< */ , xcb_glx_drawable_t drawable /**< */ );

uint* xcb_glx_get_drawable_attributes_attribs(const xcb_glx_get_drawable_attributes_reply_t* R /**< */ );

int xcb_glx_get_drawable_attributes_attribs_length(const xcb_glx_get_drawable_attributes_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_drawable_attributes_attribs_end(const xcb_glx_get_drawable_attributes_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_drawable_attributes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_drawable_attributes_reply_t* xcb_glx_get_drawable_attributes_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_drawable_attributes_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_change_drawable_attributes_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_change_drawable_attributes_checked(xcb_connection_t* c /**< */ , xcb_glx_drawable_t drawable /**< */ ,
	uint num_attribs /**< */ , const uint* attribs /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_change_drawable_attributes(xcb_connection_t* c /**< */ , xcb_glx_drawable_t drawable /**< */ ,
	uint num_attribs /**< */ , const uint* attribs /**< */ );

int xcb_glx_create_window_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_create_window_checked(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_glx_fbconfig_t fbconfig /**< */ ,
	xcb_window_t window /**< */ , xcb_glx_window_t glx_window /**< */ , uint num_attribs /**< */ , const uint* attribs /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_create_window(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_glx_fbconfig_t fbconfig /**< */ , xcb_window_t window /**< */ ,
	xcb_glx_window_t glx_window /**< */ , uint num_attribs /**< */ , const uint* attribs /**< */ );

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
xcb_void_cookie_t xcb_glx_delete_window_checked(xcb_connection_t* c /**< */ , xcb_glx_window_t glxwindow /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_delete_window(xcb_connection_t* c /**< */ , xcb_glx_window_t glxwindow /**< */ );

int xcb_glx_set_client_info_arb_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_set_client_info_arb_checked(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ ,
	uint num_versions /**< */ , uint gl_str_len /**< */ , uint glx_str_len /**< */ , const uint* gl_versions /**< */ , const char* gl_extension_string /**< */ ,
	const char* glx_extension_string /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_set_client_info_arb(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ , uint num_versions /**< */ ,
	uint gl_str_len /**< */ , uint glx_str_len /**< */ , const uint* gl_versions /**< */ , const char* gl_extension_string /**< */ ,
	const char* glx_extension_string /**< */ );

int xcb_glx_create_context_attribs_arb_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_create_context_attribs_arb_checked(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ ,
	xcb_glx_fbconfig_t fbconfig /**< */ , uint screen /**< */ , xcb_glx_context_t share_list /**< */ , ubyte is_direct /**< */ ,
	uint num_attribs /**< */ , const uint* attribs /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_create_context_attribs_arb(xcb_connection_t* c /**< */ , xcb_glx_context_t context /**< */ ,
	xcb_glx_fbconfig_t fbconfig /**< */ , uint screen /**< */ , xcb_glx_context_t share_list /**< */ , ubyte is_direct /**< */ ,
	uint num_attribs /**< */ , const uint* attribs /**< */ );

int xcb_glx_set_client_info_2arb_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_set_client_info_2arb_checked(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ ,
	uint num_versions /**< */ , uint gl_str_len /**< */ , uint glx_str_len /**< */ , const uint* gl_versions /**< */ , const char* gl_extension_string /**< */ ,
	const char* glx_extension_string /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_set_client_info_2arb(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ , uint num_versions /**< */ ,
	uint gl_str_len /**< */ , uint glx_str_len /**< */ , const uint* gl_versions /**< */ , const char* gl_extension_string /**< */ ,
	const char* glx_extension_string /**< */ );

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
xcb_void_cookie_t xcb_glx_new_list_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint list /**< */ ,
	uint mode /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_new_list(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint list /**< */ ,
	uint mode /**< */ );

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
xcb_void_cookie_t xcb_glx_end_list_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_end_list(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

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
xcb_void_cookie_t xcb_glx_delete_lists_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint list /**< */ ,
	int range /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_delete_lists(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint list /**< */ ,
	int range /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_gen_lists_cookie_t xcb_glx_gen_lists(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , int range /**< */ );

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
xcb_glx_gen_lists_cookie_t xcb_glx_gen_lists_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int range /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_gen_lists_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_gen_lists_reply_t* xcb_glx_gen_lists_reply(xcb_connection_t* c /**< */ , xcb_glx_gen_lists_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_glx_feedback_buffer_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int size /**< */ , int type /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_feedback_buffer(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , int size /**< */ ,
	int type /**< */ );

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
xcb_void_cookie_t xcb_glx_select_buffer_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , int size /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_select_buffer(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , int size /**< */ );

int xcb_glx_render_mode_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_render_mode_cookie_t xcb_glx_render_mode(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint mode /**< */ );

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
xcb_glx_render_mode_cookie_t xcb_glx_render_mode_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint mode /**< */ );

uint* xcb_glx_render_mode_data(const xcb_glx_render_mode_reply_t* R /**< */ );

int xcb_glx_render_mode_data_length(const xcb_glx_render_mode_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_render_mode_data_end(const xcb_glx_render_mode_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_render_mode_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_render_mode_reply_t* xcb_glx_render_mode_reply(xcb_connection_t* c /**< */ , xcb_glx_render_mode_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_finish_cookie_t xcb_glx_finish(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

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
xcb_glx_finish_cookie_t xcb_glx_finish_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_finish_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_finish_reply_t* xcb_glx_finish_reply(xcb_connection_t* c /**< */ , xcb_glx_finish_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_glx_pixel_storef_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint pname /**< */ ,
	xcb_glx_float32_t datum /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_pixel_storef(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint pname /**< */ , xcb_glx_float32_t datum /**< */ );

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
xcb_void_cookie_t xcb_glx_pixel_storei_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint pname /**< */ ,
	int datum /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_pixel_storei(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint pname /**< */ ,
	int datum /**< */ );

int xcb_glx_read_pixels_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_read_pixels_cookie_t xcb_glx_read_pixels(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , int x /**< */ , int y /**< */ ,
	int width /**< */ , int height /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ , ubyte lsb_first /**< */ );

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
xcb_glx_read_pixels_cookie_t xcb_glx_read_pixels_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , int x /**< */ ,
	int y /**< */ , int width /**< */ , int height /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ ,
	ubyte lsb_first /**< */ );

ubyte* xcb_glx_read_pixels_data(const xcb_glx_read_pixels_reply_t* R /**< */ );

int xcb_glx_read_pixels_data_length(const xcb_glx_read_pixels_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_read_pixels_data_end(const xcb_glx_read_pixels_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_read_pixels_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_read_pixels_reply_t* xcb_glx_read_pixels_reply(xcb_connection_t* c /**< */ , xcb_glx_read_pixels_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_booleanv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_booleanv_cookie_t xcb_glx_get_booleanv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int pname /**< */ );

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
xcb_glx_get_booleanv_cookie_t xcb_glx_get_booleanv_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int pname /**< */ );

ubyte* xcb_glx_get_booleanv_data(const xcb_glx_get_booleanv_reply_t* R /**< */ );

int xcb_glx_get_booleanv_data_length(const xcb_glx_get_booleanv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_booleanv_data_end(const xcb_glx_get_booleanv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_booleanv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_booleanv_reply_t* xcb_glx_get_booleanv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_booleanv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_clip_plane_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_clip_plane_cookie_t xcb_glx_get_clip_plane(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int plane /**< */ );

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
xcb_glx_get_clip_plane_cookie_t xcb_glx_get_clip_plane_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int plane /**< */ );

xcb_glx_float64_t* xcb_glx_get_clip_plane_data(const xcb_glx_get_clip_plane_reply_t* R /**< */ );

int xcb_glx_get_clip_plane_data_length(const xcb_glx_get_clip_plane_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_clip_plane_data_end(const xcb_glx_get_clip_plane_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_clip_plane_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_clip_plane_reply_t* xcb_glx_get_clip_plane_reply(xcb_connection_t* c /**< */ , xcb_glx_get_clip_plane_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_doublev_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_doublev_cookie_t xcb_glx_get_doublev(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint pname /**< */ );

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
xcb_glx_get_doublev_cookie_t xcb_glx_get_doublev_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint pname /**< */ );

xcb_glx_float64_t* xcb_glx_get_doublev_data(const xcb_glx_get_doublev_reply_t* R /**< */ );

int xcb_glx_get_doublev_data_length(const xcb_glx_get_doublev_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_doublev_data_end(const xcb_glx_get_doublev_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_doublev_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_doublev_reply_t* xcb_glx_get_doublev_reply(xcb_connection_t* c /**< */ , xcb_glx_get_doublev_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_error_cookie_t xcb_glx_get_error(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

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
xcb_glx_get_error_cookie_t xcb_glx_get_error_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_error_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_error_reply_t* xcb_glx_get_error_reply(xcb_connection_t* c /**< */ , xcb_glx_get_error_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_floatv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_floatv_cookie_t xcb_glx_get_floatv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint pname /**< */ );

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
xcb_glx_get_floatv_cookie_t xcb_glx_get_floatv_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_floatv_data(const xcb_glx_get_floatv_reply_t* R /**< */ );

int xcb_glx_get_floatv_data_length(const xcb_glx_get_floatv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_floatv_data_end(const xcb_glx_get_floatv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_floatv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_floatv_reply_t* xcb_glx_get_floatv_reply(xcb_connection_t* c /**< */ , xcb_glx_get_floatv_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_integerv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_integerv_cookie_t xcb_glx_get_integerv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint pname /**< */ );

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
xcb_glx_get_integerv_cookie_t xcb_glx_get_integerv_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint pname /**< */ );

int* xcb_glx_get_integerv_data(const xcb_glx_get_integerv_reply_t* R /**< */ );

int xcb_glx_get_integerv_data_length(const xcb_glx_get_integerv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_integerv_data_end(const xcb_glx_get_integerv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_integerv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_integerv_reply_t* xcb_glx_get_integerv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_integerv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_lightfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_lightfv_cookie_t xcb_glx_get_lightfv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint light /**< */ , uint pname /**< */ );

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
xcb_glx_get_lightfv_cookie_t xcb_glx_get_lightfv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint light /**< */ , uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_lightfv_data(const xcb_glx_get_lightfv_reply_t* R /**< */ );

int xcb_glx_get_lightfv_data_length(const xcb_glx_get_lightfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_lightfv_data_end(const xcb_glx_get_lightfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_lightfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_lightfv_reply_t* xcb_glx_get_lightfv_reply(xcb_connection_t* c /**< */ , xcb_glx_get_lightfv_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_lightiv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_lightiv_cookie_t xcb_glx_get_lightiv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint light /**< */ , uint pname /**< */ );

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
xcb_glx_get_lightiv_cookie_t xcb_glx_get_lightiv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint light /**< */ , uint pname /**< */ );

int* xcb_glx_get_lightiv_data(const xcb_glx_get_lightiv_reply_t* R /**< */ );

int xcb_glx_get_lightiv_data_length(const xcb_glx_get_lightiv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_lightiv_data_end(const xcb_glx_get_lightiv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_lightiv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_lightiv_reply_t* xcb_glx_get_lightiv_reply(xcb_connection_t* c /**< */ , xcb_glx_get_lightiv_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_mapdv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_mapdv_cookie_t xcb_glx_get_mapdv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ ,
	uint query /**< */ );

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
xcb_glx_get_mapdv_cookie_t xcb_glx_get_mapdv_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint query /**< */ );

xcb_glx_float64_t* xcb_glx_get_mapdv_data(const xcb_glx_get_mapdv_reply_t* R /**< */ );

int xcb_glx_get_mapdv_data_length(const xcb_glx_get_mapdv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_mapdv_data_end(const xcb_glx_get_mapdv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_mapdv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_mapdv_reply_t* xcb_glx_get_mapdv_reply(xcb_connection_t* c /**< */ , xcb_glx_get_mapdv_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_mapfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_mapfv_cookie_t xcb_glx_get_mapfv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ ,
	uint query /**< */ );

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
xcb_glx_get_mapfv_cookie_t xcb_glx_get_mapfv_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint query /**< */ );

xcb_glx_float32_t* xcb_glx_get_mapfv_data(const xcb_glx_get_mapfv_reply_t* R /**< */ );

int xcb_glx_get_mapfv_data_length(const xcb_glx_get_mapfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_mapfv_data_end(const xcb_glx_get_mapfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_mapfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_mapfv_reply_t* xcb_glx_get_mapfv_reply(xcb_connection_t* c /**< */ , xcb_glx_get_mapfv_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_mapiv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_mapiv_cookie_t xcb_glx_get_mapiv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ ,
	uint query /**< */ );

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
xcb_glx_get_mapiv_cookie_t xcb_glx_get_mapiv_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint query /**< */ );

int* xcb_glx_get_mapiv_data(const xcb_glx_get_mapiv_reply_t* R /**< */ );

int xcb_glx_get_mapiv_data_length(const xcb_glx_get_mapiv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_mapiv_data_end(const xcb_glx_get_mapiv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_mapiv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_mapiv_reply_t* xcb_glx_get_mapiv_reply(xcb_connection_t* c /**< */ , xcb_glx_get_mapiv_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_materialfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_materialfv_cookie_t xcb_glx_get_materialfv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint face /**< */ , uint pname /**< */ );

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
xcb_glx_get_materialfv_cookie_t xcb_glx_get_materialfv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint face /**< */ , uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_materialfv_data(const xcb_glx_get_materialfv_reply_t* R /**< */ );

int xcb_glx_get_materialfv_data_length(const xcb_glx_get_materialfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_materialfv_data_end(const xcb_glx_get_materialfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_materialfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_materialfv_reply_t* xcb_glx_get_materialfv_reply(xcb_connection_t* c /**< */ , xcb_glx_get_materialfv_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_materialiv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_materialiv_cookie_t xcb_glx_get_materialiv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint face /**< */ , uint pname /**< */ );

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
xcb_glx_get_materialiv_cookie_t xcb_glx_get_materialiv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint face /**< */ , uint pname /**< */ );

int* xcb_glx_get_materialiv_data(const xcb_glx_get_materialiv_reply_t* R /**< */ );

int xcb_glx_get_materialiv_data_length(const xcb_glx_get_materialiv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_materialiv_data_end(const xcb_glx_get_materialiv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_materialiv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_materialiv_reply_t* xcb_glx_get_materialiv_reply(xcb_connection_t* c /**< */ , xcb_glx_get_materialiv_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_pixel_mapfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_pixel_mapfv_cookie_t xcb_glx_get_pixel_mapfv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint map /**< */ );

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
xcb_glx_get_pixel_mapfv_cookie_t xcb_glx_get_pixel_mapfv_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint map /**< */ );

xcb_glx_float32_t* xcb_glx_get_pixel_mapfv_data(const xcb_glx_get_pixel_mapfv_reply_t* R /**< */ );

int xcb_glx_get_pixel_mapfv_data_length(const xcb_glx_get_pixel_mapfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_pixel_mapfv_data_end(const xcb_glx_get_pixel_mapfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_pixel_mapfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_pixel_mapfv_reply_t* xcb_glx_get_pixel_mapfv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_pixel_mapfv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_pixel_mapuiv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_pixel_mapuiv_cookie_t xcb_glx_get_pixel_mapuiv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint map /**< */ );

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
xcb_glx_get_pixel_mapuiv_cookie_t xcb_glx_get_pixel_mapuiv_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint map /**< */ );

uint* xcb_glx_get_pixel_mapuiv_data(const xcb_glx_get_pixel_mapuiv_reply_t* R /**< */ );

int xcb_glx_get_pixel_mapuiv_data_length(const xcb_glx_get_pixel_mapuiv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_pixel_mapuiv_data_end(const xcb_glx_get_pixel_mapuiv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_pixel_mapuiv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_pixel_mapuiv_reply_t* xcb_glx_get_pixel_mapuiv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_pixel_mapuiv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_pixel_mapusv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_pixel_mapusv_cookie_t xcb_glx_get_pixel_mapusv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint map /**< */ );

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
xcb_glx_get_pixel_mapusv_cookie_t xcb_glx_get_pixel_mapusv_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint map /**< */ );

ushort* xcb_glx_get_pixel_mapusv_data(const xcb_glx_get_pixel_mapusv_reply_t* R /**< */ );

int xcb_glx_get_pixel_mapusv_data_length(const xcb_glx_get_pixel_mapusv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_pixel_mapusv_data_end(const xcb_glx_get_pixel_mapusv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_pixel_mapusv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_pixel_mapusv_reply_t* xcb_glx_get_pixel_mapusv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_pixel_mapusv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_polygon_stipple_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_polygon_stipple_cookie_t xcb_glx_get_polygon_stipple(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , ubyte lsb_first /**< */ );

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
xcb_glx_get_polygon_stipple_cookie_t xcb_glx_get_polygon_stipple_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , ubyte lsb_first /**< */ );

ubyte* xcb_glx_get_polygon_stipple_data(const xcb_glx_get_polygon_stipple_reply_t* R /**< */ );

int xcb_glx_get_polygon_stipple_data_length(const xcb_glx_get_polygon_stipple_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_polygon_stipple_data_end(const xcb_glx_get_polygon_stipple_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_polygon_stipple_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_polygon_stipple_reply_t* xcb_glx_get_polygon_stipple_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_polygon_stipple_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_string_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_string_cookie_t xcb_glx_get_string(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint name /**< */ );

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
xcb_glx_get_string_cookie_t xcb_glx_get_string_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint name /**< */ );

char* xcb_glx_get_string_string(const xcb_glx_get_string_reply_t* R /**< */ );

int xcb_glx_get_string_string_length(const xcb_glx_get_string_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_string_string_end(const xcb_glx_get_string_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_string_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_string_reply_t* xcb_glx_get_string_reply(xcb_connection_t* c /**< */ , xcb_glx_get_string_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_tex_envfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_tex_envfv_cookie_t xcb_glx_get_tex_envfv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_tex_envfv_cookie_t xcb_glx_get_tex_envfv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_tex_envfv_data(const xcb_glx_get_tex_envfv_reply_t* R /**< */ );

int xcb_glx_get_tex_envfv_data_length(const xcb_glx_get_tex_envfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_tex_envfv_data_end(const xcb_glx_get_tex_envfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_tex_envfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_tex_envfv_reply_t* xcb_glx_get_tex_envfv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_tex_envfv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_tex_enviv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_tex_enviv_cookie_t xcb_glx_get_tex_enviv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_tex_enviv_cookie_t xcb_glx_get_tex_enviv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

int* xcb_glx_get_tex_enviv_data(const xcb_glx_get_tex_enviv_reply_t* R /**< */ );

int xcb_glx_get_tex_enviv_data_length(const xcb_glx_get_tex_enviv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_tex_enviv_data_end(const xcb_glx_get_tex_enviv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_tex_enviv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_tex_enviv_reply_t* xcb_glx_get_tex_enviv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_tex_enviv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_tex_gendv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_tex_gendv_cookie_t xcb_glx_get_tex_gendv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint coord /**< */ , uint pname /**< */ );

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
xcb_glx_get_tex_gendv_cookie_t xcb_glx_get_tex_gendv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint coord /**< */ , uint pname /**< */ );

xcb_glx_float64_t* xcb_glx_get_tex_gendv_data(const xcb_glx_get_tex_gendv_reply_t* R /**< */ );

int xcb_glx_get_tex_gendv_data_length(const xcb_glx_get_tex_gendv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_tex_gendv_data_end(const xcb_glx_get_tex_gendv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_tex_gendv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_tex_gendv_reply_t* xcb_glx_get_tex_gendv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_tex_gendv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_tex_genfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_tex_genfv_cookie_t xcb_glx_get_tex_genfv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint coord /**< */ , uint pname /**< */ );

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
xcb_glx_get_tex_genfv_cookie_t xcb_glx_get_tex_genfv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint coord /**< */ , uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_tex_genfv_data(const xcb_glx_get_tex_genfv_reply_t* R /**< */ );

int xcb_glx_get_tex_genfv_data_length(const xcb_glx_get_tex_genfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_tex_genfv_data_end(const xcb_glx_get_tex_genfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_tex_genfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_tex_genfv_reply_t* xcb_glx_get_tex_genfv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_tex_genfv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_tex_geniv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_tex_geniv_cookie_t xcb_glx_get_tex_geniv(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint coord /**< */ , uint pname /**< */ );

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
xcb_glx_get_tex_geniv_cookie_t xcb_glx_get_tex_geniv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint coord /**< */ , uint pname /**< */ );

int* xcb_glx_get_tex_geniv_data(const xcb_glx_get_tex_geniv_reply_t* R /**< */ );

int xcb_glx_get_tex_geniv_data_length(const xcb_glx_get_tex_geniv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_tex_geniv_data_end(const xcb_glx_get_tex_geniv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_tex_geniv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_tex_geniv_reply_t* xcb_glx_get_tex_geniv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_tex_geniv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_tex_image_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_tex_image_cookie_t xcb_glx_get_tex_image(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ ,
	int level /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ );

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
xcb_glx_get_tex_image_cookie_t xcb_glx_get_tex_image_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , int level /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ );

ubyte* xcb_glx_get_tex_image_data(const xcb_glx_get_tex_image_reply_t* R /**< */ );

int xcb_glx_get_tex_image_data_length(const xcb_glx_get_tex_image_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_tex_image_data_end(const xcb_glx_get_tex_image_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_tex_image_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_tex_image_reply_t* xcb_glx_get_tex_image_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_tex_image_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_tex_parameterfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_tex_parameterfv_cookie_t xcb_glx_get_tex_parameterfv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_tex_parameterfv_cookie_t xcb_glx_get_tex_parameterfv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_tex_parameterfv_data(const xcb_glx_get_tex_parameterfv_reply_t* R /**< */ );

int xcb_glx_get_tex_parameterfv_data_length(const xcb_glx_get_tex_parameterfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_tex_parameterfv_data_end(const xcb_glx_get_tex_parameterfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_tex_parameterfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_tex_parameterfv_reply_t* xcb_glx_get_tex_parameterfv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_tex_parameterfv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_tex_parameteriv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_tex_parameteriv_cookie_t xcb_glx_get_tex_parameteriv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_tex_parameteriv_cookie_t xcb_glx_get_tex_parameteriv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

int* xcb_glx_get_tex_parameteriv_data(const xcb_glx_get_tex_parameteriv_reply_t* R /**< */ );

int xcb_glx_get_tex_parameteriv_data_length(const xcb_glx_get_tex_parameteriv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_tex_parameteriv_data_end(const xcb_glx_get_tex_parameteriv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_tex_parameteriv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_tex_parameteriv_reply_t* xcb_glx_get_tex_parameteriv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_tex_parameteriv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_tex_level_parameterfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_tex_level_parameterfv_cookie_t xcb_glx_get_tex_level_parameterfv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , int level /**< */ , uint pname /**< */ );

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
xcb_glx_get_tex_level_parameterfv_cookie_t xcb_glx_get_tex_level_parameterfv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , int level /**< */ , uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_tex_level_parameterfv_data(const xcb_glx_get_tex_level_parameterfv_reply_t* R /**< */ );

int xcb_glx_get_tex_level_parameterfv_data_length(const xcb_glx_get_tex_level_parameterfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_tex_level_parameterfv_data_end(const xcb_glx_get_tex_level_parameterfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_tex_level_parameterfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_tex_level_parameterfv_reply_t* xcb_glx_get_tex_level_parameterfv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_tex_level_parameterfv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_tex_level_parameteriv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_tex_level_parameteriv_cookie_t xcb_glx_get_tex_level_parameteriv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , int level /**< */ , uint pname /**< */ );

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
xcb_glx_get_tex_level_parameteriv_cookie_t xcb_glx_get_tex_level_parameteriv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , int level /**< */ , uint pname /**< */ );

int* xcb_glx_get_tex_level_parameteriv_data(const xcb_glx_get_tex_level_parameteriv_reply_t* R /**< */ );

int xcb_glx_get_tex_level_parameteriv_data_length(const xcb_glx_get_tex_level_parameteriv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_tex_level_parameteriv_data_end(const xcb_glx_get_tex_level_parameteriv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_tex_level_parameteriv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_tex_level_parameteriv_reply_t* xcb_glx_get_tex_level_parameteriv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_tex_level_parameteriv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_is_list_cookie_t xcb_glx_is_list(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint list /**< */ );

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
xcb_glx_is_list_cookie_t xcb_glx_is_list_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint list /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_is_list_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_is_list_reply_t* xcb_glx_is_list_reply(xcb_connection_t* c /**< */ , xcb_glx_is_list_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_glx_flush_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_flush(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ );

int xcb_glx_are_textures_resident_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_are_textures_resident_cookie_t xcb_glx_are_textures_resident(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , int n /**< */ , const uint* textures /**< */ );

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
xcb_glx_are_textures_resident_cookie_t xcb_glx_are_textures_resident_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , int n /**< */ , const uint* textures /**< */ );

ubyte* xcb_glx_are_textures_resident_data(const xcb_glx_are_textures_resident_reply_t* R /**< */ );

int xcb_glx_are_textures_resident_data_length(const xcb_glx_are_textures_resident_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_are_textures_resident_data_end(const xcb_glx_are_textures_resident_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_are_textures_resident_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_are_textures_resident_reply_t* xcb_glx_are_textures_resident_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_are_textures_resident_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_delete_textures_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_delete_textures_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int n /**< */ , const uint* textures /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_delete_textures(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , int n /**< */ ,
	const uint* textures /**< */ );

int xcb_glx_gen_textures_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_gen_textures_cookie_t xcb_glx_gen_textures(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int n /**< */ );

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
xcb_glx_gen_textures_cookie_t xcb_glx_gen_textures_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int n /**< */ );

uint* xcb_glx_gen_textures_data(const xcb_glx_gen_textures_reply_t* R /**< */ );

int xcb_glx_gen_textures_data_length(const xcb_glx_gen_textures_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_gen_textures_data_end(const xcb_glx_gen_textures_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_gen_textures_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_gen_textures_reply_t* xcb_glx_gen_textures_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_gen_textures_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_is_texture_cookie_t xcb_glx_is_texture(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint texture /**< */ );

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
xcb_glx_is_texture_cookie_t xcb_glx_is_texture_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint texture /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_is_texture_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_is_texture_reply_t* xcb_glx_is_texture_reply(xcb_connection_t* c /**< */ , xcb_glx_is_texture_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_color_table_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_color_table_cookie_t xcb_glx_get_color_table(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ );

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
xcb_glx_get_color_table_cookie_t xcb_glx_get_color_table_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ );

ubyte* xcb_glx_get_color_table_data(const xcb_glx_get_color_table_reply_t* R /**< */ );

int xcb_glx_get_color_table_data_length(const xcb_glx_get_color_table_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_color_table_data_end(const xcb_glx_get_color_table_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_color_table_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_color_table_reply_t* xcb_glx_get_color_table_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_color_table_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_color_table_parameterfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_color_table_parameterfv_cookie_t xcb_glx_get_color_table_parameterfv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_color_table_parameterfv_cookie_t xcb_glx_get_color_table_parameterfv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_color_table_parameterfv_data(const xcb_glx_get_color_table_parameterfv_reply_t* R /**< */ );

int xcb_glx_get_color_table_parameterfv_data_length(const xcb_glx_get_color_table_parameterfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_color_table_parameterfv_data_end(const xcb_glx_get_color_table_parameterfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_color_table_parameterfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_color_table_parameterfv_reply_t* xcb_glx_get_color_table_parameterfv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_color_table_parameterfv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_color_table_parameteriv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_color_table_parameteriv_cookie_t xcb_glx_get_color_table_parameteriv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_color_table_parameteriv_cookie_t xcb_glx_get_color_table_parameteriv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

int* xcb_glx_get_color_table_parameteriv_data(const xcb_glx_get_color_table_parameteriv_reply_t* R /**< */ );

int xcb_glx_get_color_table_parameteriv_data_length(const xcb_glx_get_color_table_parameteriv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_color_table_parameteriv_data_end(const xcb_glx_get_color_table_parameteriv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_color_table_parameteriv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_color_table_parameteriv_reply_t* xcb_glx_get_color_table_parameteriv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_color_table_parameteriv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_convolution_filter_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_convolution_filter_cookie_t xcb_glx_get_convolution_filter(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ );

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
xcb_glx_get_convolution_filter_cookie_t xcb_glx_get_convolution_filter_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ );

ubyte* xcb_glx_get_convolution_filter_data(const xcb_glx_get_convolution_filter_reply_t* R /**< */ );

int xcb_glx_get_convolution_filter_data_length(const xcb_glx_get_convolution_filter_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_convolution_filter_data_end(const xcb_glx_get_convolution_filter_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_convolution_filter_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_convolution_filter_reply_t* xcb_glx_get_convolution_filter_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_convolution_filter_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_convolution_parameterfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_convolution_parameterfv_cookie_t xcb_glx_get_convolution_parameterfv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_convolution_parameterfv_cookie_t xcb_glx_get_convolution_parameterfv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_convolution_parameterfv_data(const xcb_glx_get_convolution_parameterfv_reply_t* R /**< */ );

int xcb_glx_get_convolution_parameterfv_data_length(const xcb_glx_get_convolution_parameterfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_convolution_parameterfv_data_end(const xcb_glx_get_convolution_parameterfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_convolution_parameterfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_convolution_parameterfv_reply_t* xcb_glx_get_convolution_parameterfv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_convolution_parameterfv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_convolution_parameteriv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_convolution_parameteriv_cookie_t xcb_glx_get_convolution_parameteriv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_convolution_parameteriv_cookie_t xcb_glx_get_convolution_parameteriv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

int* xcb_glx_get_convolution_parameteriv_data(const xcb_glx_get_convolution_parameteriv_reply_t* R /**< */ );

int xcb_glx_get_convolution_parameteriv_data_length(const xcb_glx_get_convolution_parameteriv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_convolution_parameteriv_data_end(const xcb_glx_get_convolution_parameteriv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_convolution_parameteriv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_convolution_parameteriv_reply_t* xcb_glx_get_convolution_parameteriv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_convolution_parameteriv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_separable_filter_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_separable_filter_cookie_t xcb_glx_get_separable_filter(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ );

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
xcb_glx_get_separable_filter_cookie_t xcb_glx_get_separable_filter_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ );

ubyte* xcb_glx_get_separable_filter_rows_and_cols(const xcb_glx_get_separable_filter_reply_t* R /**< */ );

int xcb_glx_get_separable_filter_rows_and_cols_length(const xcb_glx_get_separable_filter_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_separable_filter_rows_and_cols_end(const xcb_glx_get_separable_filter_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_separable_filter_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_separable_filter_reply_t* xcb_glx_get_separable_filter_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_separable_filter_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_histogram_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_histogram_cookie_t xcb_glx_get_histogram(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ ,
	uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ , ubyte reset /**< */ );

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
xcb_glx_get_histogram_cookie_t xcb_glx_get_histogram_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ , ubyte reset /**< */ );

ubyte* xcb_glx_get_histogram_data(const xcb_glx_get_histogram_reply_t* R /**< */ );

int xcb_glx_get_histogram_data_length(const xcb_glx_get_histogram_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_histogram_data_end(const xcb_glx_get_histogram_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_histogram_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_histogram_reply_t* xcb_glx_get_histogram_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_histogram_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_histogram_parameterfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_histogram_parameterfv_cookie_t xcb_glx_get_histogram_parameterfv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_histogram_parameterfv_cookie_t xcb_glx_get_histogram_parameterfv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_histogram_parameterfv_data(const xcb_glx_get_histogram_parameterfv_reply_t* R /**< */ );

int xcb_glx_get_histogram_parameterfv_data_length(const xcb_glx_get_histogram_parameterfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_histogram_parameterfv_data_end(const xcb_glx_get_histogram_parameterfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_histogram_parameterfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_histogram_parameterfv_reply_t* xcb_glx_get_histogram_parameterfv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_histogram_parameterfv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_histogram_parameteriv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_histogram_parameteriv_cookie_t xcb_glx_get_histogram_parameteriv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_histogram_parameteriv_cookie_t xcb_glx_get_histogram_parameteriv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

int* xcb_glx_get_histogram_parameteriv_data(const xcb_glx_get_histogram_parameteriv_reply_t* R /**< */ );

int xcb_glx_get_histogram_parameteriv_data_length(const xcb_glx_get_histogram_parameteriv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_histogram_parameteriv_data_end(const xcb_glx_get_histogram_parameteriv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_histogram_parameteriv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_histogram_parameteriv_reply_t* xcb_glx_get_histogram_parameteriv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_histogram_parameteriv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_minmax_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_minmax_cookie_t xcb_glx_get_minmax(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ ,
	uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ , ubyte reset /**< */ );

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
xcb_glx_get_minmax_cookie_t xcb_glx_get_minmax_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint format /**< */ , uint type /**< */ , ubyte swap_bytes /**< */ , ubyte reset /**< */ );

ubyte* xcb_glx_get_minmax_data(const xcb_glx_get_minmax_reply_t* R /**< */ );

int xcb_glx_get_minmax_data_length(const xcb_glx_get_minmax_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_minmax_data_end(const xcb_glx_get_minmax_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_minmax_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_minmax_reply_t* xcb_glx_get_minmax_reply(xcb_connection_t* c /**< */ , xcb_glx_get_minmax_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_glx_get_minmax_parameterfv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_minmax_parameterfv_cookie_t xcb_glx_get_minmax_parameterfv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_minmax_parameterfv_cookie_t xcb_glx_get_minmax_parameterfv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

xcb_glx_float32_t* xcb_glx_get_minmax_parameterfv_data(const xcb_glx_get_minmax_parameterfv_reply_t* R /**< */ );

int xcb_glx_get_minmax_parameterfv_data_length(const xcb_glx_get_minmax_parameterfv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_minmax_parameterfv_data_end(const xcb_glx_get_minmax_parameterfv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_minmax_parameterfv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_minmax_parameterfv_reply_t* xcb_glx_get_minmax_parameterfv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_minmax_parameterfv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_minmax_parameteriv_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_minmax_parameteriv_cookie_t xcb_glx_get_minmax_parameteriv(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_minmax_parameteriv_cookie_t xcb_glx_get_minmax_parameteriv_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

int* xcb_glx_get_minmax_parameteriv_data(const xcb_glx_get_minmax_parameteriv_reply_t* R /**< */ );

int xcb_glx_get_minmax_parameteriv_data_length(const xcb_glx_get_minmax_parameteriv_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_minmax_parameteriv_data_end(const xcb_glx_get_minmax_parameteriv_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_minmax_parameteriv_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_minmax_parameteriv_reply_t* xcb_glx_get_minmax_parameteriv_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_minmax_parameteriv_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_compressed_tex_image_arb_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_compressed_tex_image_arb_cookie_t xcb_glx_get_compressed_tex_image_arb(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , int level /**< */ );

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
xcb_glx_get_compressed_tex_image_arb_cookie_t xcb_glx_get_compressed_tex_image_arb_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , int level /**< */ );

ubyte* xcb_glx_get_compressed_tex_image_arb_data(const xcb_glx_get_compressed_tex_image_arb_reply_t* R /**< */ );

int xcb_glx_get_compressed_tex_image_arb_data_length(const xcb_glx_get_compressed_tex_image_arb_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_compressed_tex_image_arb_data_end(const xcb_glx_get_compressed_tex_image_arb_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_compressed_tex_image_arb_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_compressed_tex_image_arb_reply_t* xcb_glx_get_compressed_tex_image_arb_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_compressed_tex_image_arb_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_delete_queries_arb_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_glx_delete_queries_arb_checked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int n /**< */ , const uint* ids /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_glx_delete_queries_arb(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ , int n /**< */ ,
	const uint* ids /**< */ );

int xcb_glx_gen_queries_arb_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_gen_queries_arb_cookie_t xcb_glx_gen_queries_arb(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int n /**< */ );

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
xcb_glx_gen_queries_arb_cookie_t xcb_glx_gen_queries_arb_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	int n /**< */ );

uint* xcb_glx_gen_queries_arb_data(const xcb_glx_gen_queries_arb_reply_t* R /**< */ );

int xcb_glx_gen_queries_arb_data_length(const xcb_glx_gen_queries_arb_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_gen_queries_arb_data_end(const xcb_glx_gen_queries_arb_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_gen_queries_arb_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_gen_queries_arb_reply_t* xcb_glx_gen_queries_arb_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_gen_queries_arb_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_is_query_arb_cookie_t xcb_glx_is_query_arb(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint id /**< */ );

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
xcb_glx_is_query_arb_cookie_t xcb_glx_is_query_arb_unchecked(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint id /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_is_query_arb_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_is_query_arb_reply_t* xcb_glx_is_query_arb_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_is_query_arb_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_queryiv_arb_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_queryiv_arb_cookie_t xcb_glx_get_queryiv_arb(xcb_connection_t* c /**< */ , xcb_glx_context_tag_t context_tag /**< */ ,
	uint target /**< */ , uint pname /**< */ );

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
xcb_glx_get_queryiv_arb_cookie_t xcb_glx_get_queryiv_arb_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint target /**< */ , uint pname /**< */ );

int* xcb_glx_get_queryiv_arb_data(const xcb_glx_get_queryiv_arb_reply_t* R /**< */ );

int xcb_glx_get_queryiv_arb_data_length(const xcb_glx_get_queryiv_arb_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_queryiv_arb_data_end(const xcb_glx_get_queryiv_arb_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_queryiv_arb_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_queryiv_arb_reply_t* xcb_glx_get_queryiv_arb_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_queryiv_arb_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_query_objectiv_arb_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_query_objectiv_arb_cookie_t xcb_glx_get_query_objectiv_arb(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint id /**< */ , uint pname /**< */ );

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
xcb_glx_get_query_objectiv_arb_cookie_t xcb_glx_get_query_objectiv_arb_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint id /**< */ , uint pname /**< */ );

int* xcb_glx_get_query_objectiv_arb_data(const xcb_glx_get_query_objectiv_arb_reply_t* R /**< */ );

int xcb_glx_get_query_objectiv_arb_data_length(const xcb_glx_get_query_objectiv_arb_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_query_objectiv_arb_data_end(const xcb_glx_get_query_objectiv_arb_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_query_objectiv_arb_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_query_objectiv_arb_reply_t* xcb_glx_get_query_objectiv_arb_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_query_objectiv_arb_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_glx_get_query_objectuiv_arb_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_glx_get_query_objectuiv_arb_cookie_t xcb_glx_get_query_objectuiv_arb(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint id /**< */ , uint pname /**< */ );

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
xcb_glx_get_query_objectuiv_arb_cookie_t xcb_glx_get_query_objectuiv_arb_unchecked(xcb_connection_t* c /**< */ ,
	xcb_glx_context_tag_t context_tag /**< */ , uint id /**< */ , uint pname /**< */ );

uint* xcb_glx_get_query_objectuiv_arb_data(const xcb_glx_get_query_objectuiv_arb_reply_t* R /**< */ );

int xcb_glx_get_query_objectuiv_arb_data_length(const xcb_glx_get_query_objectuiv_arb_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_glx_get_query_objectuiv_arb_data_end(const xcb_glx_get_query_objectuiv_arb_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_glx_get_query_objectuiv_arb_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_glx_get_query_objectuiv_arb_reply_t* xcb_glx_get_query_objectuiv_arb_reply(xcb_connection_t* c /**< */ ,
	xcb_glx_get_query_objectuiv_arb_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @}
 */
