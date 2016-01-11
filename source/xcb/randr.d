/*
 * This file generated automatically from randr.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_RandR_API XCB RandR API
 * @brief RandR XCB Protocol Implementation.
 * @{
 **/

module xcb.randr;

import xcb.xcb;
import xcb.xproto;
import xcb.render;

extern (C):

enum int XCB_RANDR_MAJOR_VERSION = 1;
enum int XCB_RANDR_MINOR_VERSION = 4;

extern (C) __gshared extern xcb_extension_t xcb_randr_id;

alias xcb_randr_mode_t = uint;

/**
 * @brief xcb_randr_mode_iterator_t
 **/
struct xcb_randr_mode_iterator_t {
	xcb_randr_mode_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_randr_crtc_t = uint;

/**
 * @brief xcb_randr_crtc_iterator_t
 **/
struct xcb_randr_crtc_iterator_t {
	xcb_randr_crtc_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_randr_output_t = uint;

/**
 * @brief xcb_randr_output_iterator_t
 **/
struct xcb_randr_output_iterator_t {
	xcb_randr_output_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_randr_provider_t = uint;

/**
 * @brief xcb_randr_provider_iterator_t
 **/
struct xcb_randr_provider_iterator_t {
	xcb_randr_provider_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_randr_bad_output. */
enum XCB_RANDR_BAD_OUTPUT = 0;

/**
 * @brief xcb_randr_bad_output_error_t
 **/
struct xcb_randr_bad_output_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_randr_bad_crtc. */
enum XCB_RANDR_BAD_CRTC = 1;

/**
 * @brief xcb_randr_bad_crtc_error_t
 **/
struct xcb_randr_bad_crtc_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_randr_bad_mode. */
enum XCB_RANDR_BAD_MODE = 2;

/**
 * @brief xcb_randr_bad_mode_error_t
 **/
struct xcb_randr_bad_mode_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_randr_bad_provider. */
enum XCB_RANDR_BAD_PROVIDER = 3;

/**
 * @brief xcb_randr_bad_provider_error_t
 **/
struct xcb_randr_bad_provider_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

enum xcb_randr_rotation_t {
	XCB_RANDR_ROTATION_ROTATE_0 = 1,
	XCB_RANDR_ROTATION_ROTATE_90 = 2,
	XCB_RANDR_ROTATION_ROTATE_180 = 4,
	XCB_RANDR_ROTATION_ROTATE_270 = 8,
	XCB_RANDR_ROTATION_REFLECT_X = 16,
	XCB_RANDR_ROTATION_REFLECT_Y = 32
}

alias XCB_RANDR_ROTATION_ROTATE_0 = xcb_randr_rotation_t.XCB_RANDR_ROTATION_ROTATE_0;
alias XCB_RANDR_ROTATION_ROTATE_90 = xcb_randr_rotation_t.XCB_RANDR_ROTATION_ROTATE_90;
alias XCB_RANDR_ROTATION_ROTATE_180 = xcb_randr_rotation_t.XCB_RANDR_ROTATION_ROTATE_180;
alias XCB_RANDR_ROTATION_ROTATE_270 = xcb_randr_rotation_t.XCB_RANDR_ROTATION_ROTATE_270;
alias XCB_RANDR_ROTATION_REFLECT_X = xcb_randr_rotation_t.XCB_RANDR_ROTATION_REFLECT_X;
alias XCB_RANDR_ROTATION_REFLECT_Y = xcb_randr_rotation_t.XCB_RANDR_ROTATION_REFLECT_Y;

/**
 * @brief xcb_randr_screen_size_t
 **/
struct xcb_randr_screen_size_t {
	ushort width; /**<  */
	ushort height; /**<  */
	ushort mwidth; /**<  */
	ushort mheight; /**<  */
}

/**
 * @brief xcb_randr_screen_size_iterator_t
 **/
struct xcb_randr_screen_size_iterator_t {
	xcb_randr_screen_size_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_randr_refresh_rates_t
 **/
struct xcb_randr_refresh_rates_t {
	ushort nRates; /**<  */
}

/**
 * @brief xcb_randr_refresh_rates_iterator_t
 **/
struct xcb_randr_refresh_rates_iterator_t {
	xcb_randr_refresh_rates_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_randr_query_version_cookie_t
 **/
struct xcb_randr_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_query_version. */
enum XCB_RANDR_QUERY_VERSION = 0;

/**
 * @brief xcb_randr_query_version_request_t
 **/
struct xcb_randr_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
}

/**
 * @brief xcb_randr_query_version_reply_t
 **/
struct xcb_randr_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
	ubyte[16] pad1; /**<  */
}

enum xcb_randr_set_config_t {
	XCB_RANDR_SET_CONFIG_SUCCESS = 0,
	XCB_RANDR_SET_CONFIG_INVALID_CONFIG_TIME = 1,
	XCB_RANDR_SET_CONFIG_INVALID_TIME = 2,
	XCB_RANDR_SET_CONFIG_FAILED = 3
}

alias XCB_RANDR_SET_CONFIG_SUCCESS = xcb_randr_set_config_t.XCB_RANDR_SET_CONFIG_SUCCESS;
alias XCB_RANDR_SET_CONFIG_INVALID_CONFIG_TIME = xcb_randr_set_config_t.XCB_RANDR_SET_CONFIG_INVALID_CONFIG_TIME;
alias XCB_RANDR_SET_CONFIG_INVALID_TIME = xcb_randr_set_config_t.XCB_RANDR_SET_CONFIG_INVALID_TIME;
alias XCB_RANDR_SET_CONFIG_FAILED = xcb_randr_set_config_t.XCB_RANDR_SET_CONFIG_FAILED;

/**
 * @brief xcb_randr_set_screen_config_cookie_t
 **/
struct xcb_randr_set_screen_config_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_set_screen_config. */
enum XCB_RANDR_SET_SCREEN_CONFIG = 2;

/**
 * @brief xcb_randr_set_screen_config_request_t
 **/
struct xcb_randr_set_screen_config_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
	ushort sizeID; /**<  */
	ushort rotation; /**<  */
	ushort rate; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_randr_set_screen_config_reply_t
 **/
struct xcb_randr_set_screen_config_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_timestamp_t new_timestamp; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
	xcb_window_t root; /**<  */
	ushort subpixel_order; /**<  */
	ubyte[10] pad0; /**<  */
}

enum xcb_randr_notify_mask_t {
	XCB_RANDR_NOTIFY_MASK_SCREEN_CHANGE = 1,
	XCB_RANDR_NOTIFY_MASK_CRTC_CHANGE = 2,
	XCB_RANDR_NOTIFY_MASK_OUTPUT_CHANGE = 4,
	XCB_RANDR_NOTIFY_MASK_OUTPUT_PROPERTY = 8,
	XCB_RANDR_NOTIFY_MASK_PROVIDER_CHANGE = 16,
	XCB_RANDR_NOTIFY_MASK_PROVIDER_PROPERTY = 32,
	XCB_RANDR_NOTIFY_MASK_RESOURCE_CHANGE = 64
}

alias XCB_RANDR_NOTIFY_MASK_SCREEN_CHANGE = xcb_randr_notify_mask_t.XCB_RANDR_NOTIFY_MASK_SCREEN_CHANGE;
alias XCB_RANDR_NOTIFY_MASK_CRTC_CHANGE = xcb_randr_notify_mask_t.XCB_RANDR_NOTIFY_MASK_CRTC_CHANGE;
alias XCB_RANDR_NOTIFY_MASK_OUTPUT_CHANGE = xcb_randr_notify_mask_t.XCB_RANDR_NOTIFY_MASK_OUTPUT_CHANGE;
alias XCB_RANDR_NOTIFY_MASK_OUTPUT_PROPERTY = xcb_randr_notify_mask_t.XCB_RANDR_NOTIFY_MASK_OUTPUT_PROPERTY;
alias XCB_RANDR_NOTIFY_MASK_PROVIDER_CHANGE = xcb_randr_notify_mask_t.XCB_RANDR_NOTIFY_MASK_PROVIDER_CHANGE;
alias XCB_RANDR_NOTIFY_MASK_PROVIDER_PROPERTY = xcb_randr_notify_mask_t.XCB_RANDR_NOTIFY_MASK_PROVIDER_PROPERTY;
alias XCB_RANDR_NOTIFY_MASK_RESOURCE_CHANGE = xcb_randr_notify_mask_t.XCB_RANDR_NOTIFY_MASK_RESOURCE_CHANGE;

/** Opcode for xcb_randr_select_input. */
enum XCB_RANDR_SELECT_INPUT = 4;

/**
 * @brief xcb_randr_select_input_request_t
 **/
struct xcb_randr_select_input_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ushort enable; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_randr_get_screen_info_cookie_t
 **/
struct xcb_randr_get_screen_info_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_screen_info. */
enum XCB_RANDR_GET_SCREEN_INFO = 5;

/**
 * @brief xcb_randr_get_screen_info_request_t
 **/
struct xcb_randr_get_screen_info_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_screen_info_reply_t
 **/
struct xcb_randr_get_screen_info_reply_t {
	ubyte response_type; /**<  */
	ubyte rotations; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t root; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
	ushort nSizes; /**<  */
	ushort sizeID; /**<  */
	ushort rotation; /**<  */
	ushort rate; /**<  */
	ushort nInfo; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_randr_get_screen_size_range_cookie_t
 **/
struct xcb_randr_get_screen_size_range_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_screen_size_range. */
enum XCB_RANDR_GET_SCREEN_SIZE_RANGE = 6;

/**
 * @brief xcb_randr_get_screen_size_range_request_t
 **/
struct xcb_randr_get_screen_size_range_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_screen_size_range_reply_t
 **/
struct xcb_randr_get_screen_size_range_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort min_width; /**<  */
	ushort min_height; /**<  */
	ushort max_width; /**<  */
	ushort max_height; /**<  */
	ubyte[16] pad1; /**<  */
}

/** Opcode for xcb_randr_set_screen_size. */
enum XCB_RANDR_SET_SCREEN_SIZE = 7;

/**
 * @brief xcb_randr_set_screen_size_request_t
 **/
struct xcb_randr_set_screen_size_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	uint mm_width; /**<  */
	uint mm_height; /**<  */
}

enum xcb_randr_mode_flag_t {
	XCB_RANDR_MODE_FLAG_HSYNC_POSITIVE = 1,
	XCB_RANDR_MODE_FLAG_HSYNC_NEGATIVE = 2,
	XCB_RANDR_MODE_FLAG_VSYNC_POSITIVE = 4,
	XCB_RANDR_MODE_FLAG_VSYNC_NEGATIVE = 8,
	XCB_RANDR_MODE_FLAG_INTERLACE = 16,
	XCB_RANDR_MODE_FLAG_DOUBLE_SCAN = 32,
	XCB_RANDR_MODE_FLAG_CSYNC = 64,
	XCB_RANDR_MODE_FLAG_CSYNC_POSITIVE = 128,
	XCB_RANDR_MODE_FLAG_CSYNC_NEGATIVE = 256,
	XCB_RANDR_MODE_FLAG_HSKEW_PRESENT = 512,
	XCB_RANDR_MODE_FLAG_BCAST = 1024,
	XCB_RANDR_MODE_FLAG_PIXEL_MULTIPLEX = 2048,
	XCB_RANDR_MODE_FLAG_DOUBLE_CLOCK = 4096,
	XCB_RANDR_MODE_FLAG_HALVE_CLOCK = 8192
}

alias XCB_RANDR_MODE_FLAG_HSYNC_POSITIVE = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_HSYNC_POSITIVE;
alias XCB_RANDR_MODE_FLAG_HSYNC_NEGATIVE = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_HSYNC_NEGATIVE;
alias XCB_RANDR_MODE_FLAG_VSYNC_POSITIVE = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_VSYNC_POSITIVE;
alias XCB_RANDR_MODE_FLAG_VSYNC_NEGATIVE = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_VSYNC_NEGATIVE;
alias XCB_RANDR_MODE_FLAG_INTERLACE = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_INTERLACE;
alias XCB_RANDR_MODE_FLAG_DOUBLE_SCAN = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_DOUBLE_SCAN;
alias XCB_RANDR_MODE_FLAG_CSYNC = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_CSYNC;
alias XCB_RANDR_MODE_FLAG_CSYNC_POSITIVE = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_CSYNC_POSITIVE;
alias XCB_RANDR_MODE_FLAG_CSYNC_NEGATIVE = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_CSYNC_NEGATIVE;
alias XCB_RANDR_MODE_FLAG_HSKEW_PRESENT = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_HSKEW_PRESENT;
alias XCB_RANDR_MODE_FLAG_BCAST = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_BCAST;
alias XCB_RANDR_MODE_FLAG_PIXEL_MULTIPLEX = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_PIXEL_MULTIPLEX;
alias XCB_RANDR_MODE_FLAG_DOUBLE_CLOCK = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_DOUBLE_CLOCK;
alias XCB_RANDR_MODE_FLAG_HALVE_CLOCK = xcb_randr_mode_flag_t.XCB_RANDR_MODE_FLAG_HALVE_CLOCK;

/**
 * @brief xcb_randr_mode_info_t
 **/
struct xcb_randr_mode_info_t {
	uint id; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	uint dot_clock; /**<  */
	ushort hsync_start; /**<  */
	ushort hsync_end; /**<  */
	ushort htotal; /**<  */
	ushort hskew; /**<  */
	ushort vsync_start; /**<  */
	ushort vsync_end; /**<  */
	ushort vtotal; /**<  */
	ushort name_len; /**<  */
	uint mode_flags; /**<  */
}

/**
 * @brief xcb_randr_mode_info_iterator_t
 **/
struct xcb_randr_mode_info_iterator_t {
	xcb_randr_mode_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_randr_get_screen_resources_cookie_t
 **/
struct xcb_randr_get_screen_resources_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_screen_resources. */
enum XCB_RANDR_GET_SCREEN_RESOURCES = 8;

/**
 * @brief xcb_randr_get_screen_resources_request_t
 **/
struct xcb_randr_get_screen_resources_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_screen_resources_reply_t
 **/
struct xcb_randr_get_screen_resources_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
	ushort num_crtcs; /**<  */
	ushort num_outputs; /**<  */
	ushort num_modes; /**<  */
	ushort names_len; /**<  */
	ubyte[8] pad1; /**<  */
}

enum xcb_randr_connection_t {
	XCB_RANDR_CONNECTION_CONNECTED = 0,
	XCB_RANDR_CONNECTION_DISCONNECTED = 1,
	XCB_RANDR_CONNECTION_UNKNOWN = 2
}

alias XCB_RANDR_CONNECTION_CONNECTED = xcb_randr_connection_t.XCB_RANDR_CONNECTION_CONNECTED;
alias XCB_RANDR_CONNECTION_DISCONNECTED = xcb_randr_connection_t.XCB_RANDR_CONNECTION_DISCONNECTED;
alias XCB_RANDR_CONNECTION_UNKNOWN = xcb_randr_connection_t.XCB_RANDR_CONNECTION_UNKNOWN;

/**
 * @brief xcb_randr_get_output_info_cookie_t
 **/
struct xcb_randr_get_output_info_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_output_info. */
enum XCB_RANDR_GET_OUTPUT_INFO = 9;

/**
 * @brief xcb_randr_get_output_info_request_t
 **/
struct xcb_randr_get_output_info_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_output_t output; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
}

/**
 * @brief xcb_randr_get_output_info_reply_t
 **/
struct xcb_randr_get_output_info_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
	uint mm_width; /**<  */
	uint mm_height; /**<  */
	ubyte connection; /**<  */
	ubyte subpixel_order; /**<  */
	ushort num_crtcs; /**<  */
	ushort num_modes; /**<  */
	ushort num_preferred; /**<  */
	ushort num_clones; /**<  */
	ushort name_len; /**<  */
}

