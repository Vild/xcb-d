/*
 * This file generated automatically from xf86vidmode.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_XF86VidMode_API XCB XF86VidMode API
 * @brief XF86VidMode XCB Protocol Implementation.
 * @{
 **/

module xcb.xf86vidmode;

import xcb.xcb;

extern (C):

enum int XCB_XF86VIDMODE_MAJOR_VERSION = 2;
enum int XCB_XF86VIDMODE_MINOR_VERSION = 2;

extern (C) __gshared extern xcb_extension_t xcb_xf86vidmode_id;

alias xcb_xf86vidmode_syncrange_t = uint;

/**
 * @brief xcb_xf86vidmode_syncrange_iterator_t
 **/
struct xcb_xf86vidmode_syncrange_iterator_t {
	xcb_xf86vidmode_syncrange_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_xf86vidmode_dotclock_t = uint;

/**
 * @brief xcb_xf86vidmode_dotclock_iterator_t
 **/
struct xcb_xf86vidmode_dotclock_iterator_t {
	xcb_xf86vidmode_dotclock_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xf86vidmode_mode_flag_t {
	XCB_XF86VIDMODE_MODE_FLAG_POSITIVE_H_SYNC = 1,
	XCB_XF86VIDMODE_MODE_FLAG_NEGATIVE_H_SYNC = 2,
	XCB_XF86VIDMODE_MODE_FLAG_POSITIVE_V_SYNC = 4,
	XCB_XF86VIDMODE_MODE_FLAG_NEGATIVE_V_SYNC = 8,
	XCB_XF86VIDMODE_MODE_FLAG_INTERLACE = 16,
	XCB_XF86VIDMODE_MODE_FLAG_COMPOSITE_SYNC = 32,
	XCB_XF86VIDMODE_MODE_FLAG_POSITIVE_C_SYNC = 64,
	XCB_XF86VIDMODE_MODE_FLAG_NEGATIVE_C_SYNC = 128,
	XCB_XF86VIDMODE_MODE_FLAG_H_SKEW = 256,
	XCB_XF86VIDMODE_MODE_FLAG_BROADCAST = 512,
	XCB_XF86VIDMODE_MODE_FLAG_PIXMUX = 1024,
	XCB_XF86VIDMODE_MODE_FLAG_DOUBLE_CLOCK = 2048,
	XCB_XF86VIDMODE_MODE_FLAG_HALF_CLOCK = 4096
}

alias XCB_XF86VIDMODE_MODE_FLAG_POSITIVE_H_SYNC = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_POSITIVE_H_SYNC;
alias XCB_XF86VIDMODE_MODE_FLAG_NEGATIVE_H_SYNC = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_NEGATIVE_H_SYNC;
alias XCB_XF86VIDMODE_MODE_FLAG_POSITIVE_V_SYNC = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_POSITIVE_V_SYNC;
alias XCB_XF86VIDMODE_MODE_FLAG_NEGATIVE_V_SYNC = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_NEGATIVE_V_SYNC;
alias XCB_XF86VIDMODE_MODE_FLAG_INTERLACE = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_INTERLACE;
alias XCB_XF86VIDMODE_MODE_FLAG_COMPOSITE_SYNC = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_COMPOSITE_SYNC;
alias XCB_XF86VIDMODE_MODE_FLAG_POSITIVE_C_SYNC = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_POSITIVE_C_SYNC;
alias XCB_XF86VIDMODE_MODE_FLAG_NEGATIVE_C_SYNC = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_NEGATIVE_C_SYNC;
alias XCB_XF86VIDMODE_MODE_FLAG_H_SKEW = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_H_SKEW;
alias XCB_XF86VIDMODE_MODE_FLAG_BROADCAST = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_BROADCAST;
alias XCB_XF86VIDMODE_MODE_FLAG_PIXMUX = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_PIXMUX;
alias XCB_XF86VIDMODE_MODE_FLAG_DOUBLE_CLOCK = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_DOUBLE_CLOCK;
alias XCB_XF86VIDMODE_MODE_FLAG_HALF_CLOCK = xcb_xf86vidmode_mode_flag_t.XCB_XF86VIDMODE_MODE_FLAG_HALF_CLOCK;

enum xcb_xf86vidmode_clock_flag_t {
	XCB_XF86VIDMODE_CLOCK_FLAG_PROGRAMABLE = 1
}

alias XCB_XF86VIDMODE_CLOCK_FLAG_PROGRAMABLE = xcb_xf86vidmode_clock_flag_t.XCB_XF86VIDMODE_CLOCK_FLAG_PROGRAMABLE;

enum xcb_xf86vidmode_permission_t {
	XCB_XF86VIDMODE_PERMISSION_READ = 1,
	XCB_XF86VIDMODE_PERMISSION_WRITE = 2
}

alias XCB_XF86VIDMODE_PERMISSION_READ = xcb_xf86vidmode_permission_t.XCB_XF86VIDMODE_PERMISSION_READ;
alias XCB_XF86VIDMODE_PERMISSION_WRITE = xcb_xf86vidmode_permission_t.XCB_XF86VIDMODE_PERMISSION_WRITE;

/**
 * @brief xcb_xf86vidmode_mode_info_t
 **/
struct xcb_xf86vidmode_mode_info_t {
	xcb_xf86vidmode_dotclock_t dotclock; /**<  */
	ushort hdisplay; /**<  */
	ushort hsyncstart; /**<  */
	ushort hsyncend; /**<  */
	ushort htotal; /**<  */
	uint hskew; /**<  */
	ushort vdisplay; /**<  */
	ushort vsyncstart; /**<  */
	ushort vsyncend; /**<  */
	ushort vtotal; /**<  */
	ubyte[4] pad0; /**<  */
	uint flags; /**<  */
	ubyte[12] pad1; /**<  */
	uint privsize; /**<  */
}

/**
 * @brief xcb_xf86vidmode_mode_info_iterator_t
 **/
struct xcb_xf86vidmode_mode_info_iterator_t {
	xcb_xf86vidmode_mode_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xf86vidmode_query_version_cookie_t
 **/
struct xcb_xf86vidmode_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_query_version. */
enum XCB_XF86VIDMODE_QUERY_VERSION = 0;

/**
 * @brief xcb_xf86vidmode_query_version_request_t
 **/
struct xcb_xf86vidmode_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_xf86vidmode_query_version_reply_t
 **/
struct xcb_xf86vidmode_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort major_version; /**<  */
	ushort minor_version; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_mode_line_cookie_t
 **/
struct xcb_xf86vidmode_get_mode_line_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_mode_line. */
enum XCB_XF86VIDMODE_GET_MODE_LINE = 1;

/**
 * @brief xcb_xf86vidmode_get_mode_line_request_t
 **/
struct xcb_xf86vidmode_get_mode_line_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_mode_line_reply_t
 **/
struct xcb_xf86vidmode_get_mode_line_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_xf86vidmode_dotclock_t dotclock; /**<  */
	ushort hdisplay; /**<  */
	ushort hsyncstart; /**<  */
	ushort hsyncend; /**<  */
	ushort htotal; /**<  */
	ushort hskew; /**<  */
	ushort vdisplay; /**<  */
	ushort vsyncstart; /**<  */
	ushort vsyncend; /**<  */
	ushort vtotal; /**<  */
	ubyte[2] pad1; /**<  */
	uint flags; /**<  */
	ubyte[12] pad2; /**<  */
	uint privsize; /**<  */
}

/** Opcode for xcb_xf86vidmode_mod_mode_line. */
enum XCB_XF86VIDMODE_MOD_MODE_LINE = 2;

/**
 * @brief xcb_xf86vidmode_mod_mode_line_request_t
 **/
struct xcb_xf86vidmode_mod_mode_line_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
	ushort hdisplay; /**<  */
	ushort hsyncstart; /**<  */
	ushort hsyncend; /**<  */
	ushort htotal; /**<  */
	ushort hskew; /**<  */
	ushort vdisplay; /**<  */
	ushort vsyncstart; /**<  */
	ushort vsyncend; /**<  */
	ushort vtotal; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
	ubyte[12] pad1; /**<  */
	uint privsize; /**<  */
}

/** Opcode for xcb_xf86vidmode_switch_mode. */
enum XCB_XF86VIDMODE_SWITCH_MODE = 3;

/**
 * @brief xcb_xf86vidmode_switch_mode_request_t
 **/
struct xcb_xf86vidmode_switch_mode_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ushort zoom; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_monitor_cookie_t
 **/
struct xcb_xf86vidmode_get_monitor_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_monitor. */
enum XCB_XF86VIDMODE_GET_MONITOR = 4;

/**
 * @brief xcb_xf86vidmode_get_monitor_request_t
 **/
struct xcb_xf86vidmode_get_monitor_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_monitor_reply_t
 **/
struct xcb_xf86vidmode_get_monitor_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte vendor_length; /**<  */
	ubyte model_length; /**<  */
	ubyte num_hsync; /**<  */
	ubyte num_vsync; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_xf86vidmode_lock_mode_switch. */
enum XCB_XF86VIDMODE_LOCK_MODE_SWITCH = 5;

/**
 * @brief xcb_xf86vidmode_lock_mode_switch_request_t
 **/
struct xcb_xf86vidmode_lock_mode_switch_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ushort lock; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_all_mode_lines_cookie_t
 **/
struct xcb_xf86vidmode_get_all_mode_lines_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_all_mode_lines. */
enum XCB_XF86VIDMODE_GET_ALL_MODE_LINES = 6;

/**
 * @brief xcb_xf86vidmode_get_all_mode_lines_request_t
 **/
struct xcb_xf86vidmode_get_all_mode_lines_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_all_mode_lines_reply_t
 **/
struct xcb_xf86vidmode_get_all_mode_lines_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint modecount; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_xf86vidmode_add_mode_line. */
enum XCB_XF86VIDMODE_ADD_MODE_LINE = 7;

/**
 * @brief xcb_xf86vidmode_add_mode_line_request_t
 **/
struct xcb_xf86vidmode_add_mode_line_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
	xcb_xf86vidmode_dotclock_t dotclock; /**<  */
	ushort hdisplay; /**<  */
	ushort hsyncstart; /**<  */
	ushort hsyncend; /**<  */
	ushort htotal; /**<  */
	ushort hskew; /**<  */
	ushort vdisplay; /**<  */
	ushort vsyncstart; /**<  */
	ushort vsyncend; /**<  */
	ushort vtotal; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
	ubyte[12] pad1; /**<  */
	uint privsize; /**<  */
	xcb_xf86vidmode_dotclock_t after_dotclock; /**<  */
	ushort after_hdisplay; /**<  */
	ushort after_hsyncstart; /**<  */
	ushort after_hsyncend; /**<  */
	ushort after_htotal; /**<  */
	ushort after_hskew; /**<  */
	ushort after_vdisplay; /**<  */
	ushort after_vsyncstart; /**<  */
	ushort after_vsyncend; /**<  */
	ushort after_vtotal; /**<  */
	ubyte[2] pad2; /**<  */
	uint after_flags; /**<  */
	ubyte[12] pad3; /**<  */
}

