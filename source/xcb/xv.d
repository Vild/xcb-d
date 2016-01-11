/*
 * This file generated automatically from xv.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Xv_API XCB Xv API
 * @brief Xv XCB Protocol Implementation.
 * @{
 **/

module xcb.xv;

import xcb.xcb;
import xcb.xproto;
import xcb.shm;

extern (C):

enum int XCB_XV_MAJOR_VERSION = 2;
enum int XCB_XV_MINOR_VERSION = 2;

extern (C) __gshared extern xcb_extension_t xcb_xv_id;

alias xcb_xv_port_t = uint;

/**
 * @brief xcb_xv_port_iterator_t
 **/
struct xcb_xv_port_iterator_t {
	xcb_xv_port_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_xv_encoding_t = uint;

/**
 * @brief xcb_xv_encoding_iterator_t
 **/
struct xcb_xv_encoding_iterator_t {
	xcb_xv_encoding_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xv_type_t {
	XCB_XV_TYPE_INPUT_MASK = 1,
	XCB_XV_TYPE_OUTPUT_MASK = 2,
	XCB_XV_TYPE_VIDEO_MASK = 4,
	XCB_XV_TYPE_STILL_MASK = 8,
	XCB_XV_TYPE_IMAGE_MASK = 16
}

alias XCB_XV_TYPE_INPUT_MASK = xcb_xv_type_t.XCB_XV_TYPE_INPUT_MASK;
alias XCB_XV_TYPE_OUTPUT_MASK = xcb_xv_type_t.XCB_XV_TYPE_OUTPUT_MASK;
alias XCB_XV_TYPE_VIDEO_MASK = xcb_xv_type_t.XCB_XV_TYPE_VIDEO_MASK;
alias XCB_XV_TYPE_STILL_MASK = xcb_xv_type_t.XCB_XV_TYPE_STILL_MASK;
alias XCB_XV_TYPE_IMAGE_MASK = xcb_xv_type_t.XCB_XV_TYPE_IMAGE_MASK;

enum xcb_xv_image_format_info_type_t {
	XCB_XV_IMAGE_FORMAT_INFO_TYPE_RGB = 0,
	XCB_XV_IMAGE_FORMAT_INFO_TYPE_YUV = 1
}

alias XCB_XV_IMAGE_FORMAT_INFO_TYPE_RGB = xcb_xv_image_format_info_type_t.XCB_XV_IMAGE_FORMAT_INFO_TYPE_RGB;
alias XCB_XV_IMAGE_FORMAT_INFO_TYPE_YUV = xcb_xv_image_format_info_type_t.XCB_XV_IMAGE_FORMAT_INFO_TYPE_YUV;

enum xcb_xv_image_format_info_format_t {
	XCB_XV_IMAGE_FORMAT_INFO_FORMAT_PACKED = 0,
	XCB_XV_IMAGE_FORMAT_INFO_FORMAT_PLANAR = 1
}

alias XCB_XV_IMAGE_FORMAT_INFO_FORMAT_PACKED = xcb_xv_image_format_info_format_t.XCB_XV_IMAGE_FORMAT_INFO_FORMAT_PACKED;
alias XCB_XV_IMAGE_FORMAT_INFO_FORMAT_PLANAR = xcb_xv_image_format_info_format_t.XCB_XV_IMAGE_FORMAT_INFO_FORMAT_PLANAR;

enum xcb_xv_attribute_flag_t {
	XCB_XV_ATTRIBUTE_FLAG_GETTABLE = 1,
	XCB_XV_ATTRIBUTE_FLAG_SETTABLE = 2
}

alias XCB_XV_ATTRIBUTE_FLAG_GETTABLE = xcb_xv_attribute_flag_t.XCB_XV_ATTRIBUTE_FLAG_GETTABLE;
alias XCB_XV_ATTRIBUTE_FLAG_SETTABLE = xcb_xv_attribute_flag_t.XCB_XV_ATTRIBUTE_FLAG_SETTABLE;

enum xcb_xv_video_notify_reason_t {
	XCB_XV_VIDEO_NOTIFY_REASON_STARTED = 0,
	XCB_XV_VIDEO_NOTIFY_REASON_STOPPED = 1,
	XCB_XV_VIDEO_NOTIFY_REASON_BUSY = 2,
	XCB_XV_VIDEO_NOTIFY_REASON_PREEMPTED = 3,
	XCB_XV_VIDEO_NOTIFY_REASON_HARD_ERROR = 4
}

alias XCB_XV_VIDEO_NOTIFY_REASON_STARTED = xcb_xv_video_notify_reason_t.XCB_XV_VIDEO_NOTIFY_REASON_STARTED;
alias XCB_XV_VIDEO_NOTIFY_REASON_STOPPED = xcb_xv_video_notify_reason_t.XCB_XV_VIDEO_NOTIFY_REASON_STOPPED;
alias XCB_XV_VIDEO_NOTIFY_REASON_BUSY = xcb_xv_video_notify_reason_t.XCB_XV_VIDEO_NOTIFY_REASON_BUSY;
alias XCB_XV_VIDEO_NOTIFY_REASON_PREEMPTED = xcb_xv_video_notify_reason_t.XCB_XV_VIDEO_NOTIFY_REASON_PREEMPTED;
alias XCB_XV_VIDEO_NOTIFY_REASON_HARD_ERROR = xcb_xv_video_notify_reason_t.XCB_XV_VIDEO_NOTIFY_REASON_HARD_ERROR;

enum xcb_xv_scanline_order_t {
	XCB_XV_SCANLINE_ORDER_TOP_TO_BOTTOM = 0,
	XCB_XV_SCANLINE_ORDER_BOTTOM_TO_TOP = 1
}

alias XCB_XV_SCANLINE_ORDER_TOP_TO_BOTTOM = xcb_xv_scanline_order_t.XCB_XV_SCANLINE_ORDER_TOP_TO_BOTTOM;
alias XCB_XV_SCANLINE_ORDER_BOTTOM_TO_TOP = xcb_xv_scanline_order_t.XCB_XV_SCANLINE_ORDER_BOTTOM_TO_TOP;

enum xcb_xv_grab_port_status_t {
	XCB_XV_GRAB_PORT_STATUS_SUCCESS = 0,
	XCB_XV_GRAB_PORT_STATUS_BAD_EXTENSION = 1,
	XCB_XV_GRAB_PORT_STATUS_ALREADY_GRABBED = 2,
	XCB_XV_GRAB_PORT_STATUS_INVALID_TIME = 3,
	XCB_XV_GRAB_PORT_STATUS_BAD_REPLY = 4,
	XCB_XV_GRAB_PORT_STATUS_BAD_ALLOC = 5
}

alias XCB_XV_GRAB_PORT_STATUS_SUCCESS = xcb_xv_grab_port_status_t.XCB_XV_GRAB_PORT_STATUS_SUCCESS;
alias XCB_XV_GRAB_PORT_STATUS_BAD_EXTENSION = xcb_xv_grab_port_status_t.XCB_XV_GRAB_PORT_STATUS_BAD_EXTENSION;
alias XCB_XV_GRAB_PORT_STATUS_ALREADY_GRABBED = xcb_xv_grab_port_status_t.XCB_XV_GRAB_PORT_STATUS_ALREADY_GRABBED;
alias XCB_XV_GRAB_PORT_STATUS_INVALID_TIME = xcb_xv_grab_port_status_t.XCB_XV_GRAB_PORT_STATUS_INVALID_TIME;
alias XCB_XV_GRAB_PORT_STATUS_BAD_REPLY = xcb_xv_grab_port_status_t.XCB_XV_GRAB_PORT_STATUS_BAD_REPLY;
alias XCB_XV_GRAB_PORT_STATUS_BAD_ALLOC = xcb_xv_grab_port_status_t.XCB_XV_GRAB_PORT_STATUS_BAD_ALLOC;

/**
 * @brief xcb_xv_rational_t
 **/
struct xcb_xv_rational_t {
	int numerator; /**<  */
	int denominator; /**<  */
}

/**
 * @brief xcb_xv_rational_iterator_t
 **/
struct xcb_xv_rational_iterator_t {
	xcb_xv_rational_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xv_format_t
 **/
struct xcb_xv_format_t {
	xcb_visualid_t visual; /**<  */
	ubyte depth; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_xv_format_iterator_t
 **/
struct xcb_xv_format_iterator_t {
	xcb_xv_format_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xv_adaptor_info_t
 **/
struct xcb_xv_adaptor_info_t {
	xcb_xv_port_t base_id; /**<  */
	ushort name_size; /**<  */
	ushort num_ports; /**<  */
	ushort num_formats; /**<  */
	ubyte type; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_xv_adaptor_info_iterator_t
 **/
struct xcb_xv_adaptor_info_iterator_t {
	xcb_xv_adaptor_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xv_encoding_info_t
 **/
struct xcb_xv_encoding_info_t {
	xcb_xv_encoding_t encoding; /**<  */
	ushort name_size; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_xv_rational_t rate; /**<  */
}

/**
 * @brief xcb_xv_encoding_info_iterator_t
 **/
struct xcb_xv_encoding_info_iterator_t {
	xcb_xv_encoding_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xv_image_t
 **/
struct xcb_xv_image_t {
	uint id; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	uint data_size; /**<  */
	uint num_planes; /**<  */
}

/**
 * @brief xcb_xv_image_iterator_t
 **/
struct xcb_xv_image_iterator_t {
	xcb_xv_image_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xv_attribute_info_t
 **/
struct xcb_xv_attribute_info_t {
	uint flags; /**<  */
	int min; /**<  */
	int max; /**<  */
	uint size; /**<  */
}

/**
 * @brief xcb_xv_attribute_info_iterator_t
 **/
struct xcb_xv_attribute_info_iterator_t {
	xcb_xv_attribute_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xv_image_format_info_t
 **/
struct xcb_xv_image_format_info_t {
	uint id; /**<  */
	ubyte type; /**<  */
	ubyte byte_order; /**<  */
	ubyte[2] pad0; /**<  */
	ubyte[16] guid; /**<  */
	ubyte bpp; /**<  */
	ubyte num_planes; /**<  */
	ubyte[2] pad1; /**<  */
	ubyte depth; /**<  */
	ubyte[3] pad2; /**<  */
	uint red_mask; /**<  */
	uint green_mask; /**<  */
	uint blue_mask; /**<  */
	ubyte format; /**<  */
	ubyte[3] pad3; /**<  */
	uint y_sample_bits; /**<  */
	uint u_sample_bits; /**<  */
	uint v_sample_bits; /**<  */
	uint vhorz_y_period; /**<  */
	uint vhorz_u_period; /**<  */
	uint vhorz_v_period; /**<  */
	uint vvert_y_period; /**<  */
	uint vvert_u_period; /**<  */
	uint vvert_v_period; /**<  */
	ubyte[32] vcomp_order; /**<  */
	ubyte vscanline_order; /**<  */
	ubyte[11] pad4; /**<  */
}

/**
 * @brief xcb_xv_image_format_info_iterator_t
 **/
struct xcb_xv_image_format_info_iterator_t {
	xcb_xv_image_format_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_xv_bad_port. */
enum XCB_XV_BAD_PORT = 0;

/**
 * @brief xcb_xv_bad_port_error_t
 **/
struct xcb_xv_bad_port_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_xv_bad_encoding. */
enum XCB_XV_BAD_ENCODING = 1;

/**
 * @brief xcb_xv_bad_encoding_error_t
 **/
struct xcb_xv_bad_encoding_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_xv_bad_control. */
enum XCB_XV_BAD_CONTROL = 2;

/**
 * @brief xcb_xv_bad_control_error_t
 **/
struct xcb_xv_bad_control_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_xv_video_notify. */
enum XCB_XV_VIDEO_NOTIFY = 0;

/**
 * @brief xcb_xv_video_notify_event_t
 **/
struct xcb_xv_video_notify_event_t {
	ubyte response_type; /**<  */
	ubyte reason; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_xv_port_t port; /**<  */
}

/** Opcode for xcb_xv_port_notify. */
enum XCB_XV_PORT_NOTIFY = 1;

/**
 * @brief xcb_xv_port_notify_event_t
 **/
struct xcb_xv_port_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_atom_t attribute; /**<  */
	int value; /**<  */
}

/**
 * @brief xcb_xv_query_extension_cookie_t
 **/
struct xcb_xv_query_extension_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_extension. */
enum XCB_XV_QUERY_EXTENSION = 0;

/**
 * @brief xcb_xv_query_extension_request_t
 **/
struct xcb_xv_query_extension_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_xv_query_extension_reply_t
 **/
struct xcb_xv_query_extension_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort major; /**<  */
	ushort minor; /**<  */
}

/**
 * @brief xcb_xv_query_adaptors_cookie_t
 **/
struct xcb_xv_query_adaptors_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_adaptors. */
enum XCB_XV_QUERY_ADAPTORS = 1;

/**
 * @brief xcb_xv_query_adaptors_request_t
 **/
struct xcb_xv_query_adaptors_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_xv_query_adaptors_reply_t
 **/
struct xcb_xv_query_adaptors_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_adaptors; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_xv_query_encodings_cookie_t
 **/
struct xcb_xv_query_encodings_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_encodings. */
enum XCB_XV_QUERY_ENCODINGS = 2;

/**
 * @brief xcb_xv_query_encodings_request_t
 **/
struct xcb_xv_query_encodings_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
}

/**
 * @brief xcb_xv_query_encodings_reply_t
 **/
struct xcb_xv_query_encodings_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_encodings; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_xv_grab_port_cookie_t
 **/
struct xcb_xv_grab_port_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xv_grab_port. */
enum XCB_XV_GRAB_PORT = 3;

/**
 * @brief xcb_xv_grab_port_request_t
 **/
struct xcb_xv_grab_port_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_timestamp_t time; /**<  */
}

/**
 * @brief xcb_xv_grab_port_reply_t
 **/
struct xcb_xv_grab_port_reply_t {
	ubyte response_type; /**<  */
	ubyte result; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
}

/** Opcode for xcb_xv_ungrab_port. */
enum XCB_XV_UNGRAB_PORT = 4;

/**
 * @brief xcb_xv_ungrab_port_request_t
 **/
struct xcb_xv_ungrab_port_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_timestamp_t time; /**<  */
}

/** Opcode for xcb_xv_put_video. */
enum XCB_XV_PUT_VIDEO = 5;

/**
 * @brief xcb_xv_put_video_request_t
 **/
struct xcb_xv_put_video_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	short vid_x; /**<  */
	short vid_y; /**<  */
	ushort vid_w; /**<  */
	ushort vid_h; /**<  */
	short drw_x; /**<  */
	short drw_y; /**<  */
	ushort drw_w; /**<  */
	ushort drw_h; /**<  */
}

/** Opcode for xcb_xv_put_still. */
enum XCB_XV_PUT_STILL = 6;

/**
 * @brief xcb_xv_put_still_request_t
 **/
struct xcb_xv_put_still_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	short vid_x; /**<  */
	short vid_y; /**<  */
	ushort vid_w; /**<  */
	ushort vid_h; /**<  */
	short drw_x; /**<  */
	short drw_y; /**<  */
	ushort drw_w; /**<  */
	ushort drw_h; /**<  */
}

/** Opcode for xcb_xv_get_video. */
enum XCB_XV_GET_VIDEO = 7;

/**
 * @brief xcb_xv_get_video_request_t
 **/
struct xcb_xv_get_video_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	short vid_x; /**<  */
	short vid_y; /**<  */
	ushort vid_w; /**<  */
	ushort vid_h; /**<  */
	short drw_x; /**<  */
	short drw_y; /**<  */
	ushort drw_w; /**<  */
	ushort drw_h; /**<  */
}

/** Opcode for xcb_xv_get_still. */
enum XCB_XV_GET_STILL = 8;

/**
 * @brief xcb_xv_get_still_request_t
 **/
struct xcb_xv_get_still_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	short vid_x; /**<  */
	short vid_y; /**<  */
	ushort vid_w; /**<  */
	ushort vid_h; /**<  */
	short drw_x; /**<  */
	short drw_y; /**<  */
	ushort drw_w; /**<  */
	ushort drw_h; /**<  */
}

/** Opcode for xcb_xv_stop_video. */
enum XCB_XV_STOP_VIDEO = 9;

/**
 * @brief xcb_xv_stop_video_request_t
 **/
struct xcb_xv_stop_video_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_drawable_t drawable; /**<  */
}

/** Opcode for xcb_xv_select_video_notify. */
enum XCB_XV_SELECT_VIDEO_NOTIFY = 10;

/**
 * @brief xcb_xv_select_video_notify_request_t
 **/
struct xcb_xv_select_video_notify_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	ubyte onoff; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_xv_select_port_notify. */
enum XCB_XV_SELECT_PORT_NOTIFY = 11;

/**
 * @brief xcb_xv_select_port_notify_request_t
 **/
struct xcb_xv_select_port_notify_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	ubyte onoff; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_xv_query_best_size_cookie_t
 **/
struct xcb_xv_query_best_size_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_best_size. */
enum XCB_XV_QUERY_BEST_SIZE = 12;

/**
 * @brief xcb_xv_query_best_size_request_t
 **/
struct xcb_xv_query_best_size_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	ushort vid_w; /**<  */
	ushort vid_h; /**<  */
	ushort drw_w; /**<  */
	ushort drw_h; /**<  */
	ubyte motion; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_xv_query_best_size_reply_t
 **/
struct xcb_xv_query_best_size_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort actual_width; /**<  */
	ushort actual_height; /**<  */
}