/**
 * @brief xcb_randr_list_output_properties_cookie_t
 **/
struct xcb_randr_list_output_properties_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_list_output_properties. */
enum XCB_RANDR_LIST_OUTPUT_PROPERTIES = 10;

/**
 * @brief xcb_randr_list_output_properties_request_t
 **/
struct xcb_randr_list_output_properties_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_output_t output; /**<  */
}

/**
 * @brief xcb_randr_list_output_properties_reply_t
 **/
struct xcb_randr_list_output_properties_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_atoms; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_randr_query_output_property_cookie_t
 **/
struct xcb_randr_query_output_property_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_query_output_property. */
enum XCB_RANDR_QUERY_OUTPUT_PROPERTY = 11;

/**
 * @brief xcb_randr_query_output_property_request_t
 **/
struct xcb_randr_query_output_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_output_t output; /**<  */
	xcb_atom_t property; /**<  */
}

/**
 * @brief xcb_randr_query_output_property_reply_t
 **/
struct xcb_randr_query_output_property_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte pending; /**<  */
	ubyte range; /**<  */
	ubyte immutable_; /**<  */
	ubyte[21] pad1; /**<  */
}

/** Opcode for xcb_randr_configure_output_property. */
enum XCB_RANDR_CONFIGURE_OUTPUT_PROPERTY = 12;

/**
 * @brief xcb_randr_configure_output_property_request_t
 **/