/** Opcode for xcb_xf86vidmode_delete_mode_line. */
enum XCB_XF86VIDMODE_DELETE_MODE_LINE = 8;

/**
 * @brief xcb_xf86vidmode_delete_mode_line_request_t
 **/
struct xcb_xf86vidmode_delete_mode_line_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
	xcb_xf86vidmode_dotclock_t dotclock; /**<  */
	ushort hdisplay; /**<  */
	ushort hsyncstart; /**<  */
	ushort hsyncend; /**<  */
	ushort htotal; /**<  */
	ushort hskew; /**<  */
	ushort vdisplay; /**<  */
	ushort vsyncstart; /**<  */
	ushort vsyncend; /**<  */
	ushort vtotal; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
	ubyte[12] pad1; /**<  */
	uint privsize; /**<  */
}

/**
 * @brief xcb_xf86vidmode_validate_mode_line_cookie_t
 **/
struct xcb_xf86vidmode_validate_mode_line_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_validate_mode_line. */
enum XCB_XF86VIDMODE_VALIDATE_MODE_LINE = 9;

/**
 * @brief xcb_xf86vidmode_validate_mode_line_request_t
 **/
struct xcb_xf86vidmode_validate_mode_line_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
	xcb_xf86vidmode_dotclock_t dotclock; /**<  */
	ushort hdisplay; /**<  */
	ushort hsyncstart; /**<  */
	ushort hsyncend; /**<  */
	ushort htotal; /**<  */
	ushort hskew; /**<  */
	ushort vdisplay; /**<  */
	ushort vsyncstart; /**<  */
	ushort vsyncend; /**<  */
	ushort vtotal; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
	ubyte[12] pad1; /**<  */
	uint privsize; /**<  */
}