/** Opcode for xcb_xv_set_port_attribute. */
enum XCB_XV_SET_PORT_ATTRIBUTE = 13;

/**
 * @brief xcb_xv_set_port_attribute_request_t
 **/
struct xcb_xv_set_port_attribute_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_atom_t attribute; /**<  */
	int value; /**<  */
}

/**
 * @brief xcb_xv_get_port_attribute_cookie_t
 **/
struct xcb_xv_get_port_attribute_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xv_get_port_attribute. */
enum XCB_XV_GET_PORT_ATTRIBUTE = 14;

/**
 * @brief xcb_xv_get_port_attribute_request_t
 **/
struct xcb_xv_get_port_attribute_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_atom_t attribute; /**<  */
}

/**
 * @brief xcb_xv_get_port_attribute_reply_t
 **/
struct xcb_xv_get_port_attribute_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	int value; /**<  */
}

/**
 * @brief xcb_xv_query_port_attributes_cookie_t
 **/
struct xcb_xv_query_port_attributes_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_port_attributes. */
enum XCB_XV_QUERY_PORT_ATTRIBUTES = 15;

/**
 * @brief xcb_xv_query_port_attributes_request_t
 **/
struct xcb_xv_query_port_attributes_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
}

/**
 * @brief xcb_xv_query_port_attributes_reply_t
 **/