struct xcb_randr_configure_output_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_output_t output; /**<  */
	xcb_atom_t property; /**<  */
	ubyte pending; /**<  */
	ubyte range; /**<  */
	ubyte[2] pad0; /**<  */
}

/** Opcode for xcb_randr_change_output_property. */
enum XCB_RANDR_CHANGE_OUTPUT_PROPERTY = 13;

/**
 * @brief xcb_randr_change_output_property_request_t
 **/
struct xcb_randr_change_output_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_output_t output; /**<  */
	xcb_atom_t property; /**<  */
	xcb_atom_t type; /**<  */
	ubyte format; /**<  */
	ubyte mode; /**<  */
	ubyte[2] pad0; /**<  */
	uint num_units; /**<  */
}

/** Opcode for xcb_randr_delete_output_property. */
enum XCB_RANDR_DELETE_OUTPUT_PROPERTY = 14;

/**
 * @brief xcb_randr_delete_output_property_request_t
 **/
struct xcb_randr_delete_output_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_output_t output; /**<  */
	xcb_atom_t property; /**<  */
}

/**
 * @brief xcb_randr_get_output_property_cookie_t
 **/
struct xcb_randr_get_output_property_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_output_property. */
enum XCB_RANDR_GET_OUTPUT_PROPERTY = 15;

/**
 * @brief xcb_randr_get_output_property_request_t
 **/
struct xcb_randr_get_output_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_output_t output; /**<  */
	xcb_atom_t property; /**<  */
	xcb_atom_t type; /**<  */
	uint long_offset; /**<  */
	uint long_length; /**<  */
	ubyte delete_; /**<  */
	ubyte pending; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_randr_get_output_property_reply_t
 **/
struct xcb_randr_get_output_property_reply_t {
	ubyte response_type; /**<  */
	ubyte format; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_atom_t type; /**<  */
	uint bytes_after; /**<  */
	uint num_items; /**<  */
	ubyte[12] pad0; /**<  */
}

/**
 * @brief xcb_randr_create_mode_cookie_t
 **/
struct xcb_randr_create_mode_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_create_mode. */
enum XCB_RANDR_CREATE_MODE = 16;

/**
 * @brief xcb_randr_create_mode_request_t
 **/
struct xcb_randr_create_mode_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_randr_mode_info_t mode_info; /**<  */
}

/**
 * @brief xcb_randr_create_mode_reply_t
 **/
struct xcb_randr_create_mode_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_randr_mode_t mode; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_randr_destroy_mode. */
enum XCB_RANDR_DESTROY_MODE = 17;

/**
 * @brief xcb_randr_destroy_mode_request_t
 **/
struct xcb_randr_destroy_mode_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_mode_t mode; /**<  */
}

/** Opcode for xcb_randr_add_output_mode. */
enum XCB_RANDR_ADD_OUTPUT_MODE = 18;

/**
 * @brief xcb_randr_add_output_mode_request_t
 **/
struct xcb_randr_add_output_mode_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_output_t output; /**<  */
	xcb_randr_mode_t mode; /**<  */
}

/** Opcode for xcb_randr_delete_output_mode. */
enum XCB_RANDR_DELETE_OUTPUT_MODE = 19;

/**
 * @brief xcb_randr_delete_output_mode_request_t
 **/
struct xcb_randr_delete_output_mode_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_output_t output; /**<  */
	xcb_randr_mode_t mode; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_info_cookie_t
 **/
struct xcb_randr_get_crtc_info_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_crtc_info. */
enum XCB_RANDR_GET_CRTC_INFO = 20;

/**
 * @brief xcb_randr_get_crtc_info_request_t
 **/
struct xcb_randr_get_crtc_info_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_info_reply_t
 **/
struct xcb_randr_get_crtc_info_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	xcb_randr_mode_t mode; /**<  */
	ushort rotation; /**<  */
	ushort rotations; /**<  */
	ushort num_outputs; /**<  */
	ushort num_possible_outputs; /**<  */
}

/**
 * @brief xcb_randr_set_crtc_config_cookie_t
 **/
struct xcb_randr_set_crtc_config_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_set_crtc_config. */
enum XCB_RANDR_SET_CRTC_CONFIG = 21;

/**
 * @brief xcb_randr_set_crtc_config_request_t
 **/
struct xcb_randr_set_crtc_config_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
	short x; /**<  */
	short y; /**<  */
	xcb_randr_mode_t mode; /**<  */
	ushort rotation; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_randr_set_crtc_config_reply_t
 **/
struct xcb_randr_set_crtc_config_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	ubyte[20] pad0; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_gamma_size_cookie_t
 **/
struct xcb_randr_get_crtc_gamma_size_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_crtc_gamma_size. */
enum XCB_RANDR_GET_CRTC_GAMMA_SIZE = 22;

/**
 * @brief xcb_randr_get_crtc_gamma_size_request_t
 **/
struct xcb_randr_get_crtc_gamma_size_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_gamma_size_reply_t
 **/
struct xcb_randr_get_crtc_gamma_size_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort size; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_gamma_cookie_t
 **/
struct xcb_randr_get_crtc_gamma_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_crtc_gamma. */
enum XCB_RANDR_GET_CRTC_GAMMA = 23;

/**
 * @brief xcb_randr_get_crtc_gamma_request_t
 **/
struct xcb_randr_get_crtc_gamma_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_gamma_reply_t
 **/
struct xcb_randr_get_crtc_gamma_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort size; /**<  */
	ubyte[22] pad1; /**<  */
}

/** Opcode for xcb_randr_set_crtc_gamma. */
enum XCB_RANDR_SET_CRTC_GAMMA = 24;

/**
 * @brief xcb_randr_set_crtc_gamma_request_t
 **/
struct xcb_randr_set_crtc_gamma_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
	ushort size; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_randr_get_screen_resources_current_cookie_t
 **/
struct xcb_randr_get_screen_resources_current_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_screen_resources_current. */
enum XCB_RANDR_GET_SCREEN_RESOURCES_CURRENT = 25;

/**
 * @brief xcb_randr_get_screen_resources_current_request_t
 **/
struct xcb_randr_get_screen_resources_current_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_screen_resources_current_reply_t
 **/
struct xcb_randr_get_screen_resources_current_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
	ushort num_crtcs; /**<  */
	ushort num_outputs; /**<  */
	ushort num_modes; /**<  */
	ushort names_len; /**<  */
	ubyte[8] pad1; /**<  */
}

enum xcb_randr_transform_t {
	XCB_RANDR_TRANSFORM_UNIT = 1,
	XCB_RANDR_TRANSFORM_SCALE_UP = 2,
	XCB_RANDR_TRANSFORM_SCALE_DOWN = 4,
	XCB_RANDR_TRANSFORM_PROJECTIVE = 8
}

alias XCB_RANDR_TRANSFORM_UNIT = xcb_randr_transform_t.XCB_RANDR_TRANSFORM_UNIT;
alias XCB_RANDR_TRANSFORM_SCALE_UP = xcb_randr_transform_t.XCB_RANDR_TRANSFORM_SCALE_UP;
alias XCB_RANDR_TRANSFORM_SCALE_DOWN = xcb_randr_transform_t.XCB_RANDR_TRANSFORM_SCALE_DOWN;
alias XCB_RANDR_TRANSFORM_PROJECTIVE = xcb_randr_transform_t.XCB_RANDR_TRANSFORM_PROJECTIVE;

/** Opcode for xcb_randr_set_crtc_transform. */
enum XCB_RANDR_SET_CRTC_TRANSFORM = 26;

/**
 * @brief xcb_randr_set_crtc_transform_request_t
 **/
struct xcb_randr_set_crtc_transform_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
	xcb_render_transform_t transform; /**<  */
	ushort filter_len; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_transform_cookie_t
 **/
struct xcb_randr_get_crtc_transform_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_crtc_transform. */
enum XCB_RANDR_GET_CRTC_TRANSFORM = 27;

/**
 * @brief xcb_randr_get_crtc_transform_request_t
 **/
struct xcb_randr_get_crtc_transform_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_transform_reply_t
 **/
struct xcb_randr_get_crtc_transform_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_render_transform_t pending_transform; /**<  */
	ubyte has_transforms; /**<  */
	ubyte[3] pad1; /**<  */
	xcb_render_transform_t current_transform; /**<  */
	ubyte[4] pad2; /**<  */
	ushort pending_len; /**<  */
	ushort pending_nparams; /**<  */
	ushort current_len; /**<  */
	ushort current_nparams; /**<  */
}

/**
 * @brief xcb_randr_get_panning_cookie_t
 **/
struct xcb_randr_get_panning_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_panning. */
enum XCB_RANDR_GET_PANNING = 28;