/**
 * @brief xcb_xf86vidmode_validate_mode_line_reply_t
 **/
struct xcb_xf86vidmode_validate_mode_line_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint status; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_xf86vidmode_switch_to_mode. */
enum XCB_XF86VIDMODE_SWITCH_TO_MODE = 10;

/**
 * @brief xcb_xf86vidmode_switch_to_mode_request_t
 **/
struct xcb_xf86vidmode_switch_to_mode_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
	xcb_xf86vidmode_dotclock_t dotclock; /**<  */
	ushort hdisplay; /**<  */
	ushort hsyncstart; /**<  */
	ushort hsyncend; /**<  */
	ushort htotal; /**<  */
	ushort hskew; /**<  */
	ushort vdisplay; /**<  */
	ushort vsyncstart; /**<  */
	ushort vsyncend; /**<  */
	ushort vtotal; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
	ubyte[12] pad1; /**<  */
	uint privsize; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_view_port_cookie_t
 **/
struct xcb_xf86vidmode_get_view_port_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_view_port. */
enum XCB_XF86VIDMODE_GET_VIEW_PORT = 11;

/**
 * @brief xcb_xf86vidmode_get_view_port_request_t
 **/
struct xcb_xf86vidmode_get_view_port_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_view_port_reply_t
 **/
struct xcb_xf86vidmode_get_view_port_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint x; /**<  */
	uint y; /**<  */
	ubyte[16] pad1; /**<  */
}