struct xcb_xv_query_port_attributes_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_attributes; /**<  */
	uint text_size; /**<  */
	ubyte[16] pad1; /**<  */
}

/**
 * @brief xcb_xv_list_image_formats_cookie_t
 **/
struct xcb_xv_list_image_formats_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xv_list_image_formats. */
enum XCB_XV_LIST_IMAGE_FORMATS = 16;

/**
 * @brief xcb_xv_list_image_formats_request_t
 **/
struct xcb_xv_list_image_formats_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
}

/**
 * @brief xcb_xv_list_image_formats_reply_t
 **/
struct xcb_xv_list_image_formats_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_formats; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_xv_query_image_attributes_cookie_t
 **/
struct xcb_xv_query_image_attributes_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_image_attributes. */
enum XCB_XV_QUERY_IMAGE_ATTRIBUTES = 17;

/**
 * @brief xcb_xv_query_image_attributes_request_t
 **/
struct xcb_xv_query_image_attributes_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	uint id; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

/**
 * @brief xcb_xv_query_image_attributes_reply_t
 **/
struct xcb_xv_query_image_attributes_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_planes; /**<  */
	uint data_size; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ubyte[12] pad1; /**<  */
}

/** Opcode for xcb_xv_put_image. */
enum XCB_XV_PUT_IMAGE = 18;