/**
 * @brief xcb_randr_get_panning_request_t
 **/
struct xcb_randr_get_panning_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
}

/**
 * @brief xcb_randr_get_panning_reply_t
 **/
struct xcb_randr_get_panning_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	ushort left; /**<  */
	ushort top; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort track_left; /**<  */
	ushort track_top; /**<  */
	ushort track_width; /**<  */
	ushort track_height; /**<  */
	short border_left; /**<  */
	short border_top; /**<  */
	short border_right; /**<  */
	short border_bottom; /**<  */
}

/**
 * @brief xcb_randr_set_panning_cookie_t
 **/
struct xcb_randr_set_panning_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_set_panning. */
enum XCB_RANDR_SET_PANNING = 29;

/**
 * @brief xcb_randr_set_panning_request_t
 **/
struct xcb_randr_set_panning_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	ushort left; /**<  */
	ushort top; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort track_left; /**<  */
	ushort track_top; /**<  */
	ushort track_width; /**<  */
	ushort track_height; /**<  */
	short border_left; /**<  */
	short border_top; /**<  */
	short border_right; /**<  */
	short border_bottom; /**<  */
}

/**
 * @brief xcb_randr_set_panning_reply_t
 **/
struct xcb_randr_set_panning_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_timestamp_t timestamp; /**<  */
}

/** Opcode for xcb_randr_set_output_primary. */
enum XCB_RANDR_SET_OUTPUT_PRIMARY = 30;

/**
 * @brief xcb_randr_set_output_primary_request_t
 **/
struct xcb_randr_set_output_primary_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_randr_output_t output; /**<  */
}

/**
 * @brief xcb_randr_get_output_primary_cookie_t
 **/
struct xcb_randr_get_output_primary_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_output_primary. */
enum XCB_RANDR_GET_OUTPUT_PRIMARY = 31;

/**
 * @brief xcb_randr_get_output_primary_request_t
 **/
struct xcb_randr_get_output_primary_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_output_primary_reply_t
 **/
struct xcb_randr_get_output_primary_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_randr_output_t output; /**<  */
}

/**
 * @brief xcb_randr_get_providers_cookie_t
 **/
struct xcb_randr_get_providers_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_providers. */
enum XCB_RANDR_GET_PROVIDERS = 32;

/**
 * @brief xcb_randr_get_providers_request_t
 **/
struct xcb_randr_get_providers_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_providers_reply_t
 **/
struct xcb_randr_get_providers_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	ushort num_providers; /**<  */
	ubyte[18] pad1; /**<  */
}

enum xcb_randr_provider_capability_t {
	XCB_RANDR_PROVIDER_CAPABILITY_SOURCE_OUTPUT = 1,
	XCB_RANDR_PROVIDER_CAPABILITY_SINK_OUTPUT = 2,
	XCB_RANDR_PROVIDER_CAPABILITY_SOURCE_OFFLOAD = 4,
	XCB_RANDR_PROVIDER_CAPABILITY_SINK_OFFLOAD = 8
}

alias XCB_RANDR_PROVIDER_CAPABILITY_SOURCE_OUTPUT = xcb_randr_provider_capability_t.XCB_RANDR_PROVIDER_CAPABILITY_SOURCE_OUTPUT;
alias XCB_RANDR_PROVIDER_CAPABILITY_SINK_OUTPUT = xcb_randr_provider_capability_t.XCB_RANDR_PROVIDER_CAPABILITY_SINK_OUTPUT;
alias XCB_RANDR_PROVIDER_CAPABILITY_SOURCE_OFFLOAD = xcb_randr_provider_capability_t.XCB_RANDR_PROVIDER_CAPABILITY_SOURCE_OFFLOAD;
alias XCB_RANDR_PROVIDER_CAPABILITY_SINK_OFFLOAD = xcb_randr_provider_capability_t.XCB_RANDR_PROVIDER_CAPABILITY_SINK_OFFLOAD;

/**
 * @brief xcb_randr_get_provider_info_cookie_t
 **/
struct xcb_randr_get_provider_info_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_provider_info. */
enum XCB_RANDR_GET_PROVIDER_INFO = 33;

/**
 * @brief xcb_randr_get_provider_info_request_t
 **/
struct xcb_randr_get_provider_info_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_provider_t provider; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
}

/**
 * @brief xcb_randr_get_provider_info_reply_t
 **/
struct xcb_randr_get_provider_info_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	uint capabilities; /**<  */
	ushort num_crtcs; /**<  */
	ushort num_outputs; /**<  */
	ushort num_associated_providers; /**<  */
	ushort name_len; /**<  */
	ubyte[8] pad0; /**<  */
}

/** Opcode for xcb_randr_set_provider_offload_sink. */
enum XCB_RANDR_SET_PROVIDER_OFFLOAD_SINK = 34;

/**
 * @brief xcb_randr_set_provider_offload_sink_request_t
 **/
struct xcb_randr_set_provider_offload_sink_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_provider_t provider; /**<  */
	xcb_randr_provider_t sink_provider; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
}

/** Opcode for xcb_randr_set_provider_output_source. */
enum XCB_RANDR_SET_PROVIDER_OUTPUT_SOURCE = 35;

/**
 * @brief xcb_randr_set_provider_output_source_request_t
 **/
struct xcb_randr_set_provider_output_source_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_provider_t provider; /**<  */
	xcb_randr_provider_t source_provider; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
}

/**
 * @brief xcb_randr_list_provider_properties_cookie_t
 **/
struct xcb_randr_list_provider_properties_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_list_provider_properties. */
enum XCB_RANDR_LIST_PROVIDER_PROPERTIES = 36;

/**
 * @brief xcb_randr_list_provider_properties_request_t
 **/
struct xcb_randr_list_provider_properties_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_provider_t provider; /**<  */
}

/**
 * @brief xcb_randr_list_provider_properties_reply_t
 **/
struct xcb_randr_list_provider_properties_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_atoms; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_randr_query_provider_property_cookie_t
 **/
struct xcb_randr_query_provider_property_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_query_provider_property. */
enum XCB_RANDR_QUERY_PROVIDER_PROPERTY = 37;

/**
 * @brief xcb_randr_query_provider_property_request_t
 **/
struct xcb_randr_query_provider_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_provider_t provider; /**<  */
	xcb_atom_t property; /**<  */
}

/**
 * @brief xcb_randr_query_provider_property_reply_t
 **/
struct xcb_randr_query_provider_property_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte pending; /**<  */
	ubyte range; /**<  */
	ubyte immutable_; /**<  */
	ubyte[21] pad1; /**<  */
}

/** Opcode for xcb_randr_configure_provider_property. */
enum XCB_RANDR_CONFIGURE_PROVIDER_PROPERTY = 38;

/**
 * @brief xcb_randr_configure_provider_property_request_t
 **/
struct xcb_randr_configure_provider_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_provider_t provider; /**<  */
	xcb_atom_t property; /**<  */
	ubyte pending; /**<  */
	ubyte range; /**<  */
	ubyte[2] pad0; /**<  */
}

/** Opcode for xcb_randr_change_provider_property. */
enum XCB_RANDR_CHANGE_PROVIDER_PROPERTY = 39;

/**
 * @brief xcb_randr_change_provider_property_request_t
 **/
struct xcb_randr_change_provider_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_provider_t provider; /**<  */
	xcb_atom_t property; /**<  */
	xcb_atom_t type; /**<  */
	ubyte format; /**<  */
	ubyte mode; /**<  */
	ubyte[2] pad0; /**<  */
	uint num_items; /**<  */
}

/** Opcode for xcb_randr_delete_provider_property. */
enum XCB_RANDR_DELETE_PROVIDER_PROPERTY = 40;

/**
 * @brief xcb_randr_delete_provider_property_request_t
 **/
struct xcb_randr_delete_provider_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_provider_t provider; /**<  */
	xcb_atom_t property; /**<  */
}

/**
 * @brief xcb_randr_get_provider_property_cookie_t
 **/
struct xcb_randr_get_provider_property_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_provider_property. */
enum XCB_RANDR_GET_PROVIDER_PROPERTY = 41;

/**
 * @brief xcb_randr_get_provider_property_request_t
 **/
struct xcb_randr_get_provider_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_randr_provider_t provider; /**<  */
	xcb_atom_t property; /**<  */
	xcb_atom_t type; /**<  */
	uint long_offset; /**<  */
	uint long_length; /**<  */
	ubyte delete_; /**<  */
	ubyte pending; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_randr_get_provider_property_reply_t
 **/
struct xcb_randr_get_provider_property_reply_t {
	ubyte response_type; /**<  */
	ubyte format; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_atom_t type; /**<  */
	uint bytes_after; /**<  */
	uint num_items; /**<  */
	ubyte[12] pad0; /**<  */
}