/** Opcode for xcb_xf86vidmode_set_view_port. */
enum XCB_XF86VIDMODE_SET_VIEW_PORT = 12;

/**
 * @brief xcb_xf86vidmode_set_view_port_request_t
 **/
struct xcb_xf86vidmode_set_view_port_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ubyte[2] pad0; /**<  */
	uint x; /**<  */
	uint y; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_dot_clocks_cookie_t
 **/
struct xcb_xf86vidmode_get_dot_clocks_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_dot_clocks. */
enum XCB_XF86VIDMODE_GET_DOT_CLOCKS = 13;

/**
 * @brief xcb_xf86vidmode_get_dot_clocks_request_t
 **/
struct xcb_xf86vidmode_get_dot_clocks_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_dot_clocks_reply_t
 **/
struct xcb_xf86vidmode_get_dot_clocks_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint flags; /**<  */
	uint clocks; /**<  */
	uint maxclocks; /**<  */
	ubyte[12] pad1; /**<  */
}

/** Opcode for xcb_xf86vidmode_set_client_version. */
enum XCB_XF86VIDMODE_SET_CLIENT_VERSION = 14;

/**
 * @brief xcb_xf86vidmode_set_client_version_request_t
 **/
struct xcb_xf86vidmode_set_client_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort major; /**<  */
	ushort minor; /**<  */
}

/** Opcode for xcb_xf86vidmode_set_gamma. */
enum XCB_XF86VIDMODE_SET_GAMMA = 15;

/**
 * @brief xcb_xf86vidmode_set_gamma_request_t
 **/
struct xcb_xf86vidmode_set_gamma_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ubyte[2] pad0; /**<  */
	uint red; /**<  */
	uint green; /**<  */
	uint blue; /**<  */
	ubyte[12] pad1; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_cookie_t
 **/
struct xcb_xf86vidmode_get_gamma_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_gamma. */
enum XCB_XF86VIDMODE_GET_GAMMA = 16;

/**
 * @brief xcb_xf86vidmode_get_gamma_request_t
 **/
struct xcb_xf86vidmode_get_gamma_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ubyte[26] pad0; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_reply_t
 **/
struct xcb_xf86vidmode_get_gamma_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint red; /**<  */
	uint green; /**<  */
	uint blue; /**<  */
	ubyte[12] pad1; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_cookie_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_gamma_ramp. */
enum XCB_XF86VIDMODE_GET_GAMMA_RAMP = 17;

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_request_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ushort size; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_reply_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort size; /**<  */
	ubyte[22] pad1; /**<  */
}

/** Opcode for xcb_xf86vidmode_set_gamma_ramp. */
enum XCB_XF86VIDMODE_SET_GAMMA_RAMP = 18;

/**
 * @brief xcb_xf86vidmode_set_gamma_ramp_request_t
 **/
struct xcb_xf86vidmode_set_gamma_ramp_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ushort size; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_size_cookie_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_size_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_gamma_ramp_size. */
enum XCB_XF86VIDMODE_GET_GAMMA_RAMP_SIZE = 19;

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_size_request_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_size_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_size_reply_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_size_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort size; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_permissions_cookie_t
 **/
struct xcb_xf86vidmode_get_permissions_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_permissions. */
enum XCB_XF86VIDMODE_GET_PERMISSIONS = 20;

/**
 * @brief xcb_xf86vidmode_get_permissions_request_t
 **/
struct xcb_xf86vidmode_get_permissions_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort screen; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_permissions_reply_t
 **/
struct xcb_xf86vidmode_get_permissions_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint permissions; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_xf86vidmode_bad_clock. */
enum XCB_XF86VIDMODE_BAD_CLOCK = 0;

/**
 * @brief xcb_xf86vidmode_bad_clock_error_t
 **/
struct xcb_xf86vidmode_bad_clock_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_bad_h_timings. */
enum XCB_XF86VIDMODE_BAD_H_TIMINGS = 1;

/**
 * @brief xcb_xf86vidmode_bad_h_timings_error_t
 **/
struct xcb_xf86vidmode_bad_h_timings_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_bad_v_timings. */
enum XCB_XF86VIDMODE_BAD_V_TIMINGS = 2;

/**
 * @brief xcb_xf86vidmode_bad_v_timings_error_t
 **/
struct xcb_xf86vidmode_bad_v_timings_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_mode_unsuitable. */
enum XCB_XF86VIDMODE_MODE_UNSUITABLE = 3;

/**
 * @brief xcb_xf86vidmode_mode_unsuitable_error_t
 **/
struct xcb_xf86vidmode_mode_unsuitable_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_extension_disabled. */
enum XCB_XF86VIDMODE_EXTENSION_DISABLED = 4;

/**
 * @brief xcb_xf86vidmode_extension_disabled_error_t
 **/