/**
 * @brief xcb_xv_put_image_request_t
 **/
struct xcb_xv_put_image_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	uint id; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
	ushort src_w; /**<  */
	ushort src_h; /**<  */
	short drw_x; /**<  */
	short drw_y; /**<  */
	ushort drw_w; /**<  */
	ushort drw_h; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

/** Opcode for xcb_xv_shm_put_image. */
enum XCB_XV_SHM_PUT_IMAGE = 19;

/**
 * @brief xcb_xv_shm_put_image_request_t
 **/
struct xcb_xv_shm_put_image_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xv_port_t port; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	xcb_shm_seg_t shmseg; /**<  */
	uint id; /**<  */
	uint offset; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
	ushort src_w; /**<  */
	ushort src_h; /**<  */
	short drw_x; /**<  */
	short drw_y; /**<  */
	ushort drw_w; /**<  */
	ushort drw_h; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ubyte send_event; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_port_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_port_t)
 */
void xcb_xv_port_next(xcb_xv_port_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_port_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xv_port_end(xcb_xv_port_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_encoding_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_encoding_t)
 */
void xcb_xv_encoding_next(xcb_xv_encoding_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_encoding_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xv_encoding_end(xcb_xv_encoding_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_rational_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_rational_t)
 */
void xcb_xv_rational_next(xcb_xv_rational_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_rational_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xv_rational_end(xcb_xv_rational_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_format_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_format_t)
 */
void xcb_xv_format_next(xcb_xv_format_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_format_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xv_format_end(xcb_xv_format_iterator_t i /**< */ );

int xcb_xv_adaptor_info_sizeof(const void* _buffer /**< */ );

char* xcb_xv_adaptor_info_name(const xcb_xv_adaptor_info_t* R /**< */ );

int xcb_xv_adaptor_info_name_length(const xcb_xv_adaptor_info_t* R /**< */ );

xcb_generic_iterator_t xcb_xv_adaptor_info_name_end(const xcb_xv_adaptor_info_t* R /**< */ );

xcb_xv_format_t* xcb_xv_adaptor_info_formats(const xcb_xv_adaptor_info_t* R /**< */ );

int xcb_xv_adaptor_info_formats_length(const xcb_xv_adaptor_info_t* R /**< */ );

xcb_xv_format_iterator_t xcb_xv_adaptor_info_formats_iterator(const xcb_xv_adaptor_info_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_adaptor_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_adaptor_info_t)
 */
void xcb_xv_adaptor_info_next(xcb_xv_adaptor_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_adaptor_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xv_adaptor_info_end(xcb_xv_adaptor_info_iterator_t i /**< */ );

int xcb_xv_encoding_info_sizeof(const void* _buffer /**< */ );

char* xcb_xv_encoding_info_name(const xcb_xv_encoding_info_t* R /**< */ );

int xcb_xv_encoding_info_name_length(const xcb_xv_encoding_info_t* R /**< */ );

xcb_generic_iterator_t xcb_xv_encoding_info_name_end(const xcb_xv_encoding_info_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_encoding_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_encoding_info_t)
 */
void xcb_xv_encoding_info_next(xcb_xv_encoding_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_encoding_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xv_encoding_info_end(xcb_xv_encoding_info_iterator_t i /**< */ );

int xcb_xv_image_sizeof(const void* _buffer /**< */ );

uint* xcb_xv_image_pitches(const xcb_xv_image_t* R /**< */ );

int xcb_xv_image_pitches_length(const xcb_xv_image_t* R /**< */ );

xcb_generic_iterator_t xcb_xv_image_pitches_end(const xcb_xv_image_t* R /**< */ );

uint* xcb_xv_image_offsets(const xcb_xv_image_t* R /**< */ );

int xcb_xv_image_offsets_length(const xcb_xv_image_t* R /**< */ );

xcb_generic_iterator_t xcb_xv_image_offsets_end(const xcb_xv_image_t* R /**< */ );

ubyte* xcb_xv_image_data(const xcb_xv_image_t* R /**< */ );

int xcb_xv_image_data_length(const xcb_xv_image_t* R /**< */ );

xcb_generic_iterator_t xcb_xv_image_data_end(const xcb_xv_image_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_image_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_image_t)
 */
void xcb_xv_image_next(xcb_xv_image_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_image_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xv_image_end(xcb_xv_image_iterator_t i /**< */ );

int xcb_xv_attribute_info_sizeof(const void* _buffer /**< */ );

char* xcb_xv_attribute_info_name(const xcb_xv_attribute_info_t* R /**< */ );

int xcb_xv_attribute_info_name_length(const xcb_xv_attribute_info_t* R /**< */ );

xcb_generic_iterator_t xcb_xv_attribute_info_name_end(const xcb_xv_attribute_info_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_attribute_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_attribute_info_t)
 */
void xcb_xv_attribute_info_next(xcb_xv_attribute_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_attribute_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xv_attribute_info_end(xcb_xv_attribute_info_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_image_format_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_image_format_info_t)
 */
void xcb_xv_image_format_info_next(xcb_xv_image_format_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_image_format_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xv_image_format_info_end(xcb_xv_image_format_info_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xv_query_extension_cookie_t xcb_xv_query_extension(xcb_connection_t* c /**< */ );

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
xcb_xv_query_extension_cookie_t xcb_xv_query_extension_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_extension_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xv_query_extension_reply_t* xcb_xv_query_extension_reply(xcb_connection_t* c /**< */ , xcb_xv_query_extension_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_xv_query_adaptors_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xv_query_adaptors_cookie_t xcb_xv_query_adaptors(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_xv_query_adaptors_cookie_t xcb_xv_query_adaptors_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

int xcb_xv_query_adaptors_info_length(const xcb_xv_query_adaptors_reply_t* R /**< */ );

xcb_xv_adaptor_info_iterator_t xcb_xv_query_adaptors_info_iterator(const xcb_xv_query_adaptors_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_adaptors_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xv_query_adaptors_reply_t* xcb_xv_query_adaptors_reply(xcb_connection_t* c /**< */ ,
	xcb_xv_query_adaptors_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xv_query_encodings_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xv_query_encodings_cookie_t xcb_xv_query_encodings(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ );

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
xcb_xv_query_encodings_cookie_t xcb_xv_query_encodings_unchecked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ );

int xcb_xv_query_encodings_info_length(const xcb_xv_query_encodings_reply_t* R /**< */ );

xcb_xv_encoding_info_iterator_t xcb_xv_query_encodings_info_iterator(const xcb_xv_query_encodings_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_encodings_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xv_query_encodings_reply_t* xcb_xv_query_encodings_reply(xcb_connection_t* c /**< */ , xcb_xv_query_encodings_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xv_grab_port_cookie_t xcb_xv_grab_port(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_timestamp_t time /**< */ );

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
xcb_xv_grab_port_cookie_t xcb_xv_grab_port_unchecked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_timestamp_t time /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_grab_port_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xv_grab_port_reply_t* xcb_xv_grab_port_reply(xcb_connection_t* c /**< */ , xcb_xv_grab_port_cookie_t cookie /**< */ ,
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
xcb_void_cookie_t xcb_xv_ungrab_port_checked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_timestamp_t time /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_ungrab_port(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_timestamp_t time /**< */ );

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
xcb_void_cookie_t xcb_xv_put_video_checked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , short vid_x /**< */ , short vid_y /**< */ , ushort vid_w /**< */ , ushort vid_h /**< */ , short drw_x /**< */ ,
	short drw_y /**< */ , ushort drw_w /**< */ , ushort drw_h /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_put_video(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	short vid_x /**< */ , short vid_y /**< */ , ushort vid_w /**< */ , ushort vid_h /**< */ , short drw_x /**< */ , short drw_y /**< */ ,
	ushort drw_w /**< */ , ushort drw_h /**< */ );

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
xcb_void_cookie_t xcb_xv_put_still_checked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , short vid_x /**< */ , short vid_y /**< */ , ushort vid_w /**< */ , ushort vid_h /**< */ , short drw_x /**< */ ,
	short drw_y /**< */ , ushort drw_w /**< */ , ushort drw_h /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_put_still(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	short vid_x /**< */ , short vid_y /**< */ , ushort vid_w /**< */ , ushort vid_h /**< */ , short drw_x /**< */ , short drw_y /**< */ ,
	ushort drw_w /**< */ , ushort drw_h /**< */ );

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
xcb_void_cookie_t xcb_xv_get_video_checked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , short vid_x /**< */ , short vid_y /**< */ , ushort vid_w /**< */ , ushort vid_h /**< */ , short drw_x /**< */ ,
	short drw_y /**< */ , ushort drw_w /**< */ , ushort drw_h /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_get_video(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	short vid_x /**< */ , short vid_y /**< */ , ushort vid_w /**< */ , ushort vid_h /**< */ , short drw_x /**< */ , short drw_y /**< */ ,
	ushort drw_w /**< */ , ushort drw_h /**< */ );

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
xcb_void_cookie_t xcb_xv_get_still_checked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , short vid_x /**< */ , short vid_y /**< */ , ushort vid_w /**< */ , ushort vid_h /**< */ , short drw_x /**< */ ,
	short drw_y /**< */ , ushort drw_w /**< */ , ushort drw_h /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_get_still(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	short vid_x /**< */ , short vid_y /**< */ , ushort vid_w /**< */ , ushort vid_h /**< */ , short drw_x /**< */ , short drw_y /**< */ ,
	ushort drw_w /**< */ , ushort drw_h /**< */ );

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
xcb_void_cookie_t xcb_xv_stop_video_checked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_stop_video(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ );

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
xcb_void_cookie_t xcb_xv_select_video_notify_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , ubyte onoff /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_select_video_notify(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , ubyte onoff /**< */ );

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
xcb_void_cookie_t xcb_xv_select_port_notify_checked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , ubyte onoff /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_select_port_notify(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , ubyte onoff /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xv_query_best_size_cookie_t xcb_xv_query_best_size(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , ushort vid_w /**< */ , ushort vid_h /**< */ ,
	ushort drw_w /**< */ , ushort drw_h /**< */ , ubyte motion /**< */ );

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
xcb_xv_query_best_size_cookie_t xcb_xv_query_best_size_unchecked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , ushort vid_w /**< */ ,
	ushort vid_h /**< */ , ushort drw_w /**< */ , ushort drw_h /**< */ , ubyte motion /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_best_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xv_query_best_size_reply_t* xcb_xv_query_best_size_reply(xcb_connection_t* c /**< */ , xcb_xv_query_best_size_cookie_t cookie /**< */ ,
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
xcb_void_cookie_t xcb_xv_set_port_attribute_checked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_atom_t attribute /**< */ ,
	int value /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_set_port_attribute(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_atom_t attribute /**< */ ,
	int value /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xv_get_port_attribute_cookie_t xcb_xv_get_port_attribute(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_atom_t attribute /**< */ );

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
xcb_xv_get_port_attribute_cookie_t xcb_xv_get_port_attribute_unchecked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ ,
	xcb_atom_t attribute /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_get_port_attribute_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xv_get_port_attribute_reply_t* xcb_xv_get_port_attribute_reply(xcb_connection_t* c /**< */ ,
	xcb_xv_get_port_attribute_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xv_query_port_attributes_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xv_query_port_attributes_cookie_t xcb_xv_query_port_attributes(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ );

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
xcb_xv_query_port_attributes_cookie_t xcb_xv_query_port_attributes_unchecked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ );

int xcb_xv_query_port_attributes_attributes_length(const xcb_xv_query_port_attributes_reply_t* R /**< */ );

xcb_xv_attribute_info_iterator_t xcb_xv_query_port_attributes_attributes_iterator(const xcb_xv_query_port_attributes_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_port_attributes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xv_query_port_attributes_reply_t* xcb_xv_query_port_attributes_reply(xcb_connection_t* c /**< */ ,
	xcb_xv_query_port_attributes_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xv_list_image_formats_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xv_list_image_formats_cookie_t xcb_xv_list_image_formats(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ );

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
xcb_xv_list_image_formats_cookie_t xcb_xv_list_image_formats_unchecked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ );

xcb_xv_image_format_info_t* xcb_xv_list_image_formats_format(const xcb_xv_list_image_formats_reply_t* R /**< */ );

int xcb_xv_list_image_formats_format_length(const xcb_xv_list_image_formats_reply_t* R /**< */ );

xcb_xv_image_format_info_iterator_t xcb_xv_list_image_formats_format_iterator(const xcb_xv_list_image_formats_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_list_image_formats_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xv_list_image_formats_reply_t* xcb_xv_list_image_formats_reply(xcb_connection_t* c /**< */ ,
	xcb_xv_list_image_formats_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xv_query_image_attributes_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xv_query_image_attributes_cookie_t xcb_xv_query_image_attributes(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ ,
	uint id /**< */ , ushort width /**< */ , ushort height /**< */ );

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
xcb_xv_query_image_attributes_cookie_t xcb_xv_query_image_attributes_unchecked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ ,
	uint id /**< */ , ushort width /**< */ , ushort height /**< */ );

uint* xcb_xv_query_image_attributes_pitches(const xcb_xv_query_image_attributes_reply_t* R /**< */ );

int xcb_xv_query_image_attributes_pitches_length(const xcb_xv_query_image_attributes_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xv_query_image_attributes_pitches_end(const xcb_xv_query_image_attributes_reply_t* R /**< */ );

uint* xcb_xv_query_image_attributes_offsets(const xcb_xv_query_image_attributes_reply_t* R /**< */ );

int xcb_xv_query_image_attributes_offsets_length(const xcb_xv_query_image_attributes_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xv_query_image_attributes_offsets_end(const xcb_xv_query_image_attributes_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_image_attributes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xv_query_image_attributes_reply_t* xcb_xv_query_image_attributes_reply(xcb_connection_t* c /**< */ ,
	xcb_xv_query_image_attributes_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xv_put_image_sizeof(const void* _buffer /**< */ , uint data_len /**< */ );

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
xcb_void_cookie_t xcb_xv_put_image_checked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , uint id /**< */ , short src_x /**< */ , short src_y /**< */ , ushort src_w /**< */ , ushort src_h /**< */ , short drw_x /**< */ , short drw_y /**< */ ,
	ushort drw_w /**< */ , ushort drw_h /**< */ , ushort width /**< */ , ushort height /**< */ , uint data_len /**< */ , const ubyte* data /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_put_image(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , uint id /**< */ ,
	short src_x /**< */ , short src_y /**< */ , ushort src_w /**< */ , ushort src_h /**< */ , short drw_x /**< */ , short drw_y /**< */ , ushort drw_w /**< */ , ushort drw_h /**< */ ,
	ushort width /**< */ , ushort height /**< */ , uint data_len /**< */ , const ubyte* data /**< */ );

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
xcb_void_cookie_t xcb_xv_shm_put_image_checked(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , xcb_shm_seg_t shmseg /**< */ , uint id /**< */ , uint offset /**< */ , short src_x /**< */ , short src_y /**< */ , ushort src_w /**< */ ,
	ushort src_h /**< */ , short drw_x /**< */ , short drw_y /**< */ , ushort drw_w /**< */ , ushort drw_h /**< */ , ushort width /**< */ ,
	ushort height /**< */ , ubyte send_event /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xv_shm_put_image(xcb_connection_t* c /**< */ , xcb_xv_port_t port /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	xcb_shm_seg_t shmseg /**< */ , uint id /**< */ , uint offset /**< */ , short src_x /**< */ , short src_y /**< */ , ushort src_w /**< */ , ushort src_h /**< */ ,
	short drw_x /**< */ , short drw_y /**< */ , ushort drw_w /**< */ , ushort drw_h /**< */ , ushort width /**< */ ,
	ushort height /**< */ , ubyte send_event /**< */ );

/**
 * @}
 */