/** Opcode for xcb_randr_screen_change_notify. */
enum XCB_RANDR_SCREEN_CHANGE_NOTIFY = 0;

/**
 * @brief xcb_randr_screen_change_notify_event_t
 **/
struct xcb_randr_screen_change_notify_event_t {
	ubyte response_type; /**<  */
	ubyte rotation; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t request_window; /**<  */
	ushort sizeID; /**<  */
	ushort subpixel_order; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort mwidth; /**<  */
	ushort mheight; /**<  */
}

enum xcb_randr_notify_t {
	XCB_RANDR_NOTIFY_CRTC_CHANGE = 0,
	XCB_RANDR_NOTIFY_OUTPUT_CHANGE = 1,
	XCB_RANDR_NOTIFY_OUTPUT_PROPERTY = 2,
	XCB_RANDR_NOTIFY_PROVIDER_CHANGE = 3,
	XCB_RANDR_NOTIFY_PROVIDER_PROPERTY = 4,
	XCB_RANDR_NOTIFY_RESOURCE_CHANGE = 5
}

alias XCB_RANDR_NOTIFY_CRTC_CHANGE = xcb_randr_notify_t.XCB_RANDR_NOTIFY_CRTC_CHANGE;
alias XCB_RANDR_NOTIFY_OUTPUT_CHANGE = xcb_randr_notify_t.XCB_RANDR_NOTIFY_OUTPUT_CHANGE;
alias XCB_RANDR_NOTIFY_OUTPUT_PROPERTY = xcb_randr_notify_t.XCB_RANDR_NOTIFY_OUTPUT_PROPERTY;
alias XCB_RANDR_NOTIFY_PROVIDER_CHANGE = xcb_randr_notify_t.XCB_RANDR_NOTIFY_PROVIDER_CHANGE;
alias XCB_RANDR_NOTIFY_PROVIDER_PROPERTY = xcb_randr_notify_t.XCB_RANDR_NOTIFY_PROVIDER_PROPERTY;
alias XCB_RANDR_NOTIFY_RESOURCE_CHANGE = xcb_randr_notify_t.XCB_RANDR_NOTIFY_RESOURCE_CHANGE;

/**
 * @brief xcb_randr_crtc_change_t
 **/