struct xcb_xf86vidmode_extension_disabled_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_client_not_local. */
enum XCB_XF86VIDMODE_CLIENT_NOT_LOCAL = 5;

/**
 * @brief xcb_xf86vidmode_client_not_local_error_t
 **/
struct xcb_xf86vidmode_client_not_local_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_zoom_locked. */
enum XCB_XF86VIDMODE_ZOOM_LOCKED = 6;

/**
 * @brief xcb_xf86vidmode_zoom_locked_error_t
 **/
struct xcb_xf86vidmode_zoom_locked_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xf86vidmode_syncrange_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xf86vidmode_syncrange_t)
 */
void xcb_xf86vidmode_syncrange_next(xcb_xf86vidmode_syncrange_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xf86vidmode_syncrange_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xf86vidmode_syncrange_end(xcb_xf86vidmode_syncrange_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xf86vidmode_dotclock_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xf86vidmode_dotclock_t)
 */
void xcb_xf86vidmode_dotclock_next(xcb_xf86vidmode_dotclock_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xf86vidmode_dotclock_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xf86vidmode_dotclock_end(xcb_xf86vidmode_dotclock_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xf86vidmode_mode_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xf86vidmode_mode_info_t)
 */
void xcb_xf86vidmode_mode_info_next(xcb_xf86vidmode_mode_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xf86vidmode_mode_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xf86vidmode_mode_info_end(xcb_xf86vidmode_mode_info_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_query_version_cookie_t xcb_xf86vidmode_query_version(xcb_connection_t* c /**< */ );

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
xcb_xf86vidmode_query_version_cookie_t xcb_xf86vidmode_query_version_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_query_version_reply_t* xcb_xf86vidmode_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xf86vidmode_get_mode_line_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_get_mode_line_cookie_t xcb_xf86vidmode_get_mode_line(xcb_connection_t* c /**< */ , ushort screen /**< */ );

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
xcb_xf86vidmode_get_mode_line_cookie_t xcb_xf86vidmode_get_mode_line_unchecked(xcb_connection_t* c /**< */ , ushort screen /**< */ );

ubyte* xcb_xf86vidmode_get_mode_line_private(const xcb_xf86vidmode_get_mode_line_reply_t* R /**< */ );

int xcb_xf86vidmode_get_mode_line_private_length(const xcb_xf86vidmode_get_mode_line_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xf86vidmode_get_mode_line_private_end(const xcb_xf86vidmode_get_mode_line_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_mode_line_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_get_mode_line_reply_t* xcb_xf86vidmode_get_mode_line_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_get_mode_line_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xf86vidmode_mod_mode_line_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_xf86vidmode_mod_mode_line_checked(xcb_connection_t* c /**< */ , uint screen /**< */ , ushort hdisplay /**< */ , ushort hsyncstart /**< */ ,
	ushort hsyncend /**< */ , ushort htotal /**< */ , ushort hskew /**< */ , ushort vdisplay /**< */ , ushort vsyncstart /**< */ , ushort vsyncend /**< */ ,
	ushort vtotal /**< */ , uint flags /**< */ , uint privsize /**< */ , const ubyte* private_ /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xf86vidmode_mod_mode_line(xcb_connection_t* c /**< */ , uint screen /**< */ , ushort hdisplay /**< */ , ushort hsyncstart /**< */ ,
	ushort hsyncend /**< */ , ushort htotal /**< */ , ushort hskew /**< */ , ushort vdisplay /**< */ , ushort vsyncstart /**< */ , ushort vsyncend /**< */ ,
	ushort vtotal /**< */ , uint flags /**< */ , uint privsize /**< */ , const ubyte* private_ /**< */ );

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
xcb_void_cookie_t xcb_xf86vidmode_switch_mode_checked(xcb_connection_t* c /**< */ , ushort screen /**< */ , ushort zoom /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xf86vidmode_switch_mode(xcb_connection_t* c /**< */ , ushort screen /**< */ , ushort zoom /**< */ );

int xcb_xf86vidmode_get_monitor_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_get_monitor_cookie_t xcb_xf86vidmode_get_monitor(xcb_connection_t* c /**< */ , ushort screen /**< */ );

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
xcb_xf86vidmode_get_monitor_cookie_t xcb_xf86vidmode_get_monitor_unchecked(xcb_connection_t* c /**< */ , ushort screen /**< */ );

xcb_xf86vidmode_syncrange_t* xcb_xf86vidmode_get_monitor_hsync(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

int xcb_xf86vidmode_get_monitor_hsync_length(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xf86vidmode_get_monitor_hsync_end(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

xcb_xf86vidmode_syncrange_t* xcb_xf86vidmode_get_monitor_vsync(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

int xcb_xf86vidmode_get_monitor_vsync_length(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xf86vidmode_get_monitor_vsync_end(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

char* xcb_xf86vidmode_get_monitor_vendor(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

int xcb_xf86vidmode_get_monitor_vendor_length(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xf86vidmode_get_monitor_vendor_end(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

void* xcb_xf86vidmode_get_monitor_alignment_pad(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

int xcb_xf86vidmode_get_monitor_alignment_pad_length(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xf86vidmode_get_monitor_alignment_pad_end(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

char* xcb_xf86vidmode_get_monitor_model(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

int xcb_xf86vidmode_get_monitor_model_length(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xf86vidmode_get_monitor_model_end(const xcb_xf86vidmode_get_monitor_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_monitor_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_get_monitor_reply_t* xcb_xf86vidmode_get_monitor_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_get_monitor_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_xf86vidmode_lock_mode_switch_checked(xcb_connection_t* c /**< */ , ushort screen /**< */ , ushort lock /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xf86vidmode_lock_mode_switch(xcb_connection_t* c /**< */ , ushort screen /**< */ , ushort lock /**< */ );

int xcb_xf86vidmode_get_all_mode_lines_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_get_all_mode_lines_cookie_t xcb_xf86vidmode_get_all_mode_lines(xcb_connection_t* c /**< */ , ushort screen /**< */ );

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
xcb_xf86vidmode_get_all_mode_lines_cookie_t xcb_xf86vidmode_get_all_mode_lines_unchecked(xcb_connection_t* c /**< */ , ushort screen /**< */ );

xcb_xf86vidmode_mode_info_t* xcb_xf86vidmode_get_all_mode_lines_modeinfo(const xcb_xf86vidmode_get_all_mode_lines_reply_t* R /**< */ );

int xcb_xf86vidmode_get_all_mode_lines_modeinfo_length(const xcb_xf86vidmode_get_all_mode_lines_reply_t* R /**< */ );

xcb_xf86vidmode_mode_info_iterator_t xcb_xf86vidmode_get_all_mode_lines_modeinfo_iterator(const xcb_xf86vidmode_get_all_mode_lines_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_all_mode_lines_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_get_all_mode_lines_reply_t* xcb_xf86vidmode_get_all_mode_lines_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_get_all_mode_lines_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xf86vidmode_add_mode_line_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_xf86vidmode_add_mode_line_checked(xcb_connection_t* c /**< */ , uint screen /**< */ ,
	xcb_xf86vidmode_dotclock_t dotclock /**< */ , ushort hdisplay /**< */ , ushort hsyncstart /**< */ , ushort hsyncend /**< */ , ushort htotal /**< */ ,
	ushort hskew /**< */ , ushort vdisplay /**< */ , ushort vsyncstart /**< */ , ushort vsyncend /**< */ , ushort vtotal /**< */ , uint flags /**< */ , uint privsize /**< */ ,
	xcb_xf86vidmode_dotclock_t after_dotclock /**< */ , ushort after_hdisplay /**< */ , ushort after_hsyncstart /**< */ ,
	ushort after_hsyncend /**< */ , ushort after_htotal /**< */ , ushort after_hskew /**< */ , ushort after_vdisplay /**< */ , ushort after_vsyncstart /**< */ ,
	ushort after_vsyncend /**< */ , ushort after_vtotal /**< */ , uint after_flags /**< */ , const ubyte* private_ /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xf86vidmode_add_mode_line(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_xf86vidmode_dotclock_t dotclock /**< */ ,
	ushort hdisplay /**< */ , ushort hsyncstart /**< */ , ushort hsyncend /**< */ , ushort htotal /**< */ , ushort hskew /**< */ , ushort vdisplay /**< */ , ushort vsyncstart /**< */ ,
	ushort vsyncend /**< */ , ushort vtotal /**< */ , uint flags /**< */ , uint privsize /**< */ , xcb_xf86vidmode_dotclock_t after_dotclock /**< */ ,
	ushort after_hdisplay /**< */ , ushort after_hsyncstart /**< */ , ushort after_hsyncend /**< */ , ushort after_htotal /**< */ , ushort after_hskew /**< */ ,
	ushort after_vdisplay /**< */ , ushort after_vsyncstart /**< */ , ushort after_vsyncend /**< */ , ushort after_vtotal /**< */ ,
	uint after_flags /**< */ , const ubyte* private_ /**< */ );

int xcb_xf86vidmode_delete_mode_line_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_xf86vidmode_delete_mode_line_checked(xcb_connection_t* c /**< */ , uint screen /**< */ ,
	xcb_xf86vidmode_dotclock_t dotclock /**< */ , ushort hdisplay /**< */ , ushort hsyncstart /**< */ , ushort hsyncend /**< */ , ushort htotal /**< */ ,
	ushort hskew /**< */ , ushort vdisplay /**< */ , ushort vsyncstart /**< */ , ushort vsyncend /**< */ , ushort vtotal /**< */ , uint flags /**< */ ,
	uint privsize /**< */ , const ubyte* private_ /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xf86vidmode_delete_mode_line(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_xf86vidmode_dotclock_t dotclock /**< */ ,
	ushort hdisplay /**< */ , ushort hsyncstart /**< */ , ushort hsyncend /**< */ , ushort htotal /**< */ , ushort hskew /**< */ , ushort vdisplay /**< */ , ushort vsyncstart /**< */ ,
	ushort vsyncend /**< */ , ushort vtotal /**< */ , uint flags /**< */ , uint privsize /**< */ , const ubyte* private_ /**< */ );

int xcb_xf86vidmode_validate_mode_line_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_validate_mode_line_cookie_t xcb_xf86vidmode_validate_mode_line(xcb_connection_t* c /**< */ , uint screen /**< */ ,
	xcb_xf86vidmode_dotclock_t dotclock /**< */ , ushort hdisplay /**< */ , ushort hsyncstart /**< */ , ushort hsyncend /**< */ , ushort htotal /**< */ ,
	ushort hskew /**< */ , ushort vdisplay /**< */ , ushort vsyncstart /**< */ , ushort vsyncend /**< */ , ushort vtotal /**< */ , uint flags /**< */ ,
	uint privsize /**< */ , const ubyte* private_ /**< */ );

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
xcb_xf86vidmode_validate_mode_line_cookie_t xcb_xf86vidmode_validate_mode_line_unchecked(xcb_connection_t* c /**< */ , uint screen /**< */ ,
	xcb_xf86vidmode_dotclock_t dotclock /**< */ , ushort hdisplay /**< */ , ushort hsyncstart /**< */ , ushort hsyncend /**< */ , ushort htotal /**< */ ,
	ushort hskew /**< */ , ushort vdisplay /**< */ , ushort vsyncstart /**< */ , ushort vsyncend /**< */ , ushort vtotal /**< */ , uint flags /**< */ ,
	uint privsize /**< */ , const ubyte* private_ /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_validate_mode_line_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_validate_mode_line_reply_t* xcb_xf86vidmode_validate_mode_line_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_validate_mode_line_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xf86vidmode_switch_to_mode_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_xf86vidmode_switch_to_mode_checked(xcb_connection_t* c /**< */ , uint screen /**< */ ,
	xcb_xf86vidmode_dotclock_t dotclock /**< */ , ushort hdisplay /**< */ , ushort hsyncstart /**< */ , ushort hsyncend /**< */ , ushort htotal /**< */ ,
	ushort hskew /**< */ , ushort vdisplay /**< */ , ushort vsyncstart /**< */ , ushort vsyncend /**< */ , ushort vtotal /**< */ , uint flags /**< */ ,
	uint privsize /**< */ , const ubyte* private_ /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xf86vidmode_switch_to_mode(xcb_connection_t* c /**< */ , uint screen /**< */ , xcb_xf86vidmode_dotclock_t dotclock /**< */ ,
	ushort hdisplay /**< */ , ushort hsyncstart /**< */ , ushort hsyncend /**< */ , ushort htotal /**< */ , ushort hskew /**< */ , ushort vdisplay /**< */ , ushort vsyncstart /**< */ ,
	ushort vsyncend /**< */ , ushort vtotal /**< */ , uint flags /**< */ , uint privsize /**< */ , const ubyte* private_ /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_get_view_port_cookie_t xcb_xf86vidmode_get_view_port(xcb_connection_t* c /**< */ , ushort screen /**< */ );

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
xcb_xf86vidmode_get_view_port_cookie_t xcb_xf86vidmode_get_view_port_unchecked(xcb_connection_t* c /**< */ , ushort screen /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_view_port_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_get_view_port_reply_t* xcb_xf86vidmode_get_view_port_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_get_view_port_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_xf86vidmode_set_view_port_checked(xcb_connection_t* c /**< */ , ushort screen /**< */ , uint x /**< */ ,
	uint y /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xf86vidmode_set_view_port(xcb_connection_t* c /**< */ , ushort screen /**< */ , uint x /**< */ , uint y /**< */ );

int xcb_xf86vidmode_get_dot_clocks_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_get_dot_clocks_cookie_t xcb_xf86vidmode_get_dot_clocks(xcb_connection_t* c /**< */ , ushort screen /**< */ );

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
xcb_xf86vidmode_get_dot_clocks_cookie_t xcb_xf86vidmode_get_dot_clocks_unchecked(xcb_connection_t* c /**< */ , ushort screen /**< */ );

uint* xcb_xf86vidmode_get_dot_clocks_clock(const xcb_xf86vidmode_get_dot_clocks_reply_t* R /**< */ );

int xcb_xf86vidmode_get_dot_clocks_clock_length(const xcb_xf86vidmode_get_dot_clocks_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xf86vidmode_get_dot_clocks_clock_end(const xcb_xf86vidmode_get_dot_clocks_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_dot_clocks_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_get_dot_clocks_reply_t* xcb_xf86vidmode_get_dot_clocks_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_get_dot_clocks_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_xf86vidmode_set_client_version_checked(xcb_connection_t* c /**< */ , ushort major /**< */ , ushort minor /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xf86vidmode_set_client_version(xcb_connection_t* c /**< */ , ushort major /**< */ , ushort minor /**< */ );

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
xcb_void_cookie_t xcb_xf86vidmode_set_gamma_checked(xcb_connection_t* c /**< */ , ushort screen /**< */ , uint red /**< */ ,
	uint green /**< */ , uint blue /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xf86vidmode_set_gamma(xcb_connection_t* c /**< */ , ushort screen /**< */ , uint red /**< */ , uint green /**< */ ,
	uint blue /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_get_gamma_cookie_t xcb_xf86vidmode_get_gamma(xcb_connection_t* c /**< */ , ushort screen /**< */ );

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
xcb_xf86vidmode_get_gamma_cookie_t xcb_xf86vidmode_get_gamma_unchecked(xcb_connection_t* c /**< */ , ushort screen /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_gamma_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_get_gamma_reply_t* xcb_xf86vidmode_get_gamma_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_get_gamma_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xf86vidmode_get_gamma_ramp_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_get_gamma_ramp_cookie_t xcb_xf86vidmode_get_gamma_ramp(xcb_connection_t* c /**< */ , ushort screen /**< */ ,
	ushort size /**< */ );

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
xcb_xf86vidmode_get_gamma_ramp_cookie_t xcb_xf86vidmode_get_gamma_ramp_unchecked(xcb_connection_t* c /**< */ , ushort screen /**< */ ,
	ushort size /**< */ );

ushort* xcb_xf86vidmode_get_gamma_ramp_red(const xcb_xf86vidmode_get_gamma_ramp_reply_t* R /**< */ );

int xcb_xf86vidmode_get_gamma_ramp_red_length(const xcb_xf86vidmode_get_gamma_ramp_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xf86vidmode_get_gamma_ramp_red_end(const xcb_xf86vidmode_get_gamma_ramp_reply_t* R /**< */ );

ushort* xcb_xf86vidmode_get_gamma_ramp_green(const xcb_xf86vidmode_get_gamma_ramp_reply_t* R /**< */ );

int xcb_xf86vidmode_get_gamma_ramp_green_length(const xcb_xf86vidmode_get_gamma_ramp_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xf86vidmode_get_gamma_ramp_green_end(const xcb_xf86vidmode_get_gamma_ramp_reply_t* R /**< */ );

ushort* xcb_xf86vidmode_get_gamma_ramp_blue(const xcb_xf86vidmode_get_gamma_ramp_reply_t* R /**< */ );

int xcb_xf86vidmode_get_gamma_ramp_blue_length(const xcb_xf86vidmode_get_gamma_ramp_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xf86vidmode_get_gamma_ramp_blue_end(const xcb_xf86vidmode_get_gamma_ramp_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_gamma_ramp_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_get_gamma_ramp_reply_t* xcb_xf86vidmode_get_gamma_ramp_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_get_gamma_ramp_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xf86vidmode_set_gamma_ramp_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_xf86vidmode_set_gamma_ramp_checked(xcb_connection_t* c /**< */ , ushort screen /**< */ , ushort size /**< */ , const ushort* red /**< */ ,
	const ushort* green /**< */ , const ushort* blue /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xf86vidmode_set_gamma_ramp(xcb_connection_t* c /**< */ , ushort screen /**< */ , ushort size /**< */ , const ushort* red /**< */ ,
	const ushort* green /**< */ , const ushort* blue /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_get_gamma_ramp_size_cookie_t xcb_xf86vidmode_get_gamma_ramp_size(xcb_connection_t* c /**< */ , ushort screen /**< */ );

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
xcb_xf86vidmode_get_gamma_ramp_size_cookie_t xcb_xf86vidmode_get_gamma_ramp_size_unchecked(xcb_connection_t* c /**< */ , ushort screen /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_gamma_ramp_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_get_gamma_ramp_size_reply_t* xcb_xf86vidmode_get_gamma_ramp_size_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_get_gamma_ramp_size_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xf86vidmode_get_permissions_cookie_t xcb_xf86vidmode_get_permissions(xcb_connection_t* c /**< */ , ushort screen /**< */ );

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
xcb_xf86vidmode_get_permissions_cookie_t xcb_xf86vidmode_get_permissions_unchecked(xcb_connection_t* c /**< */ , ushort screen /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_permissions_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xf86vidmode_get_permissions_reply_t* xcb_xf86vidmode_get_permissions_reply(xcb_connection_t* c /**< */ ,
	xcb_xf86vidmode_get_permissions_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @}
 */