struct xcb_randr_crtc_change_t {
	xcb_timestamp_t timestamp; /**<  */
	xcb_window_t window; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
	xcb_randr_mode_t mode; /**<  */
	ushort rotation; /**<  */
	ubyte[2] pad0; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

/**
 * @brief xcb_randr_crtc_change_iterator_t
 **/
struct xcb_randr_crtc_change_iterator_t {
	xcb_randr_crtc_change_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_randr_output_change_t
 **/
struct xcb_randr_output_change_t {
	xcb_timestamp_t timestamp; /**<  */
	xcb_timestamp_t config_timestamp; /**<  */
	xcb_window_t window; /**<  */
	xcb_randr_output_t output; /**<  */
	xcb_randr_crtc_t crtc; /**<  */
	xcb_randr_mode_t mode; /**<  */
	ushort rotation; /**<  */
	ubyte connection; /**<  */
	ubyte subpixel_order; /**<  */
}

/**
 * @brief xcb_randr_output_change_iterator_t
 **/
struct xcb_randr_output_change_iterator_t {
	xcb_randr_output_change_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_randr_output_property_t
 **/
struct xcb_randr_output_property_t {
	xcb_window_t window; /**<  */
	xcb_randr_output_t output; /**<  */
	xcb_atom_t atom; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	ubyte status; /**<  */
	ubyte[11] pad0; /**<  */
}

/**
 * @brief xcb_randr_output_property_iterator_t
 **/
struct xcb_randr_output_property_iterator_t {
	xcb_randr_output_property_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_randr_provider_change_t
 **/
struct xcb_randr_provider_change_t {
	xcb_timestamp_t timestamp; /**<  */
	xcb_window_t window; /**<  */
	xcb_randr_provider_t provider; /**<  */
	ubyte[16] pad0; /**<  */
}

/**
 * @brief xcb_randr_provider_change_iterator_t
 **/
struct xcb_randr_provider_change_iterator_t {
	xcb_randr_provider_change_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_randr_provider_property_t
 **/
struct xcb_randr_provider_property_t {
	xcb_window_t window; /**<  */
	xcb_randr_provider_t provider; /**<  */
	xcb_atom_t atom; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	ubyte state; /**<  */
	ubyte[11] pad0; /**<  */
}

/**
 * @brief xcb_randr_provider_property_iterator_t
 **/
struct xcb_randr_provider_property_iterator_t {
	xcb_randr_provider_property_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_randr_resource_change_t
 **/
struct xcb_randr_resource_change_t {
	xcb_timestamp_t timestamp; /**<  */
	xcb_window_t window; /**<  */
	ubyte[20] pad0; /**<  */
}

/**
 * @brief xcb_randr_resource_change_iterator_t
 **/
struct xcb_randr_resource_change_iterator_t {
	xcb_randr_resource_change_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_randr_notify_data_t
 **/
union xcb_randr_notify_data_t {
	xcb_randr_crtc_change_t cc; /**<  */
	xcb_randr_output_change_t oc; /**<  */
	xcb_randr_output_property_t op; /**<  */
	xcb_randr_provider_change_t pc; /**<  */
	xcb_randr_provider_property_t pp; /**<  */
	xcb_randr_resource_change_t rc; /**<  */
}

/**
 * @brief xcb_randr_notify_data_iterator_t
 **/
struct xcb_randr_notify_data_iterator_t {
	xcb_randr_notify_data_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_randr_notify. */
enum XCB_RANDR_NOTIFY = 1;

/**
 * @brief xcb_randr_notify_event_t
 **/
struct xcb_randr_notify_event_t {
	ubyte response_type; /**<  */
	ubyte subCode; /**<  */
	ushort sequence; /**<  */
	xcb_randr_notify_data_t u; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_mode_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_mode_t)
 */
void xcb_randr_mode_next(xcb_randr_mode_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_mode_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_mode_end(xcb_randr_mode_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_crtc_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_crtc_t)
 */
void xcb_randr_crtc_next(xcb_randr_crtc_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_crtc_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_crtc_end(xcb_randr_crtc_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_output_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_output_t)
 */
void xcb_randr_output_next(xcb_randr_output_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_output_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_output_end(xcb_randr_output_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_provider_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_provider_t)
 */
void xcb_randr_provider_next(xcb_randr_provider_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_provider_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_provider_end(xcb_randr_provider_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_screen_size_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_screen_size_t)
 */
void xcb_randr_screen_size_next(xcb_randr_screen_size_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_screen_size_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_screen_size_end(xcb_randr_screen_size_iterator_t i /**< */ );

int xcb_randr_refresh_rates_sizeof(const void* _buffer /**< */ );

ushort* xcb_randr_refresh_rates_rates(const xcb_randr_refresh_rates_t* R /**< */ );

int xcb_randr_refresh_rates_rates_length(const xcb_randr_refresh_rates_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_refresh_rates_rates_end(const xcb_randr_refresh_rates_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_refresh_rates_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_refresh_rates_t)
 */
void xcb_randr_refresh_rates_next(xcb_randr_refresh_rates_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_refresh_rates_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_refresh_rates_end(xcb_randr_refresh_rates_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_query_version_cookie_t xcb_randr_query_version(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ );

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
xcb_randr_query_version_cookie_t xcb_randr_query_version_unchecked(xcb_connection_t* c /**< */ , uint major_version /**< */ ,
	uint minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_query_version_reply_t* xcb_randr_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_set_screen_config_cookie_t xcb_randr_set_screen_config(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_timestamp_t timestamp /**< */ , xcb_timestamp_t config_timestamp /**< */ , ushort sizeID /**< */ , ushort rotation /**< */ ,
	ushort rate /**< */ );

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
xcb_randr_set_screen_config_cookie_t xcb_randr_set_screen_config_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_timestamp_t timestamp /**< */ , xcb_timestamp_t config_timestamp /**< */ , ushort sizeID /**< */ , ushort rotation /**< */ ,
	ushort rate /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_set_screen_config_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_set_screen_config_reply_t* xcb_randr_set_screen_config_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_set_screen_config_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_randr_select_input_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort enable /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_select_input(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort enable /**< */ );

int xcb_randr_get_screen_info_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_screen_info_cookie_t xcb_randr_get_screen_info(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_randr_get_screen_info_cookie_t xcb_randr_get_screen_info_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

xcb_randr_screen_size_t* xcb_randr_get_screen_info_sizes(const xcb_randr_get_screen_info_reply_t* R /**< */ );

int xcb_randr_get_screen_info_sizes_length(const xcb_randr_get_screen_info_reply_t* R /**< */ );

xcb_randr_screen_size_iterator_t xcb_randr_get_screen_info_sizes_iterator(const xcb_randr_get_screen_info_reply_t* R /**< */ );

int xcb_randr_get_screen_info_rates_length(const xcb_randr_get_screen_info_reply_t* R /**< */ );

xcb_randr_refresh_rates_iterator_t xcb_randr_get_screen_info_rates_iterator(const xcb_randr_get_screen_info_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_screen_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_screen_info_reply_t* xcb_randr_get_screen_info_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_screen_info_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_screen_size_range_cookie_t xcb_randr_get_screen_size_range(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_randr_get_screen_size_range_cookie_t xcb_randr_get_screen_size_range_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_screen_size_range_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_screen_size_range_reply_t* xcb_randr_get_screen_size_range_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_screen_size_range_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_randr_set_screen_size_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort width /**< */ , ushort height /**< */ ,
	uint mm_width /**< */ , uint mm_height /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_set_screen_size(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort width /**< */ , ushort height /**< */ ,
	uint mm_width /**< */ , uint mm_height /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_mode_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_mode_info_t)
 */
void xcb_randr_mode_info_next(xcb_randr_mode_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_mode_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_mode_info_end(xcb_randr_mode_info_iterator_t i /**< */ );

int xcb_randr_get_screen_resources_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_screen_resources_cookie_t xcb_randr_get_screen_resources(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_randr_get_screen_resources_cookie_t xcb_randr_get_screen_resources_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

xcb_randr_crtc_t* xcb_randr_get_screen_resources_crtcs(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

int xcb_randr_get_screen_resources_crtcs_length(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_screen_resources_crtcs_end(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

xcb_randr_output_t* xcb_randr_get_screen_resources_outputs(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

int xcb_randr_get_screen_resources_outputs_length(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_screen_resources_outputs_end(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

xcb_randr_mode_info_t* xcb_randr_get_screen_resources_modes(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

int xcb_randr_get_screen_resources_modes_length(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

xcb_randr_mode_info_iterator_t xcb_randr_get_screen_resources_modes_iterator(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

ubyte* xcb_randr_get_screen_resources_names(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

int xcb_randr_get_screen_resources_names_length(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_screen_resources_names_end(const xcb_randr_get_screen_resources_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_screen_resources_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_screen_resources_reply_t* xcb_randr_get_screen_resources_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_screen_resources_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_get_output_info_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_output_info_cookie_t xcb_randr_get_output_info(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ ,
	xcb_timestamp_t config_timestamp /**< */ );

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
xcb_randr_get_output_info_cookie_t xcb_randr_get_output_info_unchecked(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ ,
	xcb_timestamp_t config_timestamp /**< */ );

xcb_randr_crtc_t* xcb_randr_get_output_info_crtcs(const xcb_randr_get_output_info_reply_t* R /**< */ );

int xcb_randr_get_output_info_crtcs_length(const xcb_randr_get_output_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_output_info_crtcs_end(const xcb_randr_get_output_info_reply_t* R /**< */ );

xcb_randr_mode_t* xcb_randr_get_output_info_modes(const xcb_randr_get_output_info_reply_t* R /**< */ );

int xcb_randr_get_output_info_modes_length(const xcb_randr_get_output_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_output_info_modes_end(const xcb_randr_get_output_info_reply_t* R /**< */ );

xcb_randr_output_t* xcb_randr_get_output_info_clones(const xcb_randr_get_output_info_reply_t* R /**< */ );

int xcb_randr_get_output_info_clones_length(const xcb_randr_get_output_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_output_info_clones_end(const xcb_randr_get_output_info_reply_t* R /**< */ );

ubyte* xcb_randr_get_output_info_name(const xcb_randr_get_output_info_reply_t* R /**< */ );

int xcb_randr_get_output_info_name_length(const xcb_randr_get_output_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_output_info_name_end(const xcb_randr_get_output_info_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_output_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_output_info_reply_t* xcb_randr_get_output_info_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_output_info_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_list_output_properties_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_list_output_properties_cookie_t xcb_randr_list_output_properties(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ );

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
xcb_randr_list_output_properties_cookie_t xcb_randr_list_output_properties_unchecked(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ );

xcb_atom_t* xcb_randr_list_output_properties_atoms(const xcb_randr_list_output_properties_reply_t* R /**< */ );

int xcb_randr_list_output_properties_atoms_length(const xcb_randr_list_output_properties_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_list_output_properties_atoms_end(const xcb_randr_list_output_properties_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_list_output_properties_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_list_output_properties_reply_t* xcb_randr_list_output_properties_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_list_output_properties_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_query_output_property_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_query_output_property_cookie_t xcb_randr_query_output_property(xcb_connection_t* c /**< */ ,
	xcb_randr_output_t output /**< */ , xcb_atom_t property /**< */ );

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
xcb_randr_query_output_property_cookie_t xcb_randr_query_output_property_unchecked(xcb_connection_t* c /**< */ ,
	xcb_randr_output_t output /**< */ , xcb_atom_t property /**< */ );

int* xcb_randr_query_output_property_valid_values(const xcb_randr_query_output_property_reply_t* R /**< */ );

int xcb_randr_query_output_property_valid_values_length(const xcb_randr_query_output_property_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_query_output_property_valid_values_end(const xcb_randr_query_output_property_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_query_output_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_query_output_property_reply_t* xcb_randr_query_output_property_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_query_output_property_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_configure_output_property_sizeof(const void* _buffer /**< */ , uint values_len /**< */ );

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
xcb_void_cookie_t xcb_randr_configure_output_property_checked(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ ,
	xcb_atom_t property /**< */ , ubyte pending /**< */ , ubyte range /**< */ , uint values_len /**< */ , const int* values /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_configure_output_property(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ , xcb_atom_t property /**< */ ,
	ubyte pending /**< */ , ubyte range /**< */ , uint values_len /**< */ , const int* values /**< */ );

int xcb_randr_change_output_property_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_randr_change_output_property_checked(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ ,
	xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , ubyte format /**< */ , ubyte mode /**< */ , uint num_units /**< */ ,
	const void* data /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_change_output_property(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ , xcb_atom_t property /**< */ ,
	xcb_atom_t type /**< */ , ubyte format /**< */ , ubyte mode /**< */ , uint num_units /**< */ , const void* data /**< */ );

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
xcb_void_cookie_t xcb_randr_delete_output_property_checked(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ ,
	xcb_atom_t property /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_delete_output_property(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ , xcb_atom_t property /**< */ );

int xcb_randr_get_output_property_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_output_property_cookie_t xcb_randr_get_output_property(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ ,
	xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , uint long_offset /**< */ , uint long_length /**< */ , ubyte delete_ /**< */ ,
	ubyte pending /**< */ );

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
xcb_randr_get_output_property_cookie_t xcb_randr_get_output_property_unchecked(xcb_connection_t* c /**< */ ,
	xcb_randr_output_t output /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , uint long_offset /**< */ , uint long_length /**< */ ,
	ubyte delete_ /**< */ , ubyte pending /**< */ );

ubyte* xcb_randr_get_output_property_data(const xcb_randr_get_output_property_reply_t* R /**< */ );

int xcb_randr_get_output_property_data_length(const xcb_randr_get_output_property_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_output_property_data_end(const xcb_randr_get_output_property_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_output_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_output_property_reply_t* xcb_randr_get_output_property_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_output_property_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_create_mode_sizeof(const void* _buffer /**< */ , uint name_len /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_create_mode_cookie_t xcb_randr_create_mode(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_randr_mode_info_t mode_info /**< */ , uint name_len /**< */ , const char* name /**< */ );

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
xcb_randr_create_mode_cookie_t xcb_randr_create_mode_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_randr_mode_info_t mode_info /**< */ , uint name_len /**< */ , const char* name /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_create_mode_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_create_mode_reply_t* xcb_randr_create_mode_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_create_mode_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_randr_destroy_mode_checked(xcb_connection_t* c /**< */ , xcb_randr_mode_t mode /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_destroy_mode(xcb_connection_t* c /**< */ , xcb_randr_mode_t mode /**< */ );

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
xcb_void_cookie_t xcb_randr_add_output_mode_checked(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ , xcb_randr_mode_t mode /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_add_output_mode(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ , xcb_randr_mode_t mode /**< */ );

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
xcb_void_cookie_t xcb_randr_delete_output_mode_checked(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ ,
	xcb_randr_mode_t mode /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_delete_output_mode(xcb_connection_t* c /**< */ , xcb_randr_output_t output /**< */ , xcb_randr_mode_t mode /**< */ );

int xcb_randr_get_crtc_info_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_crtc_info_cookie_t xcb_randr_get_crtc_info(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ ,
	xcb_timestamp_t config_timestamp /**< */ );

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
xcb_randr_get_crtc_info_cookie_t xcb_randr_get_crtc_info_unchecked(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ ,
	xcb_timestamp_t config_timestamp /**< */ );

xcb_randr_output_t* xcb_randr_get_crtc_info_outputs(const xcb_randr_get_crtc_info_reply_t* R /**< */ );

int xcb_randr_get_crtc_info_outputs_length(const xcb_randr_get_crtc_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_crtc_info_outputs_end(const xcb_randr_get_crtc_info_reply_t* R /**< */ );

xcb_randr_output_t* xcb_randr_get_crtc_info_possible(const xcb_randr_get_crtc_info_reply_t* R /**< */ );

int xcb_randr_get_crtc_info_possible_length(const xcb_randr_get_crtc_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_crtc_info_possible_end(const xcb_randr_get_crtc_info_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_crtc_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_crtc_info_reply_t* xcb_randr_get_crtc_info_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_crtc_info_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_set_crtc_config_sizeof(const void* _buffer /**< */ , uint outputs_len /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_set_crtc_config_cookie_t xcb_randr_set_crtc_config(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ ,
	xcb_timestamp_t timestamp /**< */ , xcb_timestamp_t config_timestamp /**< */ , short x /**< */ , short y /**< */ , xcb_randr_mode_t mode /**< */ ,
	ushort rotation /**< */ , uint outputs_len /**< */ , const xcb_randr_output_t* outputs /**< */ );

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
xcb_randr_set_crtc_config_cookie_t xcb_randr_set_crtc_config_unchecked(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ ,
	xcb_timestamp_t timestamp /**< */ , xcb_timestamp_t config_timestamp /**< */ , short x /**< */ , short y /**< */ , xcb_randr_mode_t mode /**< */ ,
	ushort rotation /**< */ , uint outputs_len /**< */ , const xcb_randr_output_t* outputs /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_set_crtc_config_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_set_crtc_config_reply_t* xcb_randr_set_crtc_config_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_set_crtc_config_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_crtc_gamma_size_cookie_t xcb_randr_get_crtc_gamma_size(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ );

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
xcb_randr_get_crtc_gamma_size_cookie_t xcb_randr_get_crtc_gamma_size_unchecked(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_crtc_gamma_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_crtc_gamma_size_reply_t* xcb_randr_get_crtc_gamma_size_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_crtc_gamma_size_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_get_crtc_gamma_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_crtc_gamma_cookie_t xcb_randr_get_crtc_gamma(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ );

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
xcb_randr_get_crtc_gamma_cookie_t xcb_randr_get_crtc_gamma_unchecked(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ );

ushort* xcb_randr_get_crtc_gamma_red(const xcb_randr_get_crtc_gamma_reply_t* R /**< */ );

int xcb_randr_get_crtc_gamma_red_length(const xcb_randr_get_crtc_gamma_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_crtc_gamma_red_end(const xcb_randr_get_crtc_gamma_reply_t* R /**< */ );

ushort* xcb_randr_get_crtc_gamma_green(const xcb_randr_get_crtc_gamma_reply_t* R /**< */ );

int xcb_randr_get_crtc_gamma_green_length(const xcb_randr_get_crtc_gamma_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_crtc_gamma_green_end(const xcb_randr_get_crtc_gamma_reply_t* R /**< */ );

ushort* xcb_randr_get_crtc_gamma_blue(const xcb_randr_get_crtc_gamma_reply_t* R /**< */ );

int xcb_randr_get_crtc_gamma_blue_length(const xcb_randr_get_crtc_gamma_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_crtc_gamma_blue_end(const xcb_randr_get_crtc_gamma_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_crtc_gamma_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_crtc_gamma_reply_t* xcb_randr_get_crtc_gamma_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_crtc_gamma_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_set_crtc_gamma_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_randr_set_crtc_gamma_checked(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ , ushort size /**< */ , const ushort* red /**< */ ,
	const ushort* green /**< */ , const ushort* blue /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_set_crtc_gamma(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ , ushort size /**< */ , const ushort* red /**< */ ,
	const ushort* green /**< */ , const ushort* blue /**< */ );

int xcb_randr_get_screen_resources_current_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_screen_resources_current_cookie_t xcb_randr_get_screen_resources_current(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_randr_get_screen_resources_current_cookie_t xcb_randr_get_screen_resources_current_unchecked(xcb_connection_t* c /**< */ ,
	xcb_window_t window /**< */ );

xcb_randr_crtc_t* xcb_randr_get_screen_resources_current_crtcs(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

int xcb_randr_get_screen_resources_current_crtcs_length(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_screen_resources_current_crtcs_end(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

xcb_randr_output_t* xcb_randr_get_screen_resources_current_outputs(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

int xcb_randr_get_screen_resources_current_outputs_length(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_screen_resources_current_outputs_end(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

xcb_randr_mode_info_t* xcb_randr_get_screen_resources_current_modes(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

int xcb_randr_get_screen_resources_current_modes_length(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

xcb_randr_mode_info_iterator_t xcb_randr_get_screen_resources_current_modes_iterator(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

ubyte* xcb_randr_get_screen_resources_current_names(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

int xcb_randr_get_screen_resources_current_names_length(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_screen_resources_current_names_end(const xcb_randr_get_screen_resources_current_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_screen_resources_current_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_screen_resources_current_reply_t* xcb_randr_get_screen_resources_current_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_screen_resources_current_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_set_crtc_transform_sizeof(const void* _buffer /**< */ , uint filter_params_len /**< */ );

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
xcb_void_cookie_t xcb_randr_set_crtc_transform_checked(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ ,
	xcb_render_transform_t transform /**< */ , ushort filter_len /**< */ , const char* filter_name /**< */ , uint filter_params_len /**< */ ,
	const xcb_render_fixed_t* filter_params /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_set_crtc_transform(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ , xcb_render_transform_t transform /**< */ ,
	ushort filter_len /**< */ , const char* filter_name /**< */ , uint filter_params_len /**< */ , const xcb_render_fixed_t* filter_params /**< */ );

int xcb_randr_get_crtc_transform_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_crtc_transform_cookie_t xcb_randr_get_crtc_transform(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ );

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
xcb_randr_get_crtc_transform_cookie_t xcb_randr_get_crtc_transform_unchecked(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ );

char* xcb_randr_get_crtc_transform_pending_filter_name(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

int xcb_randr_get_crtc_transform_pending_filter_name_length(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_crtc_transform_pending_filter_name_end(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

xcb_render_fixed_t* xcb_randr_get_crtc_transform_pending_params(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

int xcb_randr_get_crtc_transform_pending_params_length(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_crtc_transform_pending_params_end(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

char* xcb_randr_get_crtc_transform_current_filter_name(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

int xcb_randr_get_crtc_transform_current_filter_name_length(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_crtc_transform_current_filter_name_end(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

xcb_render_fixed_t* xcb_randr_get_crtc_transform_current_params(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

int xcb_randr_get_crtc_transform_current_params_length(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_crtc_transform_current_params_end(const xcb_randr_get_crtc_transform_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_crtc_transform_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_crtc_transform_reply_t* xcb_randr_get_crtc_transform_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_crtc_transform_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_panning_cookie_t xcb_randr_get_panning(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ );

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
xcb_randr_get_panning_cookie_t xcb_randr_get_panning_unchecked(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_panning_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_panning_reply_t* xcb_randr_get_panning_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_panning_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_set_panning_cookie_t xcb_randr_set_panning(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ , xcb_timestamp_t timestamp /**< */ ,
	ushort left /**< */ , ushort top /**< */ , ushort width /**< */ , ushort height /**< */ , ushort track_left /**< */ , ushort track_top /**< */ , ushort track_width /**< */ ,
	ushort track_height /**< */ , short border_left /**< */ , short border_top /**< */ , short border_right /**< */ , short border_bottom /**< */ );

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
xcb_randr_set_panning_cookie_t xcb_randr_set_panning_unchecked(xcb_connection_t* c /**< */ , xcb_randr_crtc_t crtc /**< */ ,
	xcb_timestamp_t timestamp /**< */ , ushort left /**< */ , ushort top /**< */ , ushort width /**< */ , ushort height /**< */ , ushort track_left /**< */ , ushort track_top /**< */ ,
	ushort track_width /**< */ , ushort track_height /**< */ , short border_left /**< */ , short border_top /**< */ ,
	short border_right /**< */ , short border_bottom /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_set_panning_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_set_panning_reply_t* xcb_randr_set_panning_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_set_panning_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_randr_set_output_primary_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_randr_output_t output /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_set_output_primary(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_randr_output_t output /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_output_primary_cookie_t xcb_randr_get_output_primary(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_randr_get_output_primary_cookie_t xcb_randr_get_output_primary_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_output_primary_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_output_primary_reply_t* xcb_randr_get_output_primary_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_output_primary_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_get_providers_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_providers_cookie_t xcb_randr_get_providers(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_randr_get_providers_cookie_t xcb_randr_get_providers_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

xcb_randr_provider_t* xcb_randr_get_providers_providers(const xcb_randr_get_providers_reply_t* R /**< */ );

int xcb_randr_get_providers_providers_length(const xcb_randr_get_providers_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_providers_providers_end(const xcb_randr_get_providers_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_providers_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_providers_reply_t* xcb_randr_get_providers_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_providers_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_get_provider_info_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_provider_info_cookie_t xcb_randr_get_provider_info(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_timestamp_t config_timestamp /**< */ );

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
xcb_randr_get_provider_info_cookie_t xcb_randr_get_provider_info_unchecked(xcb_connection_t* c /**< */ ,
	xcb_randr_provider_t provider /**< */ , xcb_timestamp_t config_timestamp /**< */ );

xcb_randr_crtc_t* xcb_randr_get_provider_info_crtcs(const xcb_randr_get_provider_info_reply_t* R /**< */ );

int xcb_randr_get_provider_info_crtcs_length(const xcb_randr_get_provider_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_provider_info_crtcs_end(const xcb_randr_get_provider_info_reply_t* R /**< */ );

xcb_randr_output_t* xcb_randr_get_provider_info_outputs(const xcb_randr_get_provider_info_reply_t* R /**< */ );

int xcb_randr_get_provider_info_outputs_length(const xcb_randr_get_provider_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_provider_info_outputs_end(const xcb_randr_get_provider_info_reply_t* R /**< */ );

xcb_randr_provider_t* xcb_randr_get_provider_info_associated_providers(const xcb_randr_get_provider_info_reply_t* R /**< */ );

int xcb_randr_get_provider_info_associated_providers_length(const xcb_randr_get_provider_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_provider_info_associated_providers_end(const xcb_randr_get_provider_info_reply_t* R /**< */ );

uint* xcb_randr_get_provider_info_associated_capability(const xcb_randr_get_provider_info_reply_t* R /**< */ );

int xcb_randr_get_provider_info_associated_capability_length(const xcb_randr_get_provider_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_provider_info_associated_capability_end(const xcb_randr_get_provider_info_reply_t* R /**< */ );

char* xcb_randr_get_provider_info_name(const xcb_randr_get_provider_info_reply_t* R /**< */ );

int xcb_randr_get_provider_info_name_length(const xcb_randr_get_provider_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_provider_info_name_end(const xcb_randr_get_provider_info_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_provider_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_provider_info_reply_t* xcb_randr_get_provider_info_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_provider_info_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_randr_set_provider_offload_sink_checked(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_randr_provider_t sink_provider /**< */ , xcb_timestamp_t config_timestamp /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_set_provider_offload_sink(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_randr_provider_t sink_provider /**< */ , xcb_timestamp_t config_timestamp /**< */ );

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
xcb_void_cookie_t xcb_randr_set_provider_output_source_checked(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_randr_provider_t source_provider /**< */ , xcb_timestamp_t config_timestamp /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_set_provider_output_source(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_randr_provider_t source_provider /**< */ , xcb_timestamp_t config_timestamp /**< */ );

int xcb_randr_list_provider_properties_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_list_provider_properties_cookie_t xcb_randr_list_provider_properties(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ );

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
xcb_randr_list_provider_properties_cookie_t xcb_randr_list_provider_properties_unchecked(xcb_connection_t* c /**< */ ,
	xcb_randr_provider_t provider /**< */ );

xcb_atom_t* xcb_randr_list_provider_properties_atoms(const xcb_randr_list_provider_properties_reply_t* R /**< */ );

int xcb_randr_list_provider_properties_atoms_length(const xcb_randr_list_provider_properties_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_list_provider_properties_atoms_end(const xcb_randr_list_provider_properties_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_list_provider_properties_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_list_provider_properties_reply_t* xcb_randr_list_provider_properties_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_list_provider_properties_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_query_provider_property_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_query_provider_property_cookie_t xcb_randr_query_provider_property(xcb_connection_t* c /**< */ ,
	xcb_randr_provider_t provider /**< */ , xcb_atom_t property /**< */ );

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
xcb_randr_query_provider_property_cookie_t xcb_randr_query_provider_property_unchecked(xcb_connection_t* c /**< */ ,
	xcb_randr_provider_t provider /**< */ , xcb_atom_t property /**< */ );

int* xcb_randr_query_provider_property_valid_values(const xcb_randr_query_provider_property_reply_t* R /**< */ );

int xcb_randr_query_provider_property_valid_values_length(const xcb_randr_query_provider_property_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_query_provider_property_valid_values_end(const xcb_randr_query_provider_property_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_query_provider_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_query_provider_property_reply_t* xcb_randr_query_provider_property_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_query_provider_property_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_randr_configure_provider_property_sizeof(const void* _buffer /**< */ , uint values_len /**< */ );

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
xcb_void_cookie_t xcb_randr_configure_provider_property_checked(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_atom_t property /**< */ , ubyte pending /**< */ , ubyte range /**< */ , uint values_len /**< */ , const int* values /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_configure_provider_property(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_atom_t property /**< */ , ubyte pending /**< */ , ubyte range /**< */ , uint values_len /**< */ , const int* values /**< */ );

int xcb_randr_change_provider_property_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_randr_change_provider_property_checked(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , ubyte format /**< */ , ubyte mode /**< */ , uint num_items /**< */ ,
	const void* data /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_change_provider_property(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , ubyte format /**< */ , ubyte mode /**< */ , uint num_items /**< */ ,
	const void* data /**< */ );

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
xcb_void_cookie_t xcb_randr_delete_provider_property_checked(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_atom_t property /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_randr_delete_provider_property(xcb_connection_t* c /**< */ , xcb_randr_provider_t provider /**< */ ,
	xcb_atom_t property /**< */ );

int xcb_randr_get_provider_property_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_randr_get_provider_property_cookie_t xcb_randr_get_provider_property(xcb_connection_t* c /**< */ ,
	xcb_randr_provider_t provider /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , uint long_offset /**< */ ,
	uint long_length /**< */ , ubyte delete_ /**< */ , ubyte pending /**< */ );

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
xcb_randr_get_provider_property_cookie_t xcb_randr_get_provider_property_unchecked(xcb_connection_t* c /**< */ ,
	xcb_randr_provider_t provider /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , uint long_offset /**< */ ,
	uint long_length /**< */ , ubyte delete_ /**< */ , ubyte pending /**< */ );

void* xcb_randr_get_provider_property_data(const xcb_randr_get_provider_property_reply_t* R /**< */ );

int xcb_randr_get_provider_property_data_length(const xcb_randr_get_provider_property_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_randr_get_provider_property_data_end(const xcb_randr_get_provider_property_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_provider_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_randr_get_provider_property_reply_t* xcb_randr_get_provider_property_reply(xcb_connection_t* c /**< */ ,
	xcb_randr_get_provider_property_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_crtc_change_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_crtc_change_t)
 */
void xcb_randr_crtc_change_next(xcb_randr_crtc_change_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_crtc_change_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_crtc_change_end(xcb_randr_crtc_change_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_output_change_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_output_change_t)
 */
void xcb_randr_output_change_next(xcb_randr_output_change_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_output_change_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_output_change_end(xcb_randr_output_change_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_output_property_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_output_property_t)
 */
void xcb_randr_output_property_next(xcb_randr_output_property_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_output_property_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_output_property_end(xcb_randr_output_property_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_provider_change_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_provider_change_t)
 */
void xcb_randr_provider_change_next(xcb_randr_provider_change_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_provider_change_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_provider_change_end(xcb_randr_provider_change_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_provider_property_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_provider_property_t)
 */
void xcb_randr_provider_property_next(xcb_randr_provider_property_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_provider_property_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_provider_property_end(xcb_randr_provider_property_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_resource_change_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_resource_change_t)
 */
void xcb_randr_resource_change_next(xcb_randr_resource_change_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_resource_change_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_resource_change_end(xcb_randr_resource_change_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_notify_data_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_notify_data_t)
 */
void xcb_randr_notify_data_next(xcb_randr_notify_data_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_notify_data_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_randr_notify_data_end(xcb_randr_notify_data_iterator_t i /**< */ );

/**
 * @}
 */
