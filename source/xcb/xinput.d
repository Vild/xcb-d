/*
 * This file generated automatically from xinput.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Input_API XCB Input API
 * @brief Input XCB Protocol Implementation.
 * @{
 **/

module xcb.xinput;

import xcb.xcb;
import xcb.xfixes;

extern (C):

enum int XCB_INPUT_MAJOR_VERSION = 2;
enum int XCB_INPUT_MINOR_VERSION = 3;

extern (C) __gshared extern xcb_extension_t xcb_input_id;

alias xcb_input_event_class_t = uint;

/**
 * @brief xcb_input_event_class_iterator_t
 **/
struct xcb_input_event_class_iterator_t {
	xcb_input_event_class_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_input_key_code_t = ubyte;

/**
 * @brief xcb_input_key_code_iterator_t
 **/
struct xcb_input_key_code_iterator_t {
	xcb_input_key_code_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_input_device_id_t = ushort;

/**
 * @brief xcb_input_device_id_iterator_t
 **/
struct xcb_input_device_id_iterator_t {
	xcb_input_device_id_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_input_fp1616_t = int;

/**
 * @brief xcb_input_fp1616_iterator_t
 **/
struct xcb_input_fp1616_iterator_t {
	xcb_input_fp1616_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_fp3232_t
 **/
struct xcb_input_fp3232_t {
	int integral; /**<  */
	uint frac; /**<  */
}

/**
 * @brief xcb_input_fp3232_iterator_t
 **/
struct xcb_input_fp3232_iterator_t {
	xcb_input_fp3232_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_get_extension_version_cookie_t
 **/
struct xcb_input_get_extension_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_extension_version. */
enum XCB_INPUT_GET_EXTENSION_VERSION = 1;

/**
 * @brief xcb_input_get_extension_version_request_t
 **/
struct xcb_input_get_extension_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort name_len; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_get_extension_version_reply_t
 **/
struct xcb_input_get_extension_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort server_major; /**<  */
	ushort server_minor; /**<  */
	ubyte present; /**<  */
	ubyte[19] pad1; /**<  */
}

enum xcb_input_device_use_t {
	XCB_INPUT_DEVICE_USE_IS_X_POINTER = 0,
	XCB_INPUT_DEVICE_USE_IS_X_KEYBOARD = 1,
	XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_DEVICE = 2,
	XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_KEYBOARD = 3,
	XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_POINTER = 4
}

alias XCB_INPUT_DEVICE_USE_IS_X_POINTER = xcb_input_device_use_t.XCB_INPUT_DEVICE_USE_IS_X_POINTER;
alias XCB_INPUT_DEVICE_USE_IS_X_KEYBOARD = xcb_input_device_use_t.XCB_INPUT_DEVICE_USE_IS_X_KEYBOARD;
alias XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_DEVICE = xcb_input_device_use_t.XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_DEVICE;
alias XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_KEYBOARD = xcb_input_device_use_t.XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_KEYBOARD;
alias XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_POINTER = xcb_input_device_use_t.XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_POINTER;

enum xcb_input_input_class_t {
	XCB_INPUT_INPUT_CLASS_KEY = 0,
	XCB_INPUT_INPUT_CLASS_BUTTON = 1,
	XCB_INPUT_INPUT_CLASS_VALUATOR = 2,
	XCB_INPUT_INPUT_CLASS_FEEDBACK = 3,
	XCB_INPUT_INPUT_CLASS_PROXIMITY = 4,
	XCB_INPUT_INPUT_CLASS_FOCUS = 5,
	XCB_INPUT_INPUT_CLASS_OTHER = 6
}

alias XCB_INPUT_INPUT_CLASS_KEY = xcb_input_input_class_t.XCB_INPUT_INPUT_CLASS_KEY;
alias XCB_INPUT_INPUT_CLASS_BUTTON = xcb_input_input_class_t.XCB_INPUT_INPUT_CLASS_BUTTON;
alias XCB_INPUT_INPUT_CLASS_VALUATOR = xcb_input_input_class_t.XCB_INPUT_INPUT_CLASS_VALUATOR;
alias XCB_INPUT_INPUT_CLASS_FEEDBACK = xcb_input_input_class_t.XCB_INPUT_INPUT_CLASS_FEEDBACK;
alias XCB_INPUT_INPUT_CLASS_PROXIMITY = xcb_input_input_class_t.XCB_INPUT_INPUT_CLASS_PROXIMITY;
alias XCB_INPUT_INPUT_CLASS_FOCUS = xcb_input_input_class_t.XCB_INPUT_INPUT_CLASS_FOCUS;
alias XCB_INPUT_INPUT_CLASS_OTHER = xcb_input_input_class_t.XCB_INPUT_INPUT_CLASS_OTHER;

enum xcb_input_valuator_mode_t {
	XCB_INPUT_VALUATOR_MODE_RELATIVE = 0,
	XCB_INPUT_VALUATOR_MODE_ABSOLUTE = 1
}

alias XCB_INPUT_VALUATOR_MODE_RELATIVE = xcb_input_valuator_mode_t.XCB_INPUT_VALUATOR_MODE_RELATIVE;
alias XCB_INPUT_VALUATOR_MODE_ABSOLUTE = xcb_input_valuator_mode_t.XCB_INPUT_VALUATOR_MODE_ABSOLUTE;

/**
 * @brief xcb_input_device_info_t
 **/
struct xcb_input_device_info_t {
	xcb_atom_t device_type; /**<  */
	ubyte device_id; /**<  */
	ubyte num_class_info; /**<  */
	ubyte device_use; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_input_device_info_iterator_t
 **/
struct xcb_input_device_info_iterator_t {
	xcb_input_device_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_key_info_t
 **/
struct xcb_input_key_info_t {
	ubyte class_id; /**<  */
	ubyte len; /**<  */
	xcb_input_key_code_t min_keycode; /**<  */
	xcb_input_key_code_t max_keycode; /**<  */
	ushort num_keys; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_key_info_iterator_t
 **/
struct xcb_input_key_info_iterator_t {
	xcb_input_key_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_button_info_t
 **/
struct xcb_input_button_info_t {
	ubyte class_id; /**<  */
	ubyte len; /**<  */
	ushort num_buttons; /**<  */
}

/**
 * @brief xcb_input_button_info_iterator_t
 **/
struct xcb_input_button_info_iterator_t {
	xcb_input_button_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_axis_info_t
 **/
struct xcb_input_axis_info_t {
	uint resolution; /**<  */
	int minimum; /**<  */
	int maximum; /**<  */
}

/**
 * @brief xcb_input_axis_info_iterator_t
 **/
struct xcb_input_axis_info_iterator_t {
	xcb_input_axis_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_valuator_info_t
 **/
struct xcb_input_valuator_info_t {
	ubyte class_id; /**<  */
	ubyte len; /**<  */
	ubyte axes_len; /**<  */
	ubyte mode; /**<  */
	uint motion_size; /**<  */
}

/**
 * @brief xcb_input_valuator_info_iterator_t
 **/
struct xcb_input_valuator_info_iterator_t {
	xcb_input_valuator_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_input_info_t
 **/
struct xcb_input_input_info_t {
	ubyte class_id; /**<  */
	ubyte len; /**<  */
}

/**
 * @brief xcb_input_input_info_iterator_t
 **/
struct xcb_input_input_info_iterator_t {
	xcb_input_input_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_name_t
 **/
struct xcb_input_device_name_t {
	ubyte len; /**<  */
}

/**
 * @brief xcb_input_device_name_iterator_t
 **/
struct xcb_input_device_name_iterator_t {
	xcb_input_device_name_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_list_input_devices_cookie_t
 **/
struct xcb_input_list_input_devices_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_list_input_devices. */
enum XCB_INPUT_LIST_INPUT_DEVICES = 2;

/**
 * @brief xcb_input_list_input_devices_request_t
 **/
struct xcb_input_list_input_devices_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_input_list_input_devices_reply_t
 **/
struct xcb_input_list_input_devices_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte devices_len; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_input_input_class_info_t
 **/
struct xcb_input_input_class_info_t {
	ubyte class_id; /**<  */
	ubyte event_type_base; /**<  */
}

/**
 * @brief xcb_input_input_class_info_iterator_t
 **/
struct xcb_input_input_class_info_iterator_t {
	xcb_input_input_class_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_open_device_cookie_t
 **/
struct xcb_input_open_device_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_open_device. */
enum XCB_INPUT_OPEN_DEVICE = 3;

/**
 * @brief xcb_input_open_device_request_t
 **/
struct xcb_input_open_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_open_device_reply_t
 **/
struct xcb_input_open_device_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte num_classes; /**<  */
	ubyte[23] pad1; /**<  */
}

/** Opcode for xcb_input_close_device. */
enum XCB_INPUT_CLOSE_DEVICE = 4;

/**
 * @brief xcb_input_close_device_request_t
 **/
struct xcb_input_close_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_set_device_mode_cookie_t
 **/
struct xcb_input_set_device_mode_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_set_device_mode. */
enum XCB_INPUT_SET_DEVICE_MODE = 5;

/**
 * @brief xcb_input_set_device_mode_request_t
 **/
struct xcb_input_set_device_mode_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte mode; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_set_device_mode_reply_t
 **/
struct xcb_input_set_device_mode_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte status; /**<  */
	ubyte[23] pad1; /**<  */
}

/** Opcode for xcb_input_select_extension_event. */
enum XCB_INPUT_SELECT_EXTENSION_EVENT = 6;

/**
 * @brief xcb_input_select_extension_event_request_t
 **/
struct xcb_input_select_extension_event_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ushort num_classes; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_get_selected_extension_events_cookie_t
 **/
struct xcb_input_get_selected_extension_events_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_selected_extension_events. */
enum XCB_INPUT_GET_SELECTED_EXTENSION_EVENTS = 7;

/**
 * @brief xcb_input_get_selected_extension_events_request_t
 **/
struct xcb_input_get_selected_extension_events_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_input_get_selected_extension_events_reply_t
 **/
struct xcb_input_get_selected_extension_events_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_this_classes; /**<  */
	ushort num_all_classes; /**<  */
	ubyte[20] pad1; /**<  */
}

enum xcb_input_propagate_mode_t {
	XCB_INPUT_PROPAGATE_MODE_ADD_TO_LIST = 0,
	XCB_INPUT_PROPAGATE_MODE_DELETE_FROM_LIST = 1
}

alias XCB_INPUT_PROPAGATE_MODE_ADD_TO_LIST = xcb_input_propagate_mode_t.XCB_INPUT_PROPAGATE_MODE_ADD_TO_LIST;
alias XCB_INPUT_PROPAGATE_MODE_DELETE_FROM_LIST = xcb_input_propagate_mode_t.XCB_INPUT_PROPAGATE_MODE_DELETE_FROM_LIST;

/** Opcode for xcb_input_change_device_dont_propagate_list. */
enum XCB_INPUT_CHANGE_DEVICE_DONT_PROPAGATE_LIST = 8;

/**
 * @brief xcb_input_change_device_dont_propagate_list_request_t
 **/
struct xcb_input_change_device_dont_propagate_list_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ushort num_classes; /**<  */
	ubyte mode; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_input_get_device_dont_propagate_list_cookie_t
 **/
struct xcb_input_get_device_dont_propagate_list_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_dont_propagate_list. */
enum XCB_INPUT_GET_DEVICE_DONT_PROPAGATE_LIST = 9;

/**
 * @brief xcb_input_get_device_dont_propagate_list_request_t
 **/
struct xcb_input_get_device_dont_propagate_list_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_input_get_device_dont_propagate_list_reply_t
 **/
struct xcb_input_get_device_dont_propagate_list_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_classes; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_input_device_time_coord_t
 **/
struct xcb_input_device_time_coord_t {
	xcb_timestamp_t time; /**<  */
}

/**
 * @brief xcb_input_device_time_coord_iterator_t
 **/
struct xcb_input_device_time_coord_iterator_t {
	xcb_input_device_time_coord_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_get_device_motion_events_cookie_t
 **/
struct xcb_input_get_device_motion_events_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_motion_events. */
enum XCB_INPUT_GET_DEVICE_MOTION_EVENTS = 10;

/**
 * @brief xcb_input_get_device_motion_events_request_t
 **/
struct xcb_input_get_device_motion_events_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_timestamp_t start; /**<  */
	xcb_timestamp_t stop; /**<  */
	ubyte device_id; /**<  */
}

/**
 * @brief xcb_input_get_device_motion_events_reply_t
 **/
struct xcb_input_get_device_motion_events_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_events; /**<  */
	ubyte num_axes; /**<  */
	ubyte device_mode; /**<  */
	ubyte[18] pad1; /**<  */
}

/**
 * @brief xcb_input_change_keyboard_device_cookie_t
 **/
struct xcb_input_change_keyboard_device_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_change_keyboard_device. */
enum XCB_INPUT_CHANGE_KEYBOARD_DEVICE = 11;

/**
 * @brief xcb_input_change_keyboard_device_request_t
 **/
struct xcb_input_change_keyboard_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_change_keyboard_device_reply_t
 **/
struct xcb_input_change_keyboard_device_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte status; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_input_change_pointer_device_cookie_t
 **/
struct xcb_input_change_pointer_device_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_change_pointer_device. */
enum XCB_INPUT_CHANGE_POINTER_DEVICE = 12;

/**
 * @brief xcb_input_change_pointer_device_request_t
 **/
struct xcb_input_change_pointer_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte x_axis; /**<  */
	ubyte y_axis; /**<  */
	ubyte device_id; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_input_change_pointer_device_reply_t
 **/
struct xcb_input_change_pointer_device_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte status; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_input_grab_device_cookie_t
 **/
struct xcb_input_grab_device_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_grab_device. */
enum XCB_INPUT_GRAB_DEVICE = 13;

/**
 * @brief xcb_input_grab_device_request_t
 **/
struct xcb_input_grab_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	xcb_timestamp_t time; /**<  */
	ushort num_classes; /**<  */
	ubyte this_device_mode; /**<  */
	ubyte other_device_mode; /**<  */
	ubyte owner_events; /**<  */
	ubyte device_id; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_grab_device_reply_t
 **/
struct xcb_input_grab_device_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte status; /**<  */
	ubyte[23] pad1; /**<  */
}

/** Opcode for xcb_input_ungrab_device. */
enum XCB_INPUT_UNGRAB_DEVICE = 14;

/**
 * @brief xcb_input_ungrab_device_request_t
 **/
struct xcb_input_ungrab_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte device_id; /**<  */
}

/** Opcode for xcb_input_grab_device_key. */
enum XCB_INPUT_GRAB_DEVICE_KEY = 15;

/**
 * @brief xcb_input_grab_device_key_request_t
 **/
struct xcb_input_grab_device_key_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	ushort num_classes; /**<  */
	ushort modifiers; /**<  */
	ubyte modifier_device; /**<  */
	ubyte grabbed_device; /**<  */
	ubyte key; /**<  */
	ubyte this_device_mode; /**<  */
	ubyte other_device_mode; /**<  */
	ubyte owner_events; /**<  */
	ubyte[2] pad0; /**<  */
}

/** Opcode for xcb_input_ungrab_device_key. */
enum XCB_INPUT_UNGRAB_DEVICE_KEY = 16;

/**
 * @brief xcb_input_ungrab_device_key_request_t
 **/
struct xcb_input_ungrab_device_key_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t grabWindow; /**<  */
	ushort modifiers; /**<  */
	ubyte modifier_device; /**<  */
	ubyte key; /**<  */
	ubyte grabbed_device; /**<  */
}

/** Opcode for xcb_input_grab_device_button. */
enum XCB_INPUT_GRAB_DEVICE_BUTTON = 17;

/**
 * @brief xcb_input_grab_device_button_request_t
 **/
struct xcb_input_grab_device_button_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	ubyte grabbed_device; /**<  */
	ubyte modifier_device; /**<  */
	ushort num_classes; /**<  */
	ushort modifiers; /**<  */
	ubyte this_device_mode; /**<  */
	ubyte other_device_mode; /**<  */
	ubyte button; /**<  */
	ubyte owner_events; /**<  */
	ubyte[2] pad0; /**<  */
}

/** Opcode for xcb_input_ungrab_device_button. */
enum XCB_INPUT_UNGRAB_DEVICE_BUTTON = 18;

/**
 * @brief xcb_input_ungrab_device_button_request_t
 **/
struct xcb_input_ungrab_device_button_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	ushort modifiers; /**<  */
	ubyte modifier_device; /**<  */
	ubyte button; /**<  */
	ubyte grabbed_device; /**<  */
}

enum xcb_input_device_input_mode_t {
	XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_THIS_DEVICE = 0,
	XCB_INPUT_DEVICE_INPUT_MODE_SYNC_THIS_DEVICE = 1,
	XCB_INPUT_DEVICE_INPUT_MODE_REPLAY_THIS_DEVICE = 2,
	XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_OTHER_DEVICES = 3,
	XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_ALL = 4,
	XCB_INPUT_DEVICE_INPUT_MODE_SYNC_ALL = 5
}

alias XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_THIS_DEVICE = xcb_input_device_input_mode_t.XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_THIS_DEVICE;
alias XCB_INPUT_DEVICE_INPUT_MODE_SYNC_THIS_DEVICE = xcb_input_device_input_mode_t.XCB_INPUT_DEVICE_INPUT_MODE_SYNC_THIS_DEVICE;
alias XCB_INPUT_DEVICE_INPUT_MODE_REPLAY_THIS_DEVICE = xcb_input_device_input_mode_t.XCB_INPUT_DEVICE_INPUT_MODE_REPLAY_THIS_DEVICE;
alias XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_OTHER_DEVICES = xcb_input_device_input_mode_t.XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_OTHER_DEVICES;
alias XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_ALL = xcb_input_device_input_mode_t.XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_ALL;
alias XCB_INPUT_DEVICE_INPUT_MODE_SYNC_ALL = xcb_input_device_input_mode_t.XCB_INPUT_DEVICE_INPUT_MODE_SYNC_ALL;

/** Opcode for xcb_input_allow_device_events. */
enum XCB_INPUT_ALLOW_DEVICE_EVENTS = 19;

/**
 * @brief xcb_input_allow_device_events_request_t
 **/
struct xcb_input_allow_device_events_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte mode; /**<  */
	ubyte device_id; /**<  */
}

/**
 * @brief xcb_input_get_device_focus_cookie_t
 **/
struct xcb_input_get_device_focus_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_focus. */
enum XCB_INPUT_GET_DEVICE_FOCUS = 20;

/**
 * @brief xcb_input_get_device_focus_request_t
 **/
struct xcb_input_get_device_focus_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_get_device_focus_reply_t
 **/
struct xcb_input_get_device_focus_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t focus; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte revert_to; /**<  */
	ubyte[15] pad1; /**<  */
}

/** Opcode for xcb_input_set_device_focus. */
enum XCB_INPUT_SET_DEVICE_FOCUS = 21;

/**
 * @brief xcb_input_set_device_focus_request_t
 **/
struct xcb_input_set_device_focus_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t focus; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte revert_to; /**<  */
	ubyte device_id; /**<  */
}

enum xcb_input_feedback_class_t {
	XCB_INPUT_FEEDBACK_CLASS_KEYBOARD = 0,
	XCB_INPUT_FEEDBACK_CLASS_POINTER = 1,
	XCB_INPUT_FEEDBACK_CLASS_STRING = 2,
	XCB_INPUT_FEEDBACK_CLASS_INTEGER = 3,
	XCB_INPUT_FEEDBACK_CLASS_LED = 4,
	XCB_INPUT_FEEDBACK_CLASS_BELL = 5
}

alias XCB_INPUT_FEEDBACK_CLASS_KEYBOARD = xcb_input_feedback_class_t.XCB_INPUT_FEEDBACK_CLASS_KEYBOARD;
alias XCB_INPUT_FEEDBACK_CLASS_POINTER = xcb_input_feedback_class_t.XCB_INPUT_FEEDBACK_CLASS_POINTER;
alias XCB_INPUT_FEEDBACK_CLASS_STRING = xcb_input_feedback_class_t.XCB_INPUT_FEEDBACK_CLASS_STRING;
alias XCB_INPUT_FEEDBACK_CLASS_INTEGER = xcb_input_feedback_class_t.XCB_INPUT_FEEDBACK_CLASS_INTEGER;
alias XCB_INPUT_FEEDBACK_CLASS_LED = xcb_input_feedback_class_t.XCB_INPUT_FEEDBACK_CLASS_LED;
alias XCB_INPUT_FEEDBACK_CLASS_BELL = xcb_input_feedback_class_t.XCB_INPUT_FEEDBACK_CLASS_BELL;

/**
 * @brief xcb_input_kbd_feedback_state_t
 **/
struct xcb_input_kbd_feedback_state_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	ushort pitch; /**<  */
	ushort duration; /**<  */
	uint led_mask; /**<  */
	uint led_values; /**<  */
	ubyte global_auto_repeat; /**<  */
	ubyte click; /**<  */
	ubyte percent; /**<  */
	ubyte pad0; /**<  */
	ubyte[32] auto_repeats; /**<  */
}

/**
 * @brief xcb_input_kbd_feedback_state_iterator_t
 **/
struct xcb_input_kbd_feedback_state_iterator_t {
	xcb_input_kbd_feedback_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_ptr_feedback_state_t
 **/
struct xcb_input_ptr_feedback_state_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	ubyte[2] pad0; /**<  */
	ushort accel_num; /**<  */
	ushort accel_denom; /**<  */
	ushort threshold; /**<  */
}

/**
 * @brief xcb_input_ptr_feedback_state_iterator_t
 **/
struct xcb_input_ptr_feedback_state_iterator_t {
	xcb_input_ptr_feedback_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_integer_feedback_state_t
 **/
struct xcb_input_integer_feedback_state_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	uint resolution; /**<  */
	int min_value; /**<  */
	int max_value; /**<  */
}

/**
 * @brief xcb_input_integer_feedback_state_iterator_t
 **/
struct xcb_input_integer_feedback_state_iterator_t {
	xcb_input_integer_feedback_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_string_feedback_state_t
 **/
struct xcb_input_string_feedback_state_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	ushort max_symbols; /**<  */
	ushort num_keysyms; /**<  */
}

/**
 * @brief xcb_input_string_feedback_state_iterator_t
 **/
struct xcb_input_string_feedback_state_iterator_t {
	xcb_input_string_feedback_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_bell_feedback_state_t
 **/
struct xcb_input_bell_feedback_state_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	ubyte percent; /**<  */
	ubyte[3] pad0; /**<  */
	ushort pitch; /**<  */
	ushort duration; /**<  */
}

/**
 * @brief xcb_input_bell_feedback_state_iterator_t
 **/
struct xcb_input_bell_feedback_state_iterator_t {
	xcb_input_bell_feedback_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_led_feedback_state_t
 **/
struct xcb_input_led_feedback_state_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	uint led_mask; /**<  */
	uint led_values; /**<  */
}

/**
 * @brief xcb_input_led_feedback_state_iterator_t
 **/
struct xcb_input_led_feedback_state_iterator_t {
	xcb_input_led_feedback_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_feedback_state_t
 **/
struct xcb_input_feedback_state_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
}

/**
 * @brief xcb_input_feedback_state_iterator_t
 **/
struct xcb_input_feedback_state_iterator_t {
	xcb_input_feedback_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_get_feedback_control_cookie_t
 **/
struct xcb_input_get_feedback_control_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_feedback_control. */
enum XCB_INPUT_GET_FEEDBACK_CONTROL = 22;

/**
 * @brief xcb_input_get_feedback_control_request_t
 **/
struct xcb_input_get_feedback_control_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_get_feedback_control_reply_t
 **/
struct xcb_input_get_feedback_control_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_feedbacks; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_input_kbd_feedback_ctl_t
 **/
struct xcb_input_kbd_feedback_ctl_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	xcb_input_key_code_t key; /**<  */
	ubyte auto_repeat_mode; /**<  */
	byte key_click_percent; /**<  */
	byte bell_percent; /**<  */
	short bell_pitch; /**<  */
	short bell_duration; /**<  */
	uint led_mask; /**<  */
	uint led_values; /**<  */
}

/**
 * @brief xcb_input_kbd_feedback_ctl_iterator_t
 **/
struct xcb_input_kbd_feedback_ctl_iterator_t {
	xcb_input_kbd_feedback_ctl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_ptr_feedback_ctl_t
 **/
struct xcb_input_ptr_feedback_ctl_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	ubyte[2] pad0; /**<  */
	short num; /**<  */
	short denom; /**<  */
	short threshold; /**<  */
}

/**
 * @brief xcb_input_ptr_feedback_ctl_iterator_t
 **/
struct xcb_input_ptr_feedback_ctl_iterator_t {
	xcb_input_ptr_feedback_ctl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_integer_feedback_ctl_t
 **/
struct xcb_input_integer_feedback_ctl_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	int int_to_display; /**<  */
}

/**
 * @brief xcb_input_integer_feedback_ctl_iterator_t
 **/
struct xcb_input_integer_feedback_ctl_iterator_t {
	xcb_input_integer_feedback_ctl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_string_feedback_ctl_t
 **/
struct xcb_input_string_feedback_ctl_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	ubyte[2] pad0; /**<  */
	ushort num_keysyms; /**<  */
}

/**
 * @brief xcb_input_string_feedback_ctl_iterator_t
 **/
struct xcb_input_string_feedback_ctl_iterator_t {
	xcb_input_string_feedback_ctl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_bell_feedback_ctl_t
 **/
struct xcb_input_bell_feedback_ctl_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	byte percent; /**<  */
	ubyte[3] pad0; /**<  */
	short pitch; /**<  */
	short duration; /**<  */
}

/**
 * @brief xcb_input_bell_feedback_ctl_iterator_t
 **/
struct xcb_input_bell_feedback_ctl_iterator_t {
	xcb_input_bell_feedback_ctl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_led_feedback_ctl_t
 **/
struct xcb_input_led_feedback_ctl_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
	uint led_mask; /**<  */
	uint led_values; /**<  */
}

/**
 * @brief xcb_input_led_feedback_ctl_iterator_t
 **/
struct xcb_input_led_feedback_ctl_iterator_t {
	xcb_input_led_feedback_ctl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_feedback_ctl_t
 **/
struct xcb_input_feedback_ctl_t {
	ubyte class_id; /**<  */
	ubyte feedback_id; /**<  */
	ushort len; /**<  */
}

/**
 * @brief xcb_input_feedback_ctl_iterator_t
 **/
struct xcb_input_feedback_ctl_iterator_t {
	xcb_input_feedback_ctl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_input_change_feedback_control. */
enum XCB_INPUT_CHANGE_FEEDBACK_CONTROL = 23;

/**
 * @brief xcb_input_change_feedback_control_request_t
 **/
struct xcb_input_change_feedback_control_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint mask; /**<  */
	ubyte device_id; /**<  */
	ubyte feedback_id; /**<  */
}

/**
 * @brief xcb_input_get_device_key_mapping_cookie_t
 **/
struct xcb_input_get_device_key_mapping_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_key_mapping. */
enum XCB_INPUT_GET_DEVICE_KEY_MAPPING = 24;

/**
 * @brief xcb_input_get_device_key_mapping_request_t
 **/
struct xcb_input_get_device_key_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	xcb_input_key_code_t first_keycode; /**<  */
	ubyte count; /**<  */
}

/**
 * @brief xcb_input_get_device_key_mapping_reply_t
 **/
struct xcb_input_get_device_key_mapping_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte keysyms_per_keycode; /**<  */
	ubyte[23] pad1; /**<  */
}

/** Opcode for xcb_input_change_device_key_mapping. */
enum XCB_INPUT_CHANGE_DEVICE_KEY_MAPPING = 25;

/**
 * @brief xcb_input_change_device_key_mapping_request_t
 **/
struct xcb_input_change_device_key_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	xcb_input_key_code_t first_keycode; /**<  */
	ubyte keysyms_per_keycode; /**<  */
	ubyte keycode_count; /**<  */
}

/**
 * @brief xcb_input_get_device_modifier_mapping_cookie_t
 **/
struct xcb_input_get_device_modifier_mapping_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_modifier_mapping. */
enum XCB_INPUT_GET_DEVICE_MODIFIER_MAPPING = 26;

/**
 * @brief xcb_input_get_device_modifier_mapping_request_t
 **/
struct xcb_input_get_device_modifier_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_get_device_modifier_mapping_reply_t
 **/
struct xcb_input_get_device_modifier_mapping_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte keycodes_per_modifier; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_input_set_device_modifier_mapping_cookie_t
 **/
struct xcb_input_set_device_modifier_mapping_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_set_device_modifier_mapping. */
enum XCB_INPUT_SET_DEVICE_MODIFIER_MAPPING = 27;

/**
 * @brief xcb_input_set_device_modifier_mapping_request_t
 **/
struct xcb_input_set_device_modifier_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte keycodes_per_modifier; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_input_set_device_modifier_mapping_reply_t
 **/
struct xcb_input_set_device_modifier_mapping_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte status; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_input_get_device_button_mapping_cookie_t
 **/
struct xcb_input_get_device_button_mapping_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_button_mapping. */
enum XCB_INPUT_GET_DEVICE_BUTTON_MAPPING = 28;

/**
 * @brief xcb_input_get_device_button_mapping_request_t
 **/
struct xcb_input_get_device_button_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_get_device_button_mapping_reply_t
 **/
struct xcb_input_get_device_button_mapping_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte map_size; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_input_set_device_button_mapping_cookie_t
 **/
struct xcb_input_set_device_button_mapping_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_set_device_button_mapping. */
enum XCB_INPUT_SET_DEVICE_BUTTON_MAPPING = 29;

/**
 * @brief xcb_input_set_device_button_mapping_request_t
 **/
struct xcb_input_set_device_button_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte map_size; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_set_device_button_mapping_reply_t
 **/
struct xcb_input_set_device_button_mapping_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte status; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_input_key_state_t
 **/
struct xcb_input_key_state_t {
	ubyte class_id; /**<  */
	ubyte len; /**<  */
	ubyte num_keys; /**<  */
	ubyte pad0; /**<  */
	ubyte[32] keys; /**<  */
}

/**
 * @brief xcb_input_key_state_iterator_t
 **/
struct xcb_input_key_state_iterator_t {
	xcb_input_key_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_button_state_t
 **/
struct xcb_input_button_state_t {
	ubyte class_id; /**<  */
	ubyte len; /**<  */
	ubyte num_buttons; /**<  */
	ubyte pad0; /**<  */
	ubyte[32] buttons; /**<  */
}

/**
 * @brief xcb_input_button_state_iterator_t
 **/
struct xcb_input_button_state_iterator_t {
	xcb_input_button_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_valuator_state_t
 **/
struct xcb_input_valuator_state_t {
	ubyte class_id; /**<  */
	ubyte len; /**<  */
	ubyte num_valuators; /**<  */
	ubyte mode; /**<  */
}

/**
 * @brief xcb_input_valuator_state_iterator_t
 **/
struct xcb_input_valuator_state_iterator_t {
	xcb_input_valuator_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_input_state_t
 **/
struct xcb_input_input_state_t {
	ubyte class_id; /**<  */
	ubyte len; /**<  */
	ubyte num_items; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_input_input_state_iterator_t
 **/
struct xcb_input_input_state_iterator_t {
	xcb_input_input_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_query_device_state_cookie_t
 **/
struct xcb_input_query_device_state_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_query_device_state. */
enum XCB_INPUT_QUERY_DEVICE_STATE = 30;

/**
 * @brief xcb_input_query_device_state_request_t
 **/
struct xcb_input_query_device_state_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_query_device_state_reply_t
 **/
struct xcb_input_query_device_state_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte num_classes; /**<  */
	ubyte[23] pad1; /**<  */
}

/** Opcode for xcb_input_send_extension_event. */
enum XCB_INPUT_SEND_EXTENSION_EVENT = 31;

/**
 * @brief xcb_input_send_extension_event_request_t
 **/
struct xcb_input_send_extension_event_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t destination; /**<  */
	ubyte device_id; /**<  */
	ubyte propagate; /**<  */
	ushort num_classes; /**<  */
	ubyte num_events; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_input_device_bell. */
enum XCB_INPUT_DEVICE_BELL = 32;

/**
 * @brief xcb_input_device_bell_request_t
 **/
struct xcb_input_device_bell_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte feedback_id; /**<  */
	ubyte feedback_class; /**<  */
	byte percent; /**<  */
}

/**
 * @brief xcb_input_set_device_valuators_cookie_t
 **/
struct xcb_input_set_device_valuators_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_set_device_valuators. */
enum XCB_INPUT_SET_DEVICE_VALUATORS = 33;

/**
 * @brief xcb_input_set_device_valuators_request_t
 **/
struct xcb_input_set_device_valuators_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte first_valuator; /**<  */
	ubyte num_valuators; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_input_set_device_valuators_reply_t
 **/
struct xcb_input_set_device_valuators_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte status; /**<  */
	ubyte[23] pad1; /**<  */
}

enum xcb_input_device_control_t {
	XCB_INPUT_DEVICE_CONTROL_RESOLUTION = 1,
	XCB_INPUT_DEVICE_CONTROL_ABS_CALIB = 2,
	XCB_INPUT_DEVICE_CONTROL_CORE = 3,
	XCB_INPUT_DEVICE_CONTROL_ENABLE = 4,
	XCB_INPUT_DEVICE_CONTROL_ABS_AREA = 5
}

alias XCB_INPUT_DEVICE_CONTROL_RESOLUTION = xcb_input_device_control_t.XCB_INPUT_DEVICE_CONTROL_RESOLUTION;
alias XCB_INPUT_DEVICE_CONTROL_ABS_CALIB = xcb_input_device_control_t.XCB_INPUT_DEVICE_CONTROL_ABS_CALIB;
alias XCB_INPUT_DEVICE_CONTROL_CORE = xcb_input_device_control_t.XCB_INPUT_DEVICE_CONTROL_CORE;
alias XCB_INPUT_DEVICE_CONTROL_ENABLE = xcb_input_device_control_t.XCB_INPUT_DEVICE_CONTROL_ENABLE;
alias XCB_INPUT_DEVICE_CONTROL_ABS_AREA = xcb_input_device_control_t.XCB_INPUT_DEVICE_CONTROL_ABS_AREA;

/**
 * @brief xcb_input_device_resolution_state_t
 **/
struct xcb_input_device_resolution_state_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
	uint num_valuators; /**<  */
}

/**
 * @brief xcb_input_device_resolution_state_iterator_t
 **/
struct xcb_input_device_resolution_state_iterator_t {
	xcb_input_device_resolution_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_abs_calib_state_t
 **/
struct xcb_input_device_abs_calib_state_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
	int min_x; /**<  */
	int max_x; /**<  */
	int min_y; /**<  */
	int max_y; /**<  */
	uint flip_x; /**<  */
	uint flip_y; /**<  */
	uint rotation; /**<  */
	uint button_threshold; /**<  */
}

/**
 * @brief xcb_input_device_abs_calib_state_iterator_t
 **/
struct xcb_input_device_abs_calib_state_iterator_t {
	xcb_input_device_abs_calib_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_abs_area_state_t
 **/
struct xcb_input_device_abs_area_state_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
	uint offset_x; /**<  */
	uint offset_y; /**<  */
	uint width; /**<  */
	uint height; /**<  */
	uint screen; /**<  */
	uint following; /**<  */
}

/**
 * @brief xcb_input_device_abs_area_state_iterator_t
 **/
struct xcb_input_device_abs_area_state_iterator_t {
	xcb_input_device_abs_area_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_core_state_t
 **/
struct xcb_input_device_core_state_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
	ubyte status; /**<  */
	ubyte iscore; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_device_core_state_iterator_t
 **/
struct xcb_input_device_core_state_iterator_t {
	xcb_input_device_core_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_enable_state_t
 **/
struct xcb_input_device_enable_state_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
	ubyte enable; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_device_enable_state_iterator_t
 **/
struct xcb_input_device_enable_state_iterator_t {
	xcb_input_device_enable_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_state_t
 **/
struct xcb_input_device_state_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
}

/**
 * @brief xcb_input_device_state_iterator_t
 **/
struct xcb_input_device_state_iterator_t {
	xcb_input_device_state_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_get_device_control_cookie_t
 **/
struct xcb_input_get_device_control_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_control. */
enum XCB_INPUT_GET_DEVICE_CONTROL = 34;

/**
 * @brief xcb_input_get_device_control_request_t
 **/
struct xcb_input_get_device_control_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort control_id; /**<  */
	ubyte device_id; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_input_get_device_control_reply_t
 **/
struct xcb_input_get_device_control_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte status; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_input_device_resolution_ctl_t
 **/
struct xcb_input_device_resolution_ctl_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
	ubyte first_valuator; /**<  */
	ubyte num_valuators; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_device_resolution_ctl_iterator_t
 **/
struct xcb_input_device_resolution_ctl_iterator_t {
	xcb_input_device_resolution_ctl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_abs_calib_ctl_t
 **/
struct xcb_input_device_abs_calib_ctl_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
	int min_x; /**<  */
	int max_x; /**<  */
	int min_y; /**<  */
	int max_y; /**<  */
	uint flip_x; /**<  */
	uint flip_y; /**<  */
	uint rotation; /**<  */
	uint button_threshold; /**<  */
}

/**
 * @brief xcb_input_device_abs_calib_ctl_iterator_t
 **/
struct xcb_input_device_abs_calib_ctl_iterator_t {
	xcb_input_device_abs_calib_ctl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_abs_area_ctrl_t
 **/
struct xcb_input_device_abs_area_ctrl_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
	uint offset_x; /**<  */
	uint offset_y; /**<  */
	int width; /**<  */
	int height; /**<  */
	int screen; /**<  */
	uint following; /**<  */
}

/**
 * @brief xcb_input_device_abs_area_ctrl_iterator_t
 **/
struct xcb_input_device_abs_area_ctrl_iterator_t {
	xcb_input_device_abs_area_ctrl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_core_ctrl_t
 **/
struct xcb_input_device_core_ctrl_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
	ubyte status; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_device_core_ctrl_iterator_t
 **/
struct xcb_input_device_core_ctrl_iterator_t {
	xcb_input_device_core_ctrl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_enable_ctrl_t
 **/
struct xcb_input_device_enable_ctrl_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
	ubyte enable; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_device_enable_ctrl_iterator_t
 **/
struct xcb_input_device_enable_ctrl_iterator_t {
	xcb_input_device_enable_ctrl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_ctl_t
 **/
struct xcb_input_device_ctl_t {
	ushort control_id; /**<  */
	ushort len; /**<  */
}

/**
 * @brief xcb_input_device_ctl_iterator_t
 **/
struct xcb_input_device_ctl_iterator_t {
	xcb_input_device_ctl_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_change_device_control_cookie_t
 **/
struct xcb_input_change_device_control_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_change_device_control. */
enum XCB_INPUT_CHANGE_DEVICE_CONTROL = 35;

/**
 * @brief xcb_input_change_device_control_request_t
 **/
struct xcb_input_change_device_control_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort control_id; /**<  */
	ubyte device_id; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_input_change_device_control_reply_t
 **/
struct xcb_input_change_device_control_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte status; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_input_list_device_properties_cookie_t
 **/
struct xcb_input_list_device_properties_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_list_device_properties. */
enum XCB_INPUT_LIST_DEVICE_PROPERTIES = 36;

/**
 * @brief xcb_input_list_device_properties_request_t
 **/
struct xcb_input_list_device_properties_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte device_id; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_list_device_properties_reply_t
 **/
struct xcb_input_list_device_properties_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_atoms; /**<  */
	ubyte[22] pad1; /**<  */
}

enum xcb_input_property_format_t {
	XCB_INPUT_PROPERTY_FORMAT_8_BITS = 8,
	XCB_INPUT_PROPERTY_FORMAT_16_BITS = 16,
	XCB_INPUT_PROPERTY_FORMAT_32_BITS = 32
}

alias XCB_INPUT_PROPERTY_FORMAT_8_BITS = xcb_input_property_format_t.XCB_INPUT_PROPERTY_FORMAT_8_BITS;
alias XCB_INPUT_PROPERTY_FORMAT_16_BITS = xcb_input_property_format_t.XCB_INPUT_PROPERTY_FORMAT_16_BITS;
alias XCB_INPUT_PROPERTY_FORMAT_32_BITS = xcb_input_property_format_t.XCB_INPUT_PROPERTY_FORMAT_32_BITS;

/**
 * @brief xcb_input_change_device_property_items_t
 **/
struct xcb_input_change_device_property_items_t {
	ubyte* data8; /**<  */
	ushort* data16; /**<  */
	uint* data32; /**<  */
}

/** Opcode for xcb_input_change_device_property. */
enum XCB_INPUT_CHANGE_DEVICE_PROPERTY = 37;

/**
 * @brief xcb_input_change_device_property_request_t
 **/
struct xcb_input_change_device_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_atom_t property; /**<  */
	xcb_atom_t type; /**<  */
	ubyte device_id; /**<  */
	ubyte format; /**<  */
	ubyte mode; /**<  */
	ubyte pad0; /**<  */
	uint num_items; /**<  */
}

/** Opcode for xcb_input_delete_device_property. */
enum XCB_INPUT_DELETE_DEVICE_PROPERTY = 38;

/**
 * @brief xcb_input_delete_device_property_request_t
 **/
struct xcb_input_delete_device_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_atom_t property; /**<  */
	ubyte device_id; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_get_device_property_cookie_t
 **/
struct xcb_input_get_device_property_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_property. */
enum XCB_INPUT_GET_DEVICE_PROPERTY = 39;

/**
 * @brief xcb_input_get_device_property_request_t
 **/
struct xcb_input_get_device_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_atom_t property; /**<  */
	xcb_atom_t type; /**<  */
	uint offset; /**<  */
	uint len; /**<  */
	ubyte device_id; /**<  */
	ubyte delete_; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_get_device_property_items_t
 **/
struct xcb_input_get_device_property_items_t {
	ubyte* data8; /**<  */
	ushort* data16; /**<  */
	uint* data32; /**<  */
}

/**
 * @brief xcb_input_get_device_property_reply_t
 **/
struct xcb_input_get_device_property_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_atom_t type; /**<  */
	uint bytes_after; /**<  */
	uint num_items; /**<  */
	ubyte format; /**<  */
	ubyte device_id; /**<  */
	ubyte[10] pad1; /**<  */
}

enum xcb_input_device_t {
	XCB_INPUT_DEVICE_ALL = 0,
	XCB_INPUT_DEVICE_ALL_MASTER = 1
}

alias XCB_INPUT_DEVICE_ALL = xcb_input_device_t.XCB_INPUT_DEVICE_ALL;
alias XCB_INPUT_DEVICE_ALL_MASTER = xcb_input_device_t.XCB_INPUT_DEVICE_ALL_MASTER;

/**
 * @brief xcb_input_group_info_t
 **/
struct xcb_input_group_info_t {
	ubyte base; /**<  */
	ubyte latched; /**<  */
	ubyte locked; /**<  */
	ubyte effective; /**<  */
}

/**
 * @brief xcb_input_group_info_iterator_t
 **/
struct xcb_input_group_info_iterator_t {
	xcb_input_group_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_modifier_info_t
 **/
struct xcb_input_modifier_info_t {
	uint base; /**<  */
	uint latched; /**<  */
	uint locked; /**<  */
	uint effective; /**<  */
}

/**
 * @brief xcb_input_modifier_info_iterator_t
 **/
struct xcb_input_modifier_info_iterator_t {
	xcb_input_modifier_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_xi_query_pointer_cookie_t
 **/
struct xcb_input_xi_query_pointer_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_xi_query_pointer. */
enum XCB_INPUT_XI_QUERY_POINTER = 40;

/**
 * @brief xcb_input_xi_query_pointer_request_t
 **/
struct xcb_input_xi_query_pointer_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_xi_query_pointer_reply_t
 **/
struct xcb_input_xi_query_pointer_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t child; /**<  */
	xcb_input_fp1616_t root_x; /**<  */
	xcb_input_fp1616_t root_y; /**<  */
	xcb_input_fp1616_t win_x; /**<  */
	xcb_input_fp1616_t win_y; /**<  */
	ubyte same_screen; /**<  */
	ubyte pad1; /**<  */
	ushort buttons_len; /**<  */
	xcb_input_modifier_info_t mods; /**<  */
	xcb_input_group_info_t group; /**<  */
}

/** Opcode for xcb_input_xi_warp_pointer. */
enum XCB_INPUT_XI_WARP_POINTER = 41;

/**
 * @brief xcb_input_xi_warp_pointer_request_t
 **/
struct xcb_input_xi_warp_pointer_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t src_win; /**<  */
	xcb_window_t dst_win; /**<  */
	xcb_input_fp1616_t src_x; /**<  */
	xcb_input_fp1616_t src_y; /**<  */
	ushort src_width; /**<  */
	ushort src_height; /**<  */
	xcb_input_fp1616_t dst_x; /**<  */
	xcb_input_fp1616_t dst_y; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
}

/** Opcode for xcb_input_xi_change_cursor. */
enum XCB_INPUT_XI_CHANGE_CURSOR = 42;

/**
 * @brief xcb_input_xi_change_cursor_request_t
 **/
struct xcb_input_xi_change_cursor_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_cursor_t cursor; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
}

enum xcb_input_hierarchy_change_type_t {
	XCB_INPUT_HIERARCHY_CHANGE_TYPE_ADD_MASTER = 1,
	XCB_INPUT_HIERARCHY_CHANGE_TYPE_REMOVE_MASTER = 2,
	XCB_INPUT_HIERARCHY_CHANGE_TYPE_ATTACH_SLAVE = 3,
	XCB_INPUT_HIERARCHY_CHANGE_TYPE_DETACH_SLAVE = 4
}

alias XCB_INPUT_HIERARCHY_CHANGE_TYPE_ADD_MASTER = xcb_input_hierarchy_change_type_t.XCB_INPUT_HIERARCHY_CHANGE_TYPE_ADD_MASTER;
alias XCB_INPUT_HIERARCHY_CHANGE_TYPE_REMOVE_MASTER = xcb_input_hierarchy_change_type_t.XCB_INPUT_HIERARCHY_CHANGE_TYPE_REMOVE_MASTER;
alias XCB_INPUT_HIERARCHY_CHANGE_TYPE_ATTACH_SLAVE = xcb_input_hierarchy_change_type_t.XCB_INPUT_HIERARCHY_CHANGE_TYPE_ATTACH_SLAVE;
alias XCB_INPUT_HIERARCHY_CHANGE_TYPE_DETACH_SLAVE = xcb_input_hierarchy_change_type_t.XCB_INPUT_HIERARCHY_CHANGE_TYPE_DETACH_SLAVE;

enum xcb_input_change_mode_t {
	XCB_INPUT_CHANGE_MODE_ATTACH = 1,
	XCB_INPUT_CHANGE_MODE_FLOAT = 2
}

alias XCB_INPUT_CHANGE_MODE_ATTACH = xcb_input_change_mode_t.XCB_INPUT_CHANGE_MODE_ATTACH;
alias XCB_INPUT_CHANGE_MODE_FLOAT = xcb_input_change_mode_t.XCB_INPUT_CHANGE_MODE_FLOAT;

/**
 * @brief xcb_input_add_master_t
 **/
struct xcb_input_add_master_t {
	ushort type; /**<  */
	ushort len; /**<  */
	ushort name_len; /**<  */
	ubyte send_core; /**<  */
	ubyte enable; /**<  */
}

/**
 * @brief xcb_input_add_master_iterator_t
 **/
struct xcb_input_add_master_iterator_t {
	xcb_input_add_master_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_remove_master_t
 **/
struct xcb_input_remove_master_t {
	ushort type; /**<  */
	ushort len; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte return_mode; /**<  */
	ubyte pad0; /**<  */
	xcb_input_device_id_t return_pointer; /**<  */
	xcb_input_device_id_t return_keyboard; /**<  */
}

/**
 * @brief xcb_input_remove_master_iterator_t
 **/
struct xcb_input_remove_master_iterator_t {
	xcb_input_remove_master_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_attach_slave_t
 **/
struct xcb_input_attach_slave_t {
	ushort type; /**<  */
	ushort len; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_input_device_id_t master; /**<  */
}

/**
 * @brief xcb_input_attach_slave_iterator_t
 **/
struct xcb_input_attach_slave_iterator_t {
	xcb_input_attach_slave_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_detach_slave_t
 **/
struct xcb_input_detach_slave_t {
	ushort type; /**<  */
	ushort len; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_detach_slave_iterator_t
 **/
struct xcb_input_detach_slave_iterator_t {
	xcb_input_detach_slave_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_hierarchy_change_t
 **/
struct xcb_input_hierarchy_change_t {
	ushort type; /**<  */
	ushort len; /**<  */
}

/**
 * @brief xcb_input_hierarchy_change_iterator_t
 **/
struct xcb_input_hierarchy_change_iterator_t {
	xcb_input_hierarchy_change_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_input_xi_change_hierarchy. */
enum XCB_INPUT_XI_CHANGE_HIERARCHY = 43;

/**
 * @brief xcb_input_xi_change_hierarchy_request_t
 **/
struct xcb_input_xi_change_hierarchy_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte num_changes; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_input_xi_set_client_pointer. */
enum XCB_INPUT_XI_SET_CLIENT_POINTER = 44;

/**
 * @brief xcb_input_xi_set_client_pointer_request_t
 **/
struct xcb_input_xi_set_client_pointer_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_xi_get_client_pointer_cookie_t
 **/
struct xcb_input_xi_get_client_pointer_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_xi_get_client_pointer. */
enum XCB_INPUT_XI_GET_CLIENT_POINTER = 45;

/**
 * @brief xcb_input_xi_get_client_pointer_request_t
 **/
struct xcb_input_xi_get_client_pointer_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_input_xi_get_client_pointer_reply_t
 **/
struct xcb_input_xi_get_client_pointer_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte set; /**<  */
	ubyte pad1; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[20] pad2; /**<  */
}

enum xcb_input_xi_event_mask_t {
	XCB_INPUT_XI_EVENT_MASK_DEVICE_CHANGED = 2,
	XCB_INPUT_XI_EVENT_MASK_KEY_PRESS = 4,
	XCB_INPUT_XI_EVENT_MASK_KEY_RELEASE = 8,
	XCB_INPUT_XI_EVENT_MASK_BUTTON_PRESS = 16,
	XCB_INPUT_XI_EVENT_MASK_BUTTON_RELEASE = 32,
	XCB_INPUT_XI_EVENT_MASK_MOTION = 64,
	XCB_INPUT_XI_EVENT_MASK_ENTER = 128,
	XCB_INPUT_XI_EVENT_MASK_LEAVE = 256,
	XCB_INPUT_XI_EVENT_MASK_FOCUS_IN = 512,
	XCB_INPUT_XI_EVENT_MASK_FOCUS_OUT = 1024,
	XCB_INPUT_XI_EVENT_MASK_HIERARCHY = 2048,
	XCB_INPUT_XI_EVENT_MASK_PROPERTY = 4096,
	XCB_INPUT_XI_EVENT_MASK_RAW_KEY_PRESS = 8192,
	XCB_INPUT_XI_EVENT_MASK_RAW_KEY_RELEASE = 16384,
	XCB_INPUT_XI_EVENT_MASK_RAW_BUTTON_PRESS = 32768,
	XCB_INPUT_XI_EVENT_MASK_RAW_BUTTON_RELEASE = 65536,
	XCB_INPUT_XI_EVENT_MASK_RAW_MOTION = 131072,
	XCB_INPUT_XI_EVENT_MASK_TOUCH_BEGIN = 262144,
	XCB_INPUT_XI_EVENT_MASK_TOUCH_UPDATE = 524288,
	XCB_INPUT_XI_EVENT_MASK_TOUCH_END = 1048576,
	XCB_INPUT_XI_EVENT_MASK_TOUCH_OWNERSHIP = 2097152,
	XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_BEGIN = 4194304,
	XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_UPDATE = 8388608,
	XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_END = 16777216,
	XCB_INPUT_XI_EVENT_MASK_BARRIER_HIT = 33554432,
	XCB_INPUT_XI_EVENT_MASK_BARRIER_LEAVE = 67108864
}

alias XCB_INPUT_XI_EVENT_MASK_DEVICE_CHANGED = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_DEVICE_CHANGED;
alias XCB_INPUT_XI_EVENT_MASK_KEY_PRESS = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_KEY_PRESS;
alias XCB_INPUT_XI_EVENT_MASK_KEY_RELEASE = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_KEY_RELEASE;
alias XCB_INPUT_XI_EVENT_MASK_BUTTON_PRESS = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_BUTTON_PRESS;
alias XCB_INPUT_XI_EVENT_MASK_BUTTON_RELEASE = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_BUTTON_RELEASE;
alias XCB_INPUT_XI_EVENT_MASK_MOTION = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_MOTION;
alias XCB_INPUT_XI_EVENT_MASK_ENTER = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_ENTER;
alias XCB_INPUT_XI_EVENT_MASK_LEAVE = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_LEAVE;
alias XCB_INPUT_XI_EVENT_MASK_FOCUS_IN = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_FOCUS_IN;
alias XCB_INPUT_XI_EVENT_MASK_FOCUS_OUT = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_FOCUS_OUT;
alias XCB_INPUT_XI_EVENT_MASK_HIERARCHY = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_HIERARCHY;
alias XCB_INPUT_XI_EVENT_MASK_PROPERTY = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_PROPERTY;
alias XCB_INPUT_XI_EVENT_MASK_RAW_KEY_PRESS = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_RAW_KEY_PRESS;
alias XCB_INPUT_XI_EVENT_MASK_RAW_KEY_RELEASE = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_RAW_KEY_RELEASE;
alias XCB_INPUT_XI_EVENT_MASK_RAW_BUTTON_PRESS = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_RAW_BUTTON_PRESS;
alias XCB_INPUT_XI_EVENT_MASK_RAW_BUTTON_RELEASE = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_RAW_BUTTON_RELEASE;
alias XCB_INPUT_XI_EVENT_MASK_RAW_MOTION = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_RAW_MOTION;
alias XCB_INPUT_XI_EVENT_MASK_TOUCH_BEGIN = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_TOUCH_BEGIN;
alias XCB_INPUT_XI_EVENT_MASK_TOUCH_UPDATE = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_TOUCH_UPDATE;
alias XCB_INPUT_XI_EVENT_MASK_TOUCH_END = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_TOUCH_END;
alias XCB_INPUT_XI_EVENT_MASK_TOUCH_OWNERSHIP = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_TOUCH_OWNERSHIP;
alias XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_BEGIN = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_BEGIN;
alias XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_UPDATE = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_UPDATE;
alias XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_END = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_END;
alias XCB_INPUT_XI_EVENT_MASK_BARRIER_HIT = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_BARRIER_HIT;
alias XCB_INPUT_XI_EVENT_MASK_BARRIER_LEAVE = xcb_input_xi_event_mask_t.XCB_INPUT_XI_EVENT_MASK_BARRIER_LEAVE;

/**
 * @brief xcb_input_event_mask_t
 **/
struct xcb_input_event_mask_t {
	xcb_input_device_id_t deviceid; /**<  */
	ushort mask_len; /**<  */
}

/**
 * @brief xcb_input_event_mask_iterator_t
 **/
struct xcb_input_event_mask_iterator_t {
	xcb_input_event_mask_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_input_xi_select_events. */
enum XCB_INPUT_XI_SELECT_EVENTS = 46;

/**
 * @brief xcb_input_xi_select_events_request_t
 **/
struct xcb_input_xi_select_events_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ushort num_mask; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_xi_query_version_cookie_t
 **/
struct xcb_input_xi_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_xi_query_version. */
enum XCB_INPUT_XI_QUERY_VERSION = 47;

/**
 * @brief xcb_input_xi_query_version_request_t
 **/
struct xcb_input_xi_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort major_version; /**<  */
	ushort minor_version; /**<  */
}

/**
 * @brief xcb_input_xi_query_version_reply_t
 **/
struct xcb_input_xi_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort major_version; /**<  */
	ushort minor_version; /**<  */
	ubyte[20] pad1; /**<  */
}

enum xcb_input_device_class_type_t {
	XCB_INPUT_DEVICE_CLASS_TYPE_KEY = 0,
	XCB_INPUT_DEVICE_CLASS_TYPE_BUTTON = 1,
	XCB_INPUT_DEVICE_CLASS_TYPE_VALUATOR = 2,
	XCB_INPUT_DEVICE_CLASS_TYPE_SCROLL = 3,
	XCB_INPUT_DEVICE_CLASS_TYPE_TOUCH = 8
}

alias XCB_INPUT_DEVICE_CLASS_TYPE_KEY = xcb_input_device_class_type_t.XCB_INPUT_DEVICE_CLASS_TYPE_KEY;
alias XCB_INPUT_DEVICE_CLASS_TYPE_BUTTON = xcb_input_device_class_type_t.XCB_INPUT_DEVICE_CLASS_TYPE_BUTTON;
alias XCB_INPUT_DEVICE_CLASS_TYPE_VALUATOR = xcb_input_device_class_type_t.XCB_INPUT_DEVICE_CLASS_TYPE_VALUATOR;
alias XCB_INPUT_DEVICE_CLASS_TYPE_SCROLL = xcb_input_device_class_type_t.XCB_INPUT_DEVICE_CLASS_TYPE_SCROLL;
alias XCB_INPUT_DEVICE_CLASS_TYPE_TOUCH = xcb_input_device_class_type_t.XCB_INPUT_DEVICE_CLASS_TYPE_TOUCH;

enum xcb_input_device_type_t {
	XCB_INPUT_DEVICE_TYPE_MASTER_POINTER = 1,
	XCB_INPUT_DEVICE_TYPE_MASTER_KEYBOARD = 2,
	XCB_INPUT_DEVICE_TYPE_SLAVE_POINTER = 3,
	XCB_INPUT_DEVICE_TYPE_SLAVE_KEYBOARD = 4,
	XCB_INPUT_DEVICE_TYPE_FLOATING_SLAVE = 5
}

alias XCB_INPUT_DEVICE_TYPE_MASTER_POINTER = xcb_input_device_type_t.XCB_INPUT_DEVICE_TYPE_MASTER_POINTER;
alias XCB_INPUT_DEVICE_TYPE_MASTER_KEYBOARD = xcb_input_device_type_t.XCB_INPUT_DEVICE_TYPE_MASTER_KEYBOARD;
alias XCB_INPUT_DEVICE_TYPE_SLAVE_POINTER = xcb_input_device_type_t.XCB_INPUT_DEVICE_TYPE_SLAVE_POINTER;
alias XCB_INPUT_DEVICE_TYPE_SLAVE_KEYBOARD = xcb_input_device_type_t.XCB_INPUT_DEVICE_TYPE_SLAVE_KEYBOARD;
alias XCB_INPUT_DEVICE_TYPE_FLOATING_SLAVE = xcb_input_device_type_t.XCB_INPUT_DEVICE_TYPE_FLOATING_SLAVE;

enum xcb_input_scroll_flags_t {
	XCB_INPUT_SCROLL_FLAGS_NO_EMULATION = 1,
	XCB_INPUT_SCROLL_FLAGS_PREFERRED = 2
}

alias XCB_INPUT_SCROLL_FLAGS_NO_EMULATION = xcb_input_scroll_flags_t.XCB_INPUT_SCROLL_FLAGS_NO_EMULATION;
alias XCB_INPUT_SCROLL_FLAGS_PREFERRED = xcb_input_scroll_flags_t.XCB_INPUT_SCROLL_FLAGS_PREFERRED;

enum xcb_input_scroll_type_t {
	XCB_INPUT_SCROLL_TYPE_VERTICAL = 1,
	XCB_INPUT_SCROLL_TYPE_HORIZONTAL = 2
}

alias XCB_INPUT_SCROLL_TYPE_VERTICAL = xcb_input_scroll_type_t.XCB_INPUT_SCROLL_TYPE_VERTICAL;
alias XCB_INPUT_SCROLL_TYPE_HORIZONTAL = xcb_input_scroll_type_t.XCB_INPUT_SCROLL_TYPE_HORIZONTAL;

enum xcb_input_touch_mode_t {
	XCB_INPUT_TOUCH_MODE_DIRECT = 1,
	XCB_INPUT_TOUCH_MODE_DEPENDENT = 2
}

alias XCB_INPUT_TOUCH_MODE_DIRECT = xcb_input_touch_mode_t.XCB_INPUT_TOUCH_MODE_DIRECT;
alias XCB_INPUT_TOUCH_MODE_DEPENDENT = xcb_input_touch_mode_t.XCB_INPUT_TOUCH_MODE_DEPENDENT;

/**
 * @brief xcb_input_button_class_t
 **/
struct xcb_input_button_class_t {
	ushort type; /**<  */
	ushort len; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ushort num_buttons; /**<  */
}

/**
 * @brief xcb_input_button_class_iterator_t
 **/
struct xcb_input_button_class_iterator_t {
	xcb_input_button_class_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_key_class_t
 **/
struct xcb_input_key_class_t {
	ushort type; /**<  */
	ushort len; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ushort num_keys; /**<  */
}

/**
 * @brief xcb_input_key_class_iterator_t
 **/
struct xcb_input_key_class_iterator_t {
	xcb_input_key_class_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_scroll_class_t
 **/
struct xcb_input_scroll_class_t {
	ushort type; /**<  */
	ushort len; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ushort number; /**<  */
	ushort scroll_type; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
	xcb_input_fp3232_t increment; /**<  */
}

/**
 * @brief xcb_input_scroll_class_iterator_t
 **/
struct xcb_input_scroll_class_iterator_t {
	xcb_input_scroll_class_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_touch_class_t
 **/
struct xcb_input_touch_class_t {
	ushort type; /**<  */
	ushort len; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ubyte mode; /**<  */
	ubyte num_touches; /**<  */
}

/**
 * @brief xcb_input_touch_class_iterator_t
 **/
struct xcb_input_touch_class_iterator_t {
	xcb_input_touch_class_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_valuator_class_t
 **/
struct xcb_input_valuator_class_t {
	ushort type; /**<  */
	ushort len; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ushort number; /**<  */
	xcb_atom_t label; /**<  */
	xcb_input_fp3232_t min; /**<  */
	xcb_input_fp3232_t max; /**<  */
	xcb_input_fp3232_t value; /**<  */
	uint resolution; /**<  */
	ubyte mode; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_valuator_class_iterator_t
 **/
struct xcb_input_valuator_class_iterator_t {
	xcb_input_valuator_class_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_device_class_t
 **/
struct xcb_input_device_class_t {
	ushort type; /**<  */
	ushort len; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_device_class_iterator_t
 **/
struct xcb_input_device_class_iterator_t {
	xcb_input_device_class_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_xi_device_info_t
 **/
struct xcb_input_xi_device_info_t {
	xcb_input_device_id_t deviceid; /**<  */
	ushort type; /**<  */
	xcb_input_device_id_t attachment; /**<  */
	ushort num_classes; /**<  */
	ushort name_len; /**<  */
	ubyte enabled; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_input_xi_device_info_iterator_t
 **/
struct xcb_input_xi_device_info_iterator_t {
	xcb_input_xi_device_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_xi_query_device_cookie_t
 **/
struct xcb_input_xi_query_device_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_xi_query_device. */
enum XCB_INPUT_XI_QUERY_DEVICE = 48;

/**
 * @brief xcb_input_xi_query_device_request_t
 **/
struct xcb_input_xi_query_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_xi_query_device_reply_t
 **/
struct xcb_input_xi_query_device_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_infos; /**<  */
	ubyte[22] pad1; /**<  */
}

/** Opcode for xcb_input_xi_set_focus. */
enum XCB_INPUT_XI_SET_FOCUS = 49;

/**
 * @brief xcb_input_xi_set_focus_request_t
 **/
struct xcb_input_xi_set_focus_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_xi_get_focus_cookie_t
 **/
struct xcb_input_xi_get_focus_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_xi_get_focus. */
enum XCB_INPUT_XI_GET_FOCUS = 50;

/**
 * @brief xcb_input_xi_get_focus_request_t
 **/
struct xcb_input_xi_get_focus_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_xi_get_focus_reply_t
 **/
struct xcb_input_xi_get_focus_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t focus; /**<  */
	ubyte[20] pad1; /**<  */
}

enum xcb_input_grab_owner_t {
	XCB_INPUT_GRAB_OWNER_NO_OWNER = 0,
	XCB_INPUT_GRAB_OWNER_OWNER = 1
}

alias XCB_INPUT_GRAB_OWNER_NO_OWNER = xcb_input_grab_owner_t.XCB_INPUT_GRAB_OWNER_NO_OWNER;
alias XCB_INPUT_GRAB_OWNER_OWNER = xcb_input_grab_owner_t.XCB_INPUT_GRAB_OWNER_OWNER;

/**
 * @brief xcb_input_xi_grab_device_cookie_t
 **/
struct xcb_input_xi_grab_device_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_xi_grab_device. */
enum XCB_INPUT_XI_GRAB_DEVICE = 51;

/**
 * @brief xcb_input_xi_grab_device_request_t
 **/
struct xcb_input_xi_grab_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_cursor_t cursor; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte mode; /**<  */
	ubyte paired_device_mode; /**<  */
	ubyte owner_events; /**<  */
	ubyte pad0; /**<  */
	ushort mask_len; /**<  */
}

/**
 * @brief xcb_input_xi_grab_device_reply_t
 **/
struct xcb_input_xi_grab_device_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte status; /**<  */
	ubyte[23] pad1; /**<  */
}

/** Opcode for xcb_input_xi_ungrab_device. */
enum XCB_INPUT_XI_UNGRAB_DEVICE = 52;

/**
 * @brief xcb_input_xi_ungrab_device_request_t
 **/
struct xcb_input_xi_ungrab_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
}

enum xcb_input_event_mode_t {
	XCB_INPUT_EVENT_MODE_ASYNC_DEVICE = 0,
	XCB_INPUT_EVENT_MODE_SYNC_DEVICE = 1,
	XCB_INPUT_EVENT_MODE_REPLAY_DEVICE = 2,
	XCB_INPUT_EVENT_MODE_ASYNC_PAIRED_DEVICE = 3,
	XCB_INPUT_EVENT_MODE_ASYNC_PAIR = 4,
	XCB_INPUT_EVENT_MODE_SYNC_PAIR = 5,
	XCB_INPUT_EVENT_MODE_ACCEPT_TOUCH = 6,
	XCB_INPUT_EVENT_MODE_REJECT_TOUCH = 7
}

alias XCB_INPUT_EVENT_MODE_ASYNC_DEVICE = xcb_input_event_mode_t.XCB_INPUT_EVENT_MODE_ASYNC_DEVICE;
alias XCB_INPUT_EVENT_MODE_SYNC_DEVICE = xcb_input_event_mode_t.XCB_INPUT_EVENT_MODE_SYNC_DEVICE;
alias XCB_INPUT_EVENT_MODE_REPLAY_DEVICE = xcb_input_event_mode_t.XCB_INPUT_EVENT_MODE_REPLAY_DEVICE;
alias XCB_INPUT_EVENT_MODE_ASYNC_PAIRED_DEVICE = xcb_input_event_mode_t.XCB_INPUT_EVENT_MODE_ASYNC_PAIRED_DEVICE;
alias XCB_INPUT_EVENT_MODE_ASYNC_PAIR = xcb_input_event_mode_t.XCB_INPUT_EVENT_MODE_ASYNC_PAIR;
alias XCB_INPUT_EVENT_MODE_SYNC_PAIR = xcb_input_event_mode_t.XCB_INPUT_EVENT_MODE_SYNC_PAIR;
alias XCB_INPUT_EVENT_MODE_ACCEPT_TOUCH = xcb_input_event_mode_t.XCB_INPUT_EVENT_MODE_ACCEPT_TOUCH;
alias XCB_INPUT_EVENT_MODE_REJECT_TOUCH = xcb_input_event_mode_t.XCB_INPUT_EVENT_MODE_REJECT_TOUCH;

/** Opcode for xcb_input_xi_allow_events. */
enum XCB_INPUT_XI_ALLOW_EVENTS = 53;

/**
 * @brief xcb_input_xi_allow_events_request_t
 **/
struct xcb_input_xi_allow_events_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte event_mode; /**<  */
	ubyte pad0; /**<  */
	uint touchid; /**<  */
	xcb_window_t grab_window; /**<  */
}

enum xcb_input_grab_mode_22_t {
	XCB_INPUT_GRAB_MODE_22_SYNC = 0,
	XCB_INPUT_GRAB_MODE_22_ASYNC = 1,
	XCB_INPUT_GRAB_MODE_22_TOUCH = 2
}

alias XCB_INPUT_GRAB_MODE_22_SYNC = xcb_input_grab_mode_22_t.XCB_INPUT_GRAB_MODE_22_SYNC;
alias XCB_INPUT_GRAB_MODE_22_ASYNC = xcb_input_grab_mode_22_t.XCB_INPUT_GRAB_MODE_22_ASYNC;
alias XCB_INPUT_GRAB_MODE_22_TOUCH = xcb_input_grab_mode_22_t.XCB_INPUT_GRAB_MODE_22_TOUCH;

enum xcb_input_grab_type_t {
	XCB_INPUT_GRAB_TYPE_BUTTON = 0,
	XCB_INPUT_GRAB_TYPE_KEYCODE = 1,
	XCB_INPUT_GRAB_TYPE_ENTER = 2,
	XCB_INPUT_GRAB_TYPE_FOCUS_IN = 3,
	XCB_INPUT_GRAB_TYPE_TOUCH_BEGIN = 4
}

alias XCB_INPUT_GRAB_TYPE_BUTTON = xcb_input_grab_type_t.XCB_INPUT_GRAB_TYPE_BUTTON;
alias XCB_INPUT_GRAB_TYPE_KEYCODE = xcb_input_grab_type_t.XCB_INPUT_GRAB_TYPE_KEYCODE;
alias XCB_INPUT_GRAB_TYPE_ENTER = xcb_input_grab_type_t.XCB_INPUT_GRAB_TYPE_ENTER;
alias XCB_INPUT_GRAB_TYPE_FOCUS_IN = xcb_input_grab_type_t.XCB_INPUT_GRAB_TYPE_FOCUS_IN;
alias XCB_INPUT_GRAB_TYPE_TOUCH_BEGIN = xcb_input_grab_type_t.XCB_INPUT_GRAB_TYPE_TOUCH_BEGIN;

enum xcb_input_modifier_mask_t : uint {
	XCB_INPUT_MODIFIER_MASK_ANY = 2147483648
}

alias XCB_INPUT_MODIFIER_MASK_ANY = xcb_input_modifier_mask_t.XCB_INPUT_MODIFIER_MASK_ANY;

/**
 * @brief xcb_input_grab_modifier_info_t
 **/
struct xcb_input_grab_modifier_info_t {
	uint modifiers; /**<  */
	ubyte status; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_grab_modifier_info_iterator_t
 **/
struct xcb_input_grab_modifier_info_iterator_t {
	xcb_input_grab_modifier_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_input_xi_passive_grab_device_cookie_t
 **/
struct xcb_input_xi_passive_grab_device_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_xi_passive_grab_device. */
enum XCB_INPUT_XI_PASSIVE_GRAB_DEVICE = 54;

/**
 * @brief xcb_input_xi_passive_grab_device_request_t
 **/
struct xcb_input_xi_passive_grab_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_window_t grab_window; /**<  */
	xcb_cursor_t cursor; /**<  */
	uint detail; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ushort num_modifiers; /**<  */
	ushort mask_len; /**<  */
	ubyte grab_type; /**<  */
	ubyte grab_mode; /**<  */
	ubyte paired_device_mode; /**<  */
	ubyte owner_events; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_xi_passive_grab_device_reply_t
 **/
struct xcb_input_xi_passive_grab_device_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_modifiers; /**<  */
	ubyte[22] pad1; /**<  */
}

/** Opcode for xcb_input_xi_passive_ungrab_device. */
enum XCB_INPUT_XI_PASSIVE_UNGRAB_DEVICE = 55;

/**
 * @brief xcb_input_xi_passive_ungrab_device_request_t
 **/
struct xcb_input_xi_passive_ungrab_device_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	uint detail; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ushort num_modifiers; /**<  */
	ubyte grab_type; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_input_xi_list_properties_cookie_t
 **/
struct xcb_input_xi_list_properties_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_xi_list_properties. */
enum XCB_INPUT_XI_LIST_PROPERTIES = 56;

/**
 * @brief xcb_input_xi_list_properties_request_t
 **/
struct xcb_input_xi_list_properties_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_input_xi_list_properties_reply_t
 **/
struct xcb_input_xi_list_properties_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_properties; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_input_xi_change_property_items_t
 **/
struct xcb_input_xi_change_property_items_t {
	ubyte* data8; /**<  */
	ushort* data16; /**<  */
	uint* data32; /**<  */
}

/** Opcode for xcb_input_xi_change_property. */
enum XCB_INPUT_XI_CHANGE_PROPERTY = 57;

/**
 * @brief xcb_input_xi_change_property_request_t
 **/
struct xcb_input_xi_change_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte mode; /**<  */
	ubyte format; /**<  */
	xcb_atom_t property; /**<  */
	xcb_atom_t type; /**<  */
	uint num_items; /**<  */
}

/** Opcode for xcb_input_xi_delete_property. */
enum XCB_INPUT_XI_DELETE_PROPERTY = 58;

/**
 * @brief xcb_input_xi_delete_property_request_t
 **/
struct xcb_input_xi_delete_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_atom_t property; /**<  */
}

/**
 * @brief xcb_input_xi_get_property_cookie_t
 **/
struct xcb_input_xi_get_property_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_xi_get_property. */
enum XCB_INPUT_XI_GET_PROPERTY = 59;

/**
 * @brief xcb_input_xi_get_property_request_t
 **/
struct xcb_input_xi_get_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	ubyte delete_; /**<  */
	ubyte pad0; /**<  */
	xcb_atom_t property; /**<  */
	xcb_atom_t type; /**<  */
	uint offset; /**<  */
	uint len; /**<  */
}

/**
 * @brief xcb_input_xi_get_property_items_t
 **/
struct xcb_input_xi_get_property_items_t {
	ubyte* data8; /**<  */
	ushort* data16; /**<  */
	uint* data32; /**<  */
}

/**
 * @brief xcb_input_xi_get_property_reply_t
 **/
struct xcb_input_xi_get_property_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_atom_t type; /**<  */
	uint bytes_after; /**<  */
	uint num_items; /**<  */
	ubyte format; /**<  */
	ubyte[11] pad1; /**<  */
}

/**
 * @brief xcb_input_xi_get_selected_events_cookie_t
 **/
struct xcb_input_xi_get_selected_events_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_input_xi_get_selected_events. */
enum XCB_INPUT_XI_GET_SELECTED_EVENTS = 60;

/**
 * @brief xcb_input_xi_get_selected_events_request_t
 **/
struct xcb_input_xi_get_selected_events_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_input_xi_get_selected_events_reply_t
 **/
struct xcb_input_xi_get_selected_events_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort num_masks; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_input_barrier_release_pointer_info_t
 **/
struct xcb_input_barrier_release_pointer_info_t {
	xcb_input_device_id_t deviceid; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_xfixes_barrier_t barrier; /**<  */
	uint eventid; /**<  */
}

/**
 * @brief xcb_input_barrier_release_pointer_info_iterator_t
 **/
struct xcb_input_barrier_release_pointer_info_iterator_t {
	xcb_input_barrier_release_pointer_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_input_xi_barrier_release_pointer. */
enum XCB_INPUT_XI_BARRIER_RELEASE_POINTER = 61;

/**
 * @brief xcb_input_xi_barrier_release_pointer_request_t
 **/
struct xcb_input_xi_barrier_release_pointer_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint num_barriers; /**<  */
}

/** Opcode for xcb_input_device_valuator. */
enum XCB_INPUT_DEVICE_VALUATOR = 0;

/**
 * @brief xcb_input_device_valuator_event_t
 **/
struct xcb_input_device_valuator_event_t {
	ubyte response_type; /**<  */
	ubyte device_id; /**<  */
	ushort sequence; /**<  */
	ushort device_state; /**<  */
	ubyte num_valuators; /**<  */
	ubyte first_valuator; /**<  */
	int[6] valuators; /**<  */
}

/** Opcode for xcb_input_device_key_press. */
enum XCB_INPUT_DEVICE_KEY_PRESS = 1;

/**
 * @brief xcb_input_device_key_press_event_t
 **/
struct xcb_input_device_key_press_event_t {
	ubyte response_type; /**<  */
	ubyte detail; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t child; /**<  */
	short root_x; /**<  */
	short root_y; /**<  */
	short event_x; /**<  */
	short event_y; /**<  */
	ushort state; /**<  */
	ubyte same_screen; /**<  */
	ubyte device_id; /**<  */
}

/** Opcode for xcb_input_device_key_release. */
enum XCB_INPUT_DEVICE_KEY_RELEASE = 2;

alias xcb_input_device_key_release_event_t = xcb_input_device_key_press_event_t;

/** Opcode for xcb_input_device_button_press. */
enum XCB_INPUT_DEVICE_BUTTON_PRESS = 3;

alias xcb_input_device_button_press_event_t = xcb_input_device_key_press_event_t;

/** Opcode for xcb_input_device_button_release. */
enum XCB_INPUT_DEVICE_BUTTON_RELEASE = 4;

alias xcb_input_device_button_release_event_t = xcb_input_device_key_press_event_t;

/** Opcode for xcb_input_device_motion_notify. */
enum XCB_INPUT_DEVICE_MOTION_NOTIFY = 5;

alias xcb_input_device_motion_notify_event_t = xcb_input_device_key_press_event_t;

/** Opcode for xcb_input_device_focus_in. */
enum XCB_INPUT_DEVICE_FOCUS_IN = 6;

/**
 * @brief xcb_input_device_focus_in_event_t
 **/
struct xcb_input_device_focus_in_event_t {
	ubyte response_type; /**<  */
	ubyte detail; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_window_t window; /**<  */
	ubyte mode; /**<  */
	ubyte device_id; /**<  */
	ubyte[18] pad0; /**<  */
}

/** Opcode for xcb_input_device_focus_out. */
enum XCB_INPUT_DEVICE_FOCUS_OUT = 7;

alias xcb_input_device_focus_out_event_t = xcb_input_device_focus_in_event_t;

/** Opcode for xcb_input_proximity_in. */
enum XCB_INPUT_PROXIMITY_IN = 8;

alias xcb_input_proximity_in_event_t = xcb_input_device_key_press_event_t;

/** Opcode for xcb_input_proximity_out. */
enum XCB_INPUT_PROXIMITY_OUT = 9;

alias xcb_input_proximity_out_event_t = xcb_input_device_key_press_event_t;

/** Opcode for xcb_input_device_state_notify. */
enum XCB_INPUT_DEVICE_STATE_NOTIFY = 10;

/**
 * @brief xcb_input_device_state_notify_event_t
 **/
struct xcb_input_device_state_notify_event_t {
	ubyte response_type; /**<  */
	ubyte device_id; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte num_keys; /**<  */
	ubyte num_buttons; /**<  */
	ubyte num_valuators; /**<  */
	ubyte classes_reported; /**<  */
	ubyte[4] buttons; /**<  */
	ubyte[4] keys; /**<  */
	uint[3] valuators; /**<  */
}

/** Opcode for xcb_input_device_mapping_notify. */
enum XCB_INPUT_DEVICE_MAPPING_NOTIFY = 11;

/**
 * @brief xcb_input_device_mapping_notify_event_t
 **/
struct xcb_input_device_mapping_notify_event_t {
	ubyte response_type; /**<  */
	ubyte device_id; /**<  */
	ushort sequence; /**<  */
	ubyte request; /**<  */
	xcb_input_key_code_t first_keycode; /**<  */
	ubyte count; /**<  */
	ubyte pad0; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_input_change_device_notify. */
enum XCB_INPUT_CHANGE_DEVICE_NOTIFY = 12;

/**
 * @brief xcb_input_change_device_notify_event_t
 **/
struct xcb_input_change_device_notify_event_t {
	ubyte response_type; /**<  */
	ubyte device_id; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte request; /**<  */
	ubyte[23] pad0; /**<  */
}

/** Opcode for xcb_input_device_key_state_notify. */
enum XCB_INPUT_DEVICE_KEY_STATE_NOTIFY = 13;

/**
 * @brief xcb_input_device_key_state_notify_event_t
 **/
struct xcb_input_device_key_state_notify_event_t {
	ubyte response_type; /**<  */
	ubyte device_id; /**<  */
	ushort sequence; /**<  */
	ubyte[28] keys; /**<  */
}

/** Opcode for xcb_input_device_button_state_notify. */
enum XCB_INPUT_DEVICE_BUTTON_STATE_NOTIFY = 14;

/**
 * @brief xcb_input_device_button_state_notify_event_t
 **/
struct xcb_input_device_button_state_notify_event_t {
	ubyte response_type; /**<  */
	ubyte device_id; /**<  */
	ushort sequence; /**<  */
	ubyte[28] buttons; /**<  */
}

enum xcb_input_device_change_t {
	XCB_INPUT_DEVICE_CHANGE_ADDED = 0,
	XCB_INPUT_DEVICE_CHANGE_REMOVED = 1,
	XCB_INPUT_DEVICE_CHANGE_ENABLED = 2,
	XCB_INPUT_DEVICE_CHANGE_DISABLED = 3,
	XCB_INPUT_DEVICE_CHANGE_UNRECOVERABLE = 4,
	XCB_INPUT_DEVICE_CHANGE_CONTROL_CHANGED = 5
}

alias XCB_INPUT_DEVICE_CHANGE_ADDED = xcb_input_device_change_t.XCB_INPUT_DEVICE_CHANGE_ADDED;
alias XCB_INPUT_DEVICE_CHANGE_REMOVED = xcb_input_device_change_t.XCB_INPUT_DEVICE_CHANGE_REMOVED;
alias XCB_INPUT_DEVICE_CHANGE_ENABLED = xcb_input_device_change_t.XCB_INPUT_DEVICE_CHANGE_ENABLED;
alias XCB_INPUT_DEVICE_CHANGE_DISABLED = xcb_input_device_change_t.XCB_INPUT_DEVICE_CHANGE_DISABLED;
alias XCB_INPUT_DEVICE_CHANGE_UNRECOVERABLE = xcb_input_device_change_t.XCB_INPUT_DEVICE_CHANGE_UNRECOVERABLE;
alias XCB_INPUT_DEVICE_CHANGE_CONTROL_CHANGED = xcb_input_device_change_t.XCB_INPUT_DEVICE_CHANGE_CONTROL_CHANGED;

/** Opcode for xcb_input_device_presence_notify. */
enum XCB_INPUT_DEVICE_PRESENCE_NOTIFY = 15;

/**
 * @brief xcb_input_device_presence_notify_event_t
 **/
struct xcb_input_device_presence_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte devchange; /**<  */
	ubyte device_id; /**<  */
	ushort control; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_input_device_property_notify. */
enum XCB_INPUT_DEVICE_PROPERTY_NOTIFY = 16;

/**
 * @brief xcb_input_device_property_notify_event_t
 **/
struct xcb_input_device_property_notify_event_t {
	ubyte response_type; /**<  */
	ubyte state; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_atom_t property; /**<  */
	ubyte[19] pad0; /**<  */
	ubyte device_id; /**<  */
}

enum xcb_input_change_reason_t {
	XCB_INPUT_CHANGE_REASON_SLAVE_SWITCH = 1,
	XCB_INPUT_CHANGE_REASON_DEVICE_CHANGE = 2
}

alias XCB_INPUT_CHANGE_REASON_SLAVE_SWITCH = xcb_input_change_reason_t.XCB_INPUT_CHANGE_REASON_SLAVE_SWITCH;
alias XCB_INPUT_CHANGE_REASON_DEVICE_CHANGE = xcb_input_change_reason_t.XCB_INPUT_CHANGE_REASON_DEVICE_CHANGE;

/** Opcode for xcb_input_device_changed. */
enum XCB_INPUT_DEVICE_CHANGED = 1;

/**
 * @brief xcb_input_device_changed_event_t
 **/
struct xcb_input_device_changed_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	ushort num_classes; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ubyte reason; /**<  */
	ubyte[11] pad0; /**<  */
	uint full_sequence; /**<  */
}

enum xcb_input_key_event_flags_t {
	XCB_INPUT_KEY_EVENT_FLAGS_KEY_REPEAT = 65536
}

alias XCB_INPUT_KEY_EVENT_FLAGS_KEY_REPEAT = xcb_input_key_event_flags_t.XCB_INPUT_KEY_EVENT_FLAGS_KEY_REPEAT;

/** Opcode for xcb_input_key_press. */
enum XCB_INPUT_KEY_PRESS = 2;

/**
 * @brief xcb_input_key_press_event_t
 **/
struct xcb_input_key_press_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	uint detail; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t child; /**<  */
	uint full_sequence; /**<  */
	xcb_input_fp1616_t root_x; /**<  */
	xcb_input_fp1616_t root_y; /**<  */
	xcb_input_fp1616_t event_x; /**<  */
	xcb_input_fp1616_t event_y; /**<  */
	ushort buttons_len; /**<  */
	ushort valuators_len; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
	xcb_input_modifier_info_t mods; /**<  */
	xcb_input_group_info_t group; /**<  */
}

/** Opcode for xcb_input_key_release. */
enum XCB_INPUT_KEY_RELEASE = 3;

alias xcb_input_key_release_event_t = xcb_input_key_press_event_t;

enum xcb_input_pointer_event_flags_t {
	XCB_INPUT_POINTER_EVENT_FLAGS_POINTER_EMULATED = 65536
}

alias XCB_INPUT_POINTER_EVENT_FLAGS_POINTER_EMULATED = xcb_input_pointer_event_flags_t.XCB_INPUT_POINTER_EVENT_FLAGS_POINTER_EMULATED;

/** Opcode for xcb_input_button_press. */
enum XCB_INPUT_BUTTON_PRESS = 4;

/**
 * @brief xcb_input_button_press_event_t
 **/
struct xcb_input_button_press_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	uint detail; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t child; /**<  */
	uint full_sequence; /**<  */
	xcb_input_fp1616_t root_x; /**<  */
	xcb_input_fp1616_t root_y; /**<  */
	xcb_input_fp1616_t event_x; /**<  */
	xcb_input_fp1616_t event_y; /**<  */
	ushort buttons_len; /**<  */
	ushort valuators_len; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
	xcb_input_modifier_info_t mods; /**<  */
	xcb_input_group_info_t group; /**<  */
}

/** Opcode for xcb_input_button_release. */
enum XCB_INPUT_BUTTON_RELEASE = 5;

alias xcb_input_button_release_event_t = xcb_input_button_press_event_t;

/** Opcode for xcb_input_motion. */
enum XCB_INPUT_MOTION = 6;

alias xcb_input_motion_event_t = xcb_input_button_press_event_t;

enum xcb_input_notify_mode_t {
	XCB_INPUT_NOTIFY_MODE_NORMAL = 0,
	XCB_INPUT_NOTIFY_MODE_GRAB = 1,
	XCB_INPUT_NOTIFY_MODE_UNGRAB = 2,
	XCB_INPUT_NOTIFY_MODE_WHILE_GRABBED = 3,
	XCB_INPUT_NOTIFY_MODE_PASSIVE_GRAB = 4,
	XCB_INPUT_NOTIFY_MODE_PASSIVE_UNGRAB = 5
}

alias XCB_INPUT_NOTIFY_MODE_NORMAL = xcb_input_notify_mode_t.XCB_INPUT_NOTIFY_MODE_NORMAL;
alias XCB_INPUT_NOTIFY_MODE_GRAB = xcb_input_notify_mode_t.XCB_INPUT_NOTIFY_MODE_GRAB;
alias XCB_INPUT_NOTIFY_MODE_UNGRAB = xcb_input_notify_mode_t.XCB_INPUT_NOTIFY_MODE_UNGRAB;
alias XCB_INPUT_NOTIFY_MODE_WHILE_GRABBED = xcb_input_notify_mode_t.XCB_INPUT_NOTIFY_MODE_WHILE_GRABBED;
alias XCB_INPUT_NOTIFY_MODE_PASSIVE_GRAB = xcb_input_notify_mode_t.XCB_INPUT_NOTIFY_MODE_PASSIVE_GRAB;
alias XCB_INPUT_NOTIFY_MODE_PASSIVE_UNGRAB = xcb_input_notify_mode_t.XCB_INPUT_NOTIFY_MODE_PASSIVE_UNGRAB;

enum xcb_input_notify_detail_t {
	XCB_INPUT_NOTIFY_DETAIL_ANCESTOR = 0,
	XCB_INPUT_NOTIFY_DETAIL_VIRTUAL = 1,
	XCB_INPUT_NOTIFY_DETAIL_INFERIOR = 2,
	XCB_INPUT_NOTIFY_DETAIL_NONLINEAR = 3,
	XCB_INPUT_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = 4,
	XCB_INPUT_NOTIFY_DETAIL_POINTER = 5,
	XCB_INPUT_NOTIFY_DETAIL_POINTER_ROOT = 6,
	XCB_INPUT_NOTIFY_DETAIL_NONE = 7
}

alias XCB_INPUT_NOTIFY_DETAIL_ANCESTOR = xcb_input_notify_detail_t.XCB_INPUT_NOTIFY_DETAIL_ANCESTOR;
alias XCB_INPUT_NOTIFY_DETAIL_VIRTUAL = xcb_input_notify_detail_t.XCB_INPUT_NOTIFY_DETAIL_VIRTUAL;
alias XCB_INPUT_NOTIFY_DETAIL_INFERIOR = xcb_input_notify_detail_t.XCB_INPUT_NOTIFY_DETAIL_INFERIOR;
alias XCB_INPUT_NOTIFY_DETAIL_NONLINEAR = xcb_input_notify_detail_t.XCB_INPUT_NOTIFY_DETAIL_NONLINEAR;
alias XCB_INPUT_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = xcb_input_notify_detail_t.XCB_INPUT_NOTIFY_DETAIL_NONLINEAR_VIRTUAL;
alias XCB_INPUT_NOTIFY_DETAIL_POINTER = xcb_input_notify_detail_t.XCB_INPUT_NOTIFY_DETAIL_POINTER;
alias XCB_INPUT_NOTIFY_DETAIL_POINTER_ROOT = xcb_input_notify_detail_t.XCB_INPUT_NOTIFY_DETAIL_POINTER_ROOT;
alias XCB_INPUT_NOTIFY_DETAIL_NONE = xcb_input_notify_detail_t.XCB_INPUT_NOTIFY_DETAIL_NONE;

/** Opcode for xcb_input_enter. */
enum XCB_INPUT_ENTER = 7;

/**
 * @brief xcb_input_enter_event_t
 **/
struct xcb_input_enter_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ubyte mode; /**<  */
	ubyte detail; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t child; /**<  */
	uint full_sequence; /**<  */
	xcb_input_fp1616_t root_x; /**<  */
	xcb_input_fp1616_t root_y; /**<  */
	xcb_input_fp1616_t event_x; /**<  */
	xcb_input_fp1616_t event_y; /**<  */
	ubyte same_screen; /**<  */
	ubyte focus; /**<  */
	ushort buttons_len; /**<  */
	xcb_input_modifier_info_t mods; /**<  */
	xcb_input_group_info_t group; /**<  */
}

/** Opcode for xcb_input_leave. */
enum XCB_INPUT_LEAVE = 8;

alias xcb_input_leave_event_t = xcb_input_enter_event_t;

/** Opcode for xcb_input_focus_in. */
enum XCB_INPUT_FOCUS_IN = 9;

alias xcb_input_focus_in_event_t = xcb_input_enter_event_t;

/** Opcode for xcb_input_focus_out. */
enum XCB_INPUT_FOCUS_OUT = 10;

alias xcb_input_focus_out_event_t = xcb_input_enter_event_t;

enum xcb_input_hierarchy_mask_t {
	XCB_INPUT_HIERARCHY_MASK_MASTER_ADDED = 1,
	XCB_INPUT_HIERARCHY_MASK_MASTER_REMOVED = 2,
	XCB_INPUT_HIERARCHY_MASK_SLAVE_ADDED = 4,
	XCB_INPUT_HIERARCHY_MASK_SLAVE_REMOVED = 8,
	XCB_INPUT_HIERARCHY_MASK_SLAVE_ATTACHED = 16,
	XCB_INPUT_HIERARCHY_MASK_SLAVE_DETACHED = 32,
	XCB_INPUT_HIERARCHY_MASK_DEVICE_ENABLED = 64,
	XCB_INPUT_HIERARCHY_MASK_DEVICE_DISABLED = 128
}

alias XCB_INPUT_HIERARCHY_MASK_MASTER_ADDED = xcb_input_hierarchy_mask_t.XCB_INPUT_HIERARCHY_MASK_MASTER_ADDED;
alias XCB_INPUT_HIERARCHY_MASK_MASTER_REMOVED = xcb_input_hierarchy_mask_t.XCB_INPUT_HIERARCHY_MASK_MASTER_REMOVED;
alias XCB_INPUT_HIERARCHY_MASK_SLAVE_ADDED = xcb_input_hierarchy_mask_t.XCB_INPUT_HIERARCHY_MASK_SLAVE_ADDED;
alias XCB_INPUT_HIERARCHY_MASK_SLAVE_REMOVED = xcb_input_hierarchy_mask_t.XCB_INPUT_HIERARCHY_MASK_SLAVE_REMOVED;
alias XCB_INPUT_HIERARCHY_MASK_SLAVE_ATTACHED = xcb_input_hierarchy_mask_t.XCB_INPUT_HIERARCHY_MASK_SLAVE_ATTACHED;
alias XCB_INPUT_HIERARCHY_MASK_SLAVE_DETACHED = xcb_input_hierarchy_mask_t.XCB_INPUT_HIERARCHY_MASK_SLAVE_DETACHED;
alias XCB_INPUT_HIERARCHY_MASK_DEVICE_ENABLED = xcb_input_hierarchy_mask_t.XCB_INPUT_HIERARCHY_MASK_DEVICE_ENABLED;
alias XCB_INPUT_HIERARCHY_MASK_DEVICE_DISABLED = xcb_input_hierarchy_mask_t.XCB_INPUT_HIERARCHY_MASK_DEVICE_DISABLED;

/**
 * @brief xcb_input_hierarchy_info_t
 **/
struct xcb_input_hierarchy_info_t {
	xcb_input_device_id_t deviceid; /**<  */
	xcb_input_device_id_t attachment; /**<  */
	ubyte type; /**<  */
	ubyte enabled; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
}

/**
 * @brief xcb_input_hierarchy_info_iterator_t
 **/
struct xcb_input_hierarchy_info_iterator_t {
	xcb_input_hierarchy_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_input_hierarchy. */
enum XCB_INPUT_HIERARCHY = 11;

/**
 * @brief xcb_input_hierarchy_event_t
 **/
struct xcb_input_hierarchy_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	uint flags; /**<  */
	ushort num_infos; /**<  */
	ubyte[10] pad0; /**<  */
	uint full_sequence; /**<  */
}

enum xcb_input_property_flag_t {
	XCB_INPUT_PROPERTY_FLAG_DELETED = 0,
	XCB_INPUT_PROPERTY_FLAG_CREATED = 1,
	XCB_INPUT_PROPERTY_FLAG_MODIFIED = 2
}

alias XCB_INPUT_PROPERTY_FLAG_DELETED = xcb_input_property_flag_t.XCB_INPUT_PROPERTY_FLAG_DELETED;
alias XCB_INPUT_PROPERTY_FLAG_CREATED = xcb_input_property_flag_t.XCB_INPUT_PROPERTY_FLAG_CREATED;
alias XCB_INPUT_PROPERTY_FLAG_MODIFIED = xcb_input_property_flag_t.XCB_INPUT_PROPERTY_FLAG_MODIFIED;

/** Opcode for xcb_input_property. */
enum XCB_INPUT_PROPERTY = 12;

/**
 * @brief xcb_input_property_event_t
 **/
struct xcb_input_property_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_atom_t property; /**<  */
	ubyte what; /**<  */
	ubyte[11] pad0; /**<  */
	uint full_sequence; /**<  */
}

/** Opcode for xcb_input_raw_key_press. */
enum XCB_INPUT_RAW_KEY_PRESS = 13;

/**
 * @brief xcb_input_raw_key_press_event_t
 **/
struct xcb_input_raw_key_press_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	uint detail; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ushort valuators_len; /**<  */
	uint flags; /**<  */
	ubyte[4] pad0; /**<  */
	uint full_sequence; /**<  */
}

/** Opcode for xcb_input_raw_key_release. */
enum XCB_INPUT_RAW_KEY_RELEASE = 14;

alias xcb_input_raw_key_release_event_t = xcb_input_raw_key_press_event_t;

/** Opcode for xcb_input_raw_button_press. */
enum XCB_INPUT_RAW_BUTTON_PRESS = 15;

/**
 * @brief xcb_input_raw_button_press_event_t
 **/
struct xcb_input_raw_button_press_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	uint detail; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ushort valuators_len; /**<  */
	uint flags; /**<  */
	ubyte[4] pad0; /**<  */
	uint full_sequence; /**<  */
}

/** Opcode for xcb_input_raw_button_release. */
enum XCB_INPUT_RAW_BUTTON_RELEASE = 16;

alias xcb_input_raw_button_release_event_t = xcb_input_raw_button_press_event_t;

/** Opcode for xcb_input_raw_motion. */
enum XCB_INPUT_RAW_MOTION = 17;

alias xcb_input_raw_motion_event_t = xcb_input_raw_button_press_event_t;

enum xcb_input_touch_event_flags_t {
	XCB_INPUT_TOUCH_EVENT_FLAGS_TOUCH_PENDING_END = 65536,
	XCB_INPUT_TOUCH_EVENT_FLAGS_TOUCH_EMULATING_POINTER = 131072
}

alias XCB_INPUT_TOUCH_EVENT_FLAGS_TOUCH_PENDING_END = xcb_input_touch_event_flags_t.XCB_INPUT_TOUCH_EVENT_FLAGS_TOUCH_PENDING_END;
alias XCB_INPUT_TOUCH_EVENT_FLAGS_TOUCH_EMULATING_POINTER = xcb_input_touch_event_flags_t.XCB_INPUT_TOUCH_EVENT_FLAGS_TOUCH_EMULATING_POINTER;

/** Opcode for xcb_input_touch_begin. */
enum XCB_INPUT_TOUCH_BEGIN = 18;

/**
 * @brief xcb_input_touch_begin_event_t
 **/
struct xcb_input_touch_begin_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	uint detail; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t child; /**<  */
	uint full_sequence; /**<  */
	xcb_input_fp1616_t root_x; /**<  */
	xcb_input_fp1616_t root_y; /**<  */
	xcb_input_fp1616_t event_x; /**<  */
	xcb_input_fp1616_t event_y; /**<  */
	ushort buttons_len; /**<  */
	ushort valuators_len; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
	xcb_input_modifier_info_t mods; /**<  */
	xcb_input_group_info_t group; /**<  */
}

/** Opcode for xcb_input_touch_update. */
enum XCB_INPUT_TOUCH_UPDATE = 19;

alias xcb_input_touch_update_event_t = xcb_input_touch_begin_event_t;

/** Opcode for xcb_input_touch_end. */
enum XCB_INPUT_TOUCH_END = 20;

alias xcb_input_touch_end_event_t = xcb_input_touch_begin_event_t;

enum xcb_input_touch_ownership_flags_t {
	XCB_INPUT_TOUCH_OWNERSHIP_FLAGS_NONE = 0
}

alias XCB_INPUT_TOUCH_OWNERSHIP_FLAGS_NONE = xcb_input_touch_ownership_flags_t.XCB_INPUT_TOUCH_OWNERSHIP_FLAGS_NONE;

/** Opcode for xcb_input_touch_ownership. */
enum XCB_INPUT_TOUCH_OWNERSHIP = 21;

/**
 * @brief xcb_input_touch_ownership_event_t
 **/
struct xcb_input_touch_ownership_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	uint touchid; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t child; /**<  */
	uint full_sequence; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ubyte[2] pad0; /**<  */
	uint flags; /**<  */
	ubyte[8] pad1; /**<  */
}

/** Opcode for xcb_input_raw_touch_begin. */
enum XCB_INPUT_RAW_TOUCH_BEGIN = 22;

/**
 * @brief xcb_input_raw_touch_begin_event_t
 **/
struct xcb_input_raw_touch_begin_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	uint detail; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ushort valuators_len; /**<  */
	uint flags; /**<  */
	ubyte[4] pad0; /**<  */
	uint full_sequence; /**<  */
}

/** Opcode for xcb_input_raw_touch_update. */
enum XCB_INPUT_RAW_TOUCH_UPDATE = 23;

alias xcb_input_raw_touch_update_event_t = xcb_input_raw_touch_begin_event_t;

/** Opcode for xcb_input_raw_touch_end. */
enum XCB_INPUT_RAW_TOUCH_END = 24;

alias xcb_input_raw_touch_end_event_t = xcb_input_raw_touch_begin_event_t;

/** Opcode for xcb_input_barrier_hit. */
enum XCB_INPUT_BARRIER_HIT = 25;

/**
 * @brief xcb_input_barrier_hit_event_t
 **/
struct xcb_input_barrier_hit_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	xcb_input_device_id_t deviceid; /**<  */
	xcb_timestamp_t time; /**<  */
	uint eventid; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t event; /**<  */
	xcb_xfixes_barrier_t barrier; /**<  */
	uint full_sequence; /**<  */
	uint dtime; /**<  */
	uint flags; /**<  */
	xcb_input_device_id_t sourceid; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_input_fp1616_t root_x; /**<  */
	xcb_input_fp1616_t root_y; /**<  */
	xcb_input_fp3232_t dx; /**<  */
	xcb_input_fp3232_t dy; /**<  */
}

/** Opcode for xcb_input_barrier_leave. */
enum XCB_INPUT_BARRIER_LEAVE = 26;

alias xcb_input_barrier_leave_event_t = xcb_input_barrier_hit_event_t;

/** Opcode for xcb_input_device. */
enum XCB_INPUT_DEVICE = 0;

/**
 * @brief xcb_input_device_error_t
 **/
struct xcb_input_device_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_input_event. */
enum XCB_INPUT_EVENT = 1;

/**
 * @brief xcb_input_event_error_t
 **/
struct xcb_input_event_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_input_mode. */
enum XCB_INPUT_MODE = 2;

/**
 * @brief xcb_input_mode_error_t
 **/
struct xcb_input_mode_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_input_device_busy. */
enum XCB_INPUT_DEVICE_BUSY = 3;

/**
 * @brief xcb_input_device_busy_error_t
 **/
struct xcb_input_device_busy_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_input_class. */
enum XCB_INPUT_CLASS = 4;

/**
 * @brief xcb_input_class_error_t
 **/
struct xcb_input_class_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_event_class_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_event_class_t)
 */
void xcb_input_event_class_next(xcb_input_event_class_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_event_class_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_event_class_end(xcb_input_event_class_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_key_code_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_key_code_t)
 */
void xcb_input_key_code_next(xcb_input_key_code_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_key_code_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_key_code_end(xcb_input_key_code_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_id_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_id_t)
 */
void xcb_input_device_id_next(xcb_input_device_id_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_id_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_id_end(xcb_input_device_id_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_fp1616_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_fp1616_t)
 */
void xcb_input_fp1616_next(xcb_input_fp1616_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_fp1616_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_fp1616_end(xcb_input_fp1616_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_fp3232_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_fp3232_t)
 */
void xcb_input_fp3232_next(xcb_input_fp3232_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_fp3232_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_fp3232_end(xcb_input_fp3232_iterator_t i /**< */ );

int xcb_input_get_extension_version_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_extension_version_cookie_t xcb_input_get_extension_version(xcb_connection_t* c /**< */ , ushort name_len /**< */ ,
	const char* name /**< */ );

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
xcb_input_get_extension_version_cookie_t xcb_input_get_extension_version_unchecked(xcb_connection_t* c /**< */ ,
	ushort name_len /**< */ , const char* name /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_extension_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_extension_version_reply_t* xcb_input_get_extension_version_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_extension_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_info_t)
 */
void xcb_input_device_info_next(xcb_input_device_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_info_end(xcb_input_device_info_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_key_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_key_info_t)
 */
void xcb_input_key_info_next(xcb_input_key_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_key_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_key_info_end(xcb_input_key_info_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_button_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_button_info_t)
 */
void xcb_input_button_info_next(xcb_input_button_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_button_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_button_info_end(xcb_input_button_info_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_axis_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_axis_info_t)
 */
void xcb_input_axis_info_next(xcb_input_axis_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_axis_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_axis_info_end(xcb_input_axis_info_iterator_t i /**< */ );

int xcb_input_valuator_info_sizeof(const void* _buffer /**< */ );

xcb_input_axis_info_t* xcb_input_valuator_info_axes(const xcb_input_valuator_info_t* R /**< */ );

int xcb_input_valuator_info_axes_length(const xcb_input_valuator_info_t* R /**< */ );

xcb_input_axis_info_iterator_t xcb_input_valuator_info_axes_iterator(const xcb_input_valuator_info_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_valuator_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_valuator_info_t)
 */
void xcb_input_valuator_info_next(xcb_input_valuator_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_valuator_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_valuator_info_end(xcb_input_valuator_info_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_input_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_input_info_t)
 */
void xcb_input_input_info_next(xcb_input_input_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_input_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_input_info_end(xcb_input_input_info_iterator_t i /**< */ );

int xcb_input_device_name_sizeof(const void* _buffer /**< */ );

char* xcb_input_device_name_string(const xcb_input_device_name_t* R /**< */ );

int xcb_input_device_name_string_length(const xcb_input_device_name_t* R /**< */ );

xcb_generic_iterator_t xcb_input_device_name_string_end(const xcb_input_device_name_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_name_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_name_t)
 */
void xcb_input_device_name_next(xcb_input_device_name_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_name_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_name_end(xcb_input_device_name_iterator_t i /**< */ );

int xcb_input_list_input_devices_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_list_input_devices_cookie_t xcb_input_list_input_devices(xcb_connection_t* c /**< */ );

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
xcb_input_list_input_devices_cookie_t xcb_input_list_input_devices_unchecked(xcb_connection_t* c /**< */ );

xcb_input_device_info_t* xcb_input_list_input_devices_devices(const xcb_input_list_input_devices_reply_t* R /**< */ );

int xcb_input_list_input_devices_devices_length(const xcb_input_list_input_devices_reply_t* R /**< */ );

xcb_input_device_info_iterator_t xcb_input_list_input_devices_devices_iterator(const xcb_input_list_input_devices_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_list_input_devices_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_list_input_devices_reply_t* xcb_input_list_input_devices_reply(xcb_connection_t* c /**< */ ,
	xcb_input_list_input_devices_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_input_class_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_input_class_info_t)
 */
void xcb_input_input_class_info_next(xcb_input_input_class_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_input_class_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_input_class_info_end(xcb_input_input_class_info_iterator_t i /**< */ );

int xcb_input_open_device_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_open_device_cookie_t xcb_input_open_device(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

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
xcb_input_open_device_cookie_t xcb_input_open_device_unchecked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

xcb_input_input_class_info_t* xcb_input_open_device_class_info(const xcb_input_open_device_reply_t* R /**< */ );

int xcb_input_open_device_class_info_length(const xcb_input_open_device_reply_t* R /**< */ );

xcb_input_input_class_info_iterator_t xcb_input_open_device_class_info_iterator(const xcb_input_open_device_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_open_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_open_device_reply_t* xcb_input_open_device_reply(xcb_connection_t* c /**< */ ,
	xcb_input_open_device_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_input_close_device_checked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_close_device(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_set_device_mode_cookie_t xcb_input_set_device_mode(xcb_connection_t* c /**< */ , ubyte device_id /**< */ , ubyte mode /**< */ );

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
xcb_input_set_device_mode_cookie_t xcb_input_set_device_mode_unchecked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ ,
	ubyte mode /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_set_device_mode_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_set_device_mode_reply_t* xcb_input_set_device_mode_reply(xcb_connection_t* c /**< */ ,
	xcb_input_set_device_mode_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_select_extension_event_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_select_extension_event_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort num_classes /**< */ ,
	const xcb_input_event_class_t* classes /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_select_extension_event(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort num_classes /**< */ ,
	const xcb_input_event_class_t* classes /**< */ );

int xcb_input_get_selected_extension_events_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_selected_extension_events_cookie_t xcb_input_get_selected_extension_events(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_input_get_selected_extension_events_cookie_t xcb_input_get_selected_extension_events_unchecked(xcb_connection_t* c /**< */ ,
	xcb_window_t window /**< */ );

xcb_input_event_class_t* xcb_input_get_selected_extension_events_this_classes(const xcb_input_get_selected_extension_events_reply_t* R /**< */ );

int xcb_input_get_selected_extension_events_this_classes_length(const xcb_input_get_selected_extension_events_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_input_get_selected_extension_events_this_classes_end(const xcb_input_get_selected_extension_events_reply_t* R /**< */ );

xcb_input_event_class_t* xcb_input_get_selected_extension_events_all_classes(const xcb_input_get_selected_extension_events_reply_t* R /**< */ );

int xcb_input_get_selected_extension_events_all_classes_length(const xcb_input_get_selected_extension_events_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_input_get_selected_extension_events_all_classes_end(const xcb_input_get_selected_extension_events_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_selected_extension_events_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_selected_extension_events_reply_t* xcb_input_get_selected_extension_events_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_selected_extension_events_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_change_device_dont_propagate_list_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_change_device_dont_propagate_list_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	ushort num_classes /**< */ , ubyte mode /**< */ , const xcb_input_event_class_t* classes /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_change_device_dont_propagate_list(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort num_classes /**< */ ,
	ubyte mode /**< */ , const xcb_input_event_class_t* classes /**< */ );

int xcb_input_get_device_dont_propagate_list_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_device_dont_propagate_list_cookie_t xcb_input_get_device_dont_propagate_list(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_input_get_device_dont_propagate_list_cookie_t xcb_input_get_device_dont_propagate_list_unchecked(xcb_connection_t* c /**< */ ,
	xcb_window_t window /**< */ );

xcb_input_event_class_t* xcb_input_get_device_dont_propagate_list_classes(const xcb_input_get_device_dont_propagate_list_reply_t* R /**< */ );

int xcb_input_get_device_dont_propagate_list_classes_length(const xcb_input_get_device_dont_propagate_list_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_input_get_device_dont_propagate_list_classes_end(const xcb_input_get_device_dont_propagate_list_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_dont_propagate_list_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_device_dont_propagate_list_reply_t* xcb_input_get_device_dont_propagate_list_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_device_dont_propagate_list_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_time_coord_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_time_coord_t)
 */
void xcb_input_device_time_coord_next(xcb_input_device_time_coord_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_time_coord_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_time_coord_end(xcb_input_device_time_coord_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_device_motion_events_cookie_t xcb_input_get_device_motion_events(xcb_connection_t* c /**< */ , xcb_timestamp_t start /**< */ ,
	xcb_timestamp_t stop /**< */ , ubyte device_id /**< */ );

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
xcb_input_get_device_motion_events_cookie_t xcb_input_get_device_motion_events_unchecked(xcb_connection_t* c /**< */ ,
	xcb_timestamp_t start /**< */ , xcb_timestamp_t stop /**< */ , ubyte device_id /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_motion_events_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_device_motion_events_reply_t* xcb_input_get_device_motion_events_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_device_motion_events_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_change_keyboard_device_cookie_t xcb_input_change_keyboard_device(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

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
xcb_input_change_keyboard_device_cookie_t xcb_input_change_keyboard_device_unchecked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_change_keyboard_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_change_keyboard_device_reply_t* xcb_input_change_keyboard_device_reply(xcb_connection_t* c /**< */ ,
	xcb_input_change_keyboard_device_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_change_pointer_device_cookie_t xcb_input_change_pointer_device(xcb_connection_t* c /**< */ , ubyte x_axis /**< */ ,
	ubyte y_axis /**< */ , ubyte device_id /**< */ );

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
xcb_input_change_pointer_device_cookie_t xcb_input_change_pointer_device_unchecked(xcb_connection_t* c /**< */ , ubyte x_axis /**< */ ,
	ubyte y_axis /**< */ , ubyte device_id /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_change_pointer_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_change_pointer_device_reply_t* xcb_input_change_pointer_device_reply(xcb_connection_t* c /**< */ ,
	xcb_input_change_pointer_device_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_grab_device_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_grab_device_cookie_t xcb_input_grab_device(xcb_connection_t* c /**< */ , xcb_window_t grab_window /**< */ , xcb_timestamp_t time /**< */ ,
	ushort num_classes /**< */ , ubyte this_device_mode /**< */ , ubyte other_device_mode /**< */ , ubyte owner_events /**< */ , ubyte device_id /**< */ ,
	const xcb_input_event_class_t* classes /**< */ );

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
xcb_input_grab_device_cookie_t xcb_input_grab_device_unchecked(xcb_connection_t* c /**< */ , xcb_window_t grab_window /**< */ ,
	xcb_timestamp_t time /**< */ , ushort num_classes /**< */ , ubyte this_device_mode /**< */ , ubyte other_device_mode /**< */ , ubyte owner_events /**< */ ,
	ubyte device_id /**< */ , const xcb_input_event_class_t* classes /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_grab_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_grab_device_reply_t* xcb_input_grab_device_reply(xcb_connection_t* c /**< */ ,
	xcb_input_grab_device_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_input_ungrab_device_checked(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ , ubyte device_id /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_ungrab_device(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ , ubyte device_id /**< */ );

int xcb_input_grab_device_key_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_grab_device_key_checked(xcb_connection_t* c /**< */ , xcb_window_t grab_window /**< */ , ushort num_classes /**< */ ,
	ushort modifiers /**< */ , ubyte modifier_device /**< */ , ubyte grabbed_device /**< */ , ubyte key /**< */ , ubyte this_device_mode /**< */ ,
	ubyte other_device_mode /**< */ , ubyte owner_events /**< */ , const xcb_input_event_class_t* classes /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_grab_device_key(xcb_connection_t* c /**< */ , xcb_window_t grab_window /**< */ , ushort num_classes /**< */ ,
	ushort modifiers /**< */ , ubyte modifier_device /**< */ , ubyte grabbed_device /**< */ , ubyte key /**< */ , ubyte this_device_mode /**< */ ,
	ubyte other_device_mode /**< */ , ubyte owner_events /**< */ , const xcb_input_event_class_t* classes /**< */ );

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
xcb_void_cookie_t xcb_input_ungrab_device_key_checked(xcb_connection_t* c /**< */ , xcb_window_t grabWindow /**< */ , ushort modifiers /**< */ ,
	ubyte modifier_device /**< */ , ubyte key /**< */ , ubyte grabbed_device /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_ungrab_device_key(xcb_connection_t* c /**< */ , xcb_window_t grabWindow /**< */ , ushort modifiers /**< */ ,
	ubyte modifier_device /**< */ , ubyte key /**< */ , ubyte grabbed_device /**< */ );

int xcb_input_grab_device_button_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_grab_device_button_checked(xcb_connection_t* c /**< */ , xcb_window_t grab_window /**< */ , ubyte grabbed_device /**< */ ,
	ubyte modifier_device /**< */ , ushort num_classes /**< */ , ushort modifiers /**< */ , ubyte this_device_mode /**< */ , ubyte other_device_mode /**< */ ,
	ubyte button /**< */ , ubyte owner_events /**< */ , const xcb_input_event_class_t* classes /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_grab_device_button(xcb_connection_t* c /**< */ , xcb_window_t grab_window /**< */ , ubyte grabbed_device /**< */ ,
	ubyte modifier_device /**< */ , ushort num_classes /**< */ , ushort modifiers /**< */ , ubyte this_device_mode /**< */ , ubyte other_device_mode /**< */ ,
	ubyte button /**< */ , ubyte owner_events /**< */ , const xcb_input_event_class_t* classes /**< */ );

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
xcb_void_cookie_t xcb_input_ungrab_device_button_checked(xcb_connection_t* c /**< */ , xcb_window_t grab_window /**< */ , ushort modifiers /**< */ ,
	ubyte modifier_device /**< */ , ubyte button /**< */ , ubyte grabbed_device /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_ungrab_device_button(xcb_connection_t* c /**< */ , xcb_window_t grab_window /**< */ , ushort modifiers /**< */ ,
	ubyte modifier_device /**< */ , ubyte button /**< */ , ubyte grabbed_device /**< */ );

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
xcb_void_cookie_t xcb_input_allow_device_events_checked(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ ,
	ubyte mode /**< */ , ubyte device_id /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_allow_device_events(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ , ubyte mode /**< */ ,
	ubyte device_id /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_device_focus_cookie_t xcb_input_get_device_focus(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

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
xcb_input_get_device_focus_cookie_t xcb_input_get_device_focus_unchecked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_focus_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_device_focus_reply_t* xcb_input_get_device_focus_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_device_focus_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_input_set_device_focus_checked(xcb_connection_t* c /**< */ , xcb_window_t focus /**< */ ,
	xcb_timestamp_t time /**< */ , ubyte revert_to /**< */ , ubyte device_id /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_set_device_focus(xcb_connection_t* c /**< */ , xcb_window_t focus /**< */ , xcb_timestamp_t time /**< */ ,
	ubyte revert_to /**< */ , ubyte device_id /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_kbd_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_kbd_feedback_state_t)
 */
void xcb_input_kbd_feedback_state_next(xcb_input_kbd_feedback_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_kbd_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_kbd_feedback_state_end(xcb_input_kbd_feedback_state_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_ptr_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_ptr_feedback_state_t)
 */
void xcb_input_ptr_feedback_state_next(xcb_input_ptr_feedback_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_ptr_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_ptr_feedback_state_end(xcb_input_ptr_feedback_state_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_integer_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_integer_feedback_state_t)
 */
void xcb_input_integer_feedback_state_next(xcb_input_integer_feedback_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_integer_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_integer_feedback_state_end(xcb_input_integer_feedback_state_iterator_t i /**< */ );

int xcb_input_string_feedback_state_sizeof(const void* _buffer /**< */ );

xcb_keysym_t* xcb_input_string_feedback_state_keysyms(const xcb_input_string_feedback_state_t* R /**< */ );

int xcb_input_string_feedback_state_keysyms_length(const xcb_input_string_feedback_state_t* R /**< */ );

xcb_generic_iterator_t xcb_input_string_feedback_state_keysyms_end(const xcb_input_string_feedback_state_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_string_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_string_feedback_state_t)
 */
void xcb_input_string_feedback_state_next(xcb_input_string_feedback_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_string_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_string_feedback_state_end(xcb_input_string_feedback_state_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_bell_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_bell_feedback_state_t)
 */
void xcb_input_bell_feedback_state_next(xcb_input_bell_feedback_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_bell_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_bell_feedback_state_end(xcb_input_bell_feedback_state_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_led_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_led_feedback_state_t)
 */
void xcb_input_led_feedback_state_next(xcb_input_led_feedback_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_led_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_led_feedback_state_end(xcb_input_led_feedback_state_iterator_t i /**< */ );

int xcb_input_feedback_state_sizeof(const void* _buffer /**< */ );

ubyte* xcb_input_feedback_state_uninterpreted_data(const xcb_input_feedback_state_t* R /**< */ );

int xcb_input_feedback_state_uninterpreted_data_length(const xcb_input_feedback_state_t* R /**< */ );

xcb_generic_iterator_t xcb_input_feedback_state_uninterpreted_data_end(const xcb_input_feedback_state_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_feedback_state_t)
 */
void xcb_input_feedback_state_next(xcb_input_feedback_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_feedback_state_end(xcb_input_feedback_state_iterator_t i /**< */ );

int xcb_input_get_feedback_control_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_feedback_control_cookie_t xcb_input_get_feedback_control(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

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
xcb_input_get_feedback_control_cookie_t xcb_input_get_feedback_control_unchecked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

int xcb_input_get_feedback_control_feedbacks_length(const xcb_input_get_feedback_control_reply_t* R /**< */ );

xcb_input_feedback_state_iterator_t xcb_input_get_feedback_control_feedbacks_iterator(const xcb_input_get_feedback_control_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_feedback_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_feedback_control_reply_t* xcb_input_get_feedback_control_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_feedback_control_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_kbd_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_kbd_feedback_ctl_t)
 */
void xcb_input_kbd_feedback_ctl_next(xcb_input_kbd_feedback_ctl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_kbd_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_kbd_feedback_ctl_end(xcb_input_kbd_feedback_ctl_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_ptr_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_ptr_feedback_ctl_t)
 */
void xcb_input_ptr_feedback_ctl_next(xcb_input_ptr_feedback_ctl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_ptr_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_ptr_feedback_ctl_end(xcb_input_ptr_feedback_ctl_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_integer_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_integer_feedback_ctl_t)
 */
void xcb_input_integer_feedback_ctl_next(xcb_input_integer_feedback_ctl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_integer_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_integer_feedback_ctl_end(xcb_input_integer_feedback_ctl_iterator_t i /**< */ );

int xcb_input_string_feedback_ctl_sizeof(const void* _buffer /**< */ );

xcb_keysym_t* xcb_input_string_feedback_ctl_keysyms(const xcb_input_string_feedback_ctl_t* R /**< */ );

int xcb_input_string_feedback_ctl_keysyms_length(const xcb_input_string_feedback_ctl_t* R /**< */ );

xcb_generic_iterator_t xcb_input_string_feedback_ctl_keysyms_end(const xcb_input_string_feedback_ctl_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_string_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_string_feedback_ctl_t)
 */
void xcb_input_string_feedback_ctl_next(xcb_input_string_feedback_ctl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_string_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_string_feedback_ctl_end(xcb_input_string_feedback_ctl_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_bell_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_bell_feedback_ctl_t)
 */
void xcb_input_bell_feedback_ctl_next(xcb_input_bell_feedback_ctl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_bell_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_bell_feedback_ctl_end(xcb_input_bell_feedback_ctl_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_led_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_led_feedback_ctl_t)
 */
void xcb_input_led_feedback_ctl_next(xcb_input_led_feedback_ctl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_led_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_led_feedback_ctl_end(xcb_input_led_feedback_ctl_iterator_t i /**< */ );

int xcb_input_feedback_ctl_sizeof(const void* _buffer /**< */ );

ubyte* xcb_input_feedback_ctl_uninterpreted_data(const xcb_input_feedback_ctl_t* R /**< */ );

int xcb_input_feedback_ctl_uninterpreted_data_length(const xcb_input_feedback_ctl_t* R /**< */ );

xcb_generic_iterator_t xcb_input_feedback_ctl_uninterpreted_data_end(const xcb_input_feedback_ctl_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_feedback_ctl_t)
 */
void xcb_input_feedback_ctl_next(xcb_input_feedback_ctl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_feedback_ctl_end(xcb_input_feedback_ctl_iterator_t i /**< */ );

int xcb_input_change_feedback_control_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_change_feedback_control_checked(xcb_connection_t* c /**< */ , uint mask /**< */ , ubyte device_id /**< */ ,
	ubyte feedback_id /**< */ , xcb_input_feedback_ctl_t* feedback /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_change_feedback_control(xcb_connection_t* c /**< */ , uint mask /**< */ , ubyte device_id /**< */ , ubyte feedback_id /**< */ ,
	xcb_input_feedback_ctl_t* feedback /**< */ );

int xcb_input_get_device_key_mapping_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_device_key_mapping_cookie_t xcb_input_get_device_key_mapping(xcb_connection_t* c /**< */ , ubyte device_id /**< */ ,
	xcb_input_key_code_t first_keycode /**< */ , ubyte count /**< */ );

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
xcb_input_get_device_key_mapping_cookie_t xcb_input_get_device_key_mapping_unchecked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ ,
	xcb_input_key_code_t first_keycode /**< */ , ubyte count /**< */ );

xcb_keysym_t* xcb_input_get_device_key_mapping_keysyms(const xcb_input_get_device_key_mapping_reply_t* R /**< */ );

int xcb_input_get_device_key_mapping_keysyms_length(const xcb_input_get_device_key_mapping_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_input_get_device_key_mapping_keysyms_end(const xcb_input_get_device_key_mapping_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_key_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_device_key_mapping_reply_t* xcb_input_get_device_key_mapping_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_device_key_mapping_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_change_device_key_mapping_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_change_device_key_mapping_checked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ ,
	xcb_input_key_code_t first_keycode /**< */ , ubyte keysyms_per_keycode /**< */ , ubyte keycode_count /**< */ ,
	const xcb_keysym_t* keysyms /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_change_device_key_mapping(xcb_connection_t* c /**< */ , ubyte device_id /**< */ ,
	xcb_input_key_code_t first_keycode /**< */ , ubyte keysyms_per_keycode /**< */ , ubyte keycode_count /**< */ ,
	const xcb_keysym_t* keysyms /**< */ );

int xcb_input_get_device_modifier_mapping_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_device_modifier_mapping_cookie_t xcb_input_get_device_modifier_mapping(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

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
xcb_input_get_device_modifier_mapping_cookie_t xcb_input_get_device_modifier_mapping_unchecked(xcb_connection_t* c /**< */ ,
	ubyte device_id /**< */ );

ubyte* xcb_input_get_device_modifier_mapping_keymaps(const xcb_input_get_device_modifier_mapping_reply_t* R /**< */ );

int xcb_input_get_device_modifier_mapping_keymaps_length(const xcb_input_get_device_modifier_mapping_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_input_get_device_modifier_mapping_keymaps_end(const xcb_input_get_device_modifier_mapping_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_device_modifier_mapping_reply_t* xcb_input_get_device_modifier_mapping_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_device_modifier_mapping_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_set_device_modifier_mapping_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_set_device_modifier_mapping_cookie_t xcb_input_set_device_modifier_mapping(xcb_connection_t* c /**< */ , ubyte device_id /**< */ ,
	ubyte keycodes_per_modifier /**< */ , const ubyte* keymaps /**< */ );

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
xcb_input_set_device_modifier_mapping_cookie_t xcb_input_set_device_modifier_mapping_unchecked(xcb_connection_t* c /**< */ ,
	ubyte device_id /**< */ , ubyte keycodes_per_modifier /**< */ , const ubyte* keymaps /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_set_device_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_set_device_modifier_mapping_reply_t* xcb_input_set_device_modifier_mapping_reply(xcb_connection_t* c /**< */ ,
	xcb_input_set_device_modifier_mapping_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_get_device_button_mapping_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_device_button_mapping_cookie_t xcb_input_get_device_button_mapping(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

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
xcb_input_get_device_button_mapping_cookie_t xcb_input_get_device_button_mapping_unchecked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

ubyte* xcb_input_get_device_button_mapping_map(const xcb_input_get_device_button_mapping_reply_t* R /**< */ );

int xcb_input_get_device_button_mapping_map_length(const xcb_input_get_device_button_mapping_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_input_get_device_button_mapping_map_end(const xcb_input_get_device_button_mapping_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_button_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_device_button_mapping_reply_t* xcb_input_get_device_button_mapping_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_device_button_mapping_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_set_device_button_mapping_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_set_device_button_mapping_cookie_t xcb_input_set_device_button_mapping(xcb_connection_t* c /**< */ , ubyte device_id /**< */ ,
	ubyte map_size /**< */ , const ubyte* map /**< */ );

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
xcb_input_set_device_button_mapping_cookie_t xcb_input_set_device_button_mapping_unchecked(xcb_connection_t* c /**< */ ,
	ubyte device_id /**< */ , ubyte map_size /**< */ , const ubyte* map /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_set_device_button_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_set_device_button_mapping_reply_t* xcb_input_set_device_button_mapping_reply(xcb_connection_t* c /**< */ ,
	xcb_input_set_device_button_mapping_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_key_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_key_state_t)
 */
void xcb_input_key_state_next(xcb_input_key_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_key_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_key_state_end(xcb_input_key_state_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_button_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_button_state_t)
 */
void xcb_input_button_state_next(xcb_input_button_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_button_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_button_state_end(xcb_input_button_state_iterator_t i /**< */ );

int xcb_input_valuator_state_sizeof(const void* _buffer /**< */ );

uint* xcb_input_valuator_state_valuators(const xcb_input_valuator_state_t* R /**< */ );

int xcb_input_valuator_state_valuators_length(const xcb_input_valuator_state_t* R /**< */ );

xcb_generic_iterator_t xcb_input_valuator_state_valuators_end(const xcb_input_valuator_state_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_valuator_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_valuator_state_t)
 */
void xcb_input_valuator_state_next(xcb_input_valuator_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_valuator_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_valuator_state_end(xcb_input_valuator_state_iterator_t i /**< */ );

int xcb_input_input_state_sizeof(const void* _buffer /**< */ );

ubyte* xcb_input_input_state_uninterpreted_data(const xcb_input_input_state_t* R /**< */ );

int xcb_input_input_state_uninterpreted_data_length(const xcb_input_input_state_t* R /**< */ );

xcb_generic_iterator_t xcb_input_input_state_uninterpreted_data_end(const xcb_input_input_state_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_input_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_input_state_t)
 */
void xcb_input_input_state_next(xcb_input_input_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_input_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_input_state_end(xcb_input_input_state_iterator_t i /**< */ );

int xcb_input_query_device_state_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_query_device_state_cookie_t xcb_input_query_device_state(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

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
xcb_input_query_device_state_cookie_t xcb_input_query_device_state_unchecked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

int xcb_input_query_device_state_classes_length(const xcb_input_query_device_state_reply_t* R /**< */ );

xcb_input_input_state_iterator_t xcb_input_query_device_state_classes_iterator(const xcb_input_query_device_state_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_query_device_state_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_query_device_state_reply_t* xcb_input_query_device_state_reply(xcb_connection_t* c /**< */ ,
	xcb_input_query_device_state_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_send_extension_event_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_send_extension_event_checked(xcb_connection_t* c /**< */ , xcb_window_t destination /**< */ , ubyte device_id /**< */ ,
	ubyte propagate /**< */ , ushort num_classes /**< */ , ubyte num_events /**< */ , const ubyte* events /**< */ ,
	const xcb_input_event_class_t* classes /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_send_extension_event(xcb_connection_t* c /**< */ , xcb_window_t destination /**< */ , ubyte device_id /**< */ ,
	ubyte propagate /**< */ , ushort num_classes /**< */ , ubyte num_events /**< */ , const ubyte* events /**< */ ,
	const xcb_input_event_class_t* classes /**< */ );

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
xcb_void_cookie_t xcb_input_device_bell_checked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ , ubyte feedback_id /**< */ ,
	ubyte feedback_class /**< */ , byte percent /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_device_bell(xcb_connection_t* c /**< */ , ubyte device_id /**< */ , ubyte feedback_id /**< */ ,
	ubyte feedback_class /**< */ , byte percent /**< */ );

int xcb_input_set_device_valuators_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_set_device_valuators_cookie_t xcb_input_set_device_valuators(xcb_connection_t* c /**< */ , ubyte device_id /**< */ ,
	ubyte first_valuator /**< */ , ubyte num_valuators /**< */ , const int* valuators /**< */ );

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
xcb_input_set_device_valuators_cookie_t xcb_input_set_device_valuators_unchecked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ ,
	ubyte first_valuator /**< */ , ubyte num_valuators /**< */ , const int* valuators /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_set_device_valuators_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_set_device_valuators_reply_t* xcb_input_set_device_valuators_reply(xcb_connection_t* c /**< */ ,
	xcb_input_set_device_valuators_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_device_resolution_state_sizeof(const void* _buffer /**< */ );

uint* xcb_input_device_resolution_state_resolution_values(const xcb_input_device_resolution_state_t* R /**< */ );

int xcb_input_device_resolution_state_resolution_values_length(const xcb_input_device_resolution_state_t* R /**< */ );

xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_values_end(const xcb_input_device_resolution_state_t* R /**< */ );

uint* xcb_input_device_resolution_state_resolution_min(const xcb_input_device_resolution_state_t* R /**< */ );

int xcb_input_device_resolution_state_resolution_min_length(const xcb_input_device_resolution_state_t* R /**< */ );

xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_min_end(const xcb_input_device_resolution_state_t* R /**< */ );

uint* xcb_input_device_resolution_state_resolution_max(const xcb_input_device_resolution_state_t* R /**< */ );

int xcb_input_device_resolution_state_resolution_max_length(const xcb_input_device_resolution_state_t* R /**< */ );

xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_max_end(const xcb_input_device_resolution_state_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_resolution_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_resolution_state_t)
 */
void xcb_input_device_resolution_state_next(xcb_input_device_resolution_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_resolution_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_resolution_state_end(xcb_input_device_resolution_state_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_abs_calib_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_abs_calib_state_t)
 */
void xcb_input_device_abs_calib_state_next(xcb_input_device_abs_calib_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_abs_calib_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_abs_calib_state_end(xcb_input_device_abs_calib_state_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_abs_area_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_abs_area_state_t)
 */
void xcb_input_device_abs_area_state_next(xcb_input_device_abs_area_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_abs_area_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_abs_area_state_end(xcb_input_device_abs_area_state_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_core_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_core_state_t)
 */
void xcb_input_device_core_state_next(xcb_input_device_core_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_core_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_core_state_end(xcb_input_device_core_state_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_enable_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_enable_state_t)
 */
void xcb_input_device_enable_state_next(xcb_input_device_enable_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_enable_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_enable_state_end(xcb_input_device_enable_state_iterator_t i /**< */ );

int xcb_input_device_state_sizeof(const void* _buffer /**< */ );

ubyte* xcb_input_device_state_uninterpreted_data(const xcb_input_device_state_t* R /**< */ );

int xcb_input_device_state_uninterpreted_data_length(const xcb_input_device_state_t* R /**< */ );

xcb_generic_iterator_t xcb_input_device_state_uninterpreted_data_end(const xcb_input_device_state_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_state_t)
 */
void xcb_input_device_state_next(xcb_input_device_state_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_state_end(xcb_input_device_state_iterator_t i /**< */ );

int xcb_input_get_device_control_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_device_control_cookie_t xcb_input_get_device_control(xcb_connection_t* c /**< */ , ushort control_id /**< */ ,
	ubyte device_id /**< */ );

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
xcb_input_get_device_control_cookie_t xcb_input_get_device_control_unchecked(xcb_connection_t* c /**< */ , ushort control_id /**< */ ,
	ubyte device_id /**< */ );

xcb_input_device_state_t* xcb_input_get_device_control_control(const xcb_input_get_device_control_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_device_control_reply_t* xcb_input_get_device_control_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_device_control_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_device_resolution_ctl_sizeof(const void* _buffer /**< */ );

uint* xcb_input_device_resolution_ctl_resolution_values(const xcb_input_device_resolution_ctl_t* R /**< */ );

int xcb_input_device_resolution_ctl_resolution_values_length(const xcb_input_device_resolution_ctl_t* R /**< */ );

xcb_generic_iterator_t xcb_input_device_resolution_ctl_resolution_values_end(const xcb_input_device_resolution_ctl_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_resolution_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_resolution_ctl_t)
 */
void xcb_input_device_resolution_ctl_next(xcb_input_device_resolution_ctl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_resolution_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_resolution_ctl_end(xcb_input_device_resolution_ctl_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_abs_calib_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_abs_calib_ctl_t)
 */
void xcb_input_device_abs_calib_ctl_next(xcb_input_device_abs_calib_ctl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_abs_calib_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_abs_calib_ctl_end(xcb_input_device_abs_calib_ctl_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_abs_area_ctrl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_abs_area_ctrl_t)
 */
void xcb_input_device_abs_area_ctrl_next(xcb_input_device_abs_area_ctrl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_abs_area_ctrl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_abs_area_ctrl_end(xcb_input_device_abs_area_ctrl_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_core_ctrl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_core_ctrl_t)
 */
void xcb_input_device_core_ctrl_next(xcb_input_device_core_ctrl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_core_ctrl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_core_ctrl_end(xcb_input_device_core_ctrl_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_enable_ctrl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_enable_ctrl_t)
 */
void xcb_input_device_enable_ctrl_next(xcb_input_device_enable_ctrl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_enable_ctrl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_enable_ctrl_end(xcb_input_device_enable_ctrl_iterator_t i /**< */ );

int xcb_input_device_ctl_sizeof(const void* _buffer /**< */ );

ubyte* xcb_input_device_ctl_uninterpreted_data(const xcb_input_device_ctl_t* R /**< */ );

int xcb_input_device_ctl_uninterpreted_data_length(const xcb_input_device_ctl_t* R /**< */ );

xcb_generic_iterator_t xcb_input_device_ctl_uninterpreted_data_end(const xcb_input_device_ctl_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_ctl_t)
 */
void xcb_input_device_ctl_next(xcb_input_device_ctl_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_ctl_end(xcb_input_device_ctl_iterator_t i /**< */ );

int xcb_input_change_device_control_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_change_device_control_cookie_t xcb_input_change_device_control(xcb_connection_t* c /**< */ , ushort control_id /**< */ ,
	ubyte device_id /**< */ , xcb_input_device_ctl_t* control /**< */ );

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
xcb_input_change_device_control_cookie_t xcb_input_change_device_control_unchecked(xcb_connection_t* c /**< */ , ushort control_id /**< */ ,
	ubyte device_id /**< */ , xcb_input_device_ctl_t* control /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_change_device_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_change_device_control_reply_t* xcb_input_change_device_control_reply(xcb_connection_t* c /**< */ ,
	xcb_input_change_device_control_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_list_device_properties_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_list_device_properties_cookie_t xcb_input_list_device_properties(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

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
xcb_input_list_device_properties_cookie_t xcb_input_list_device_properties_unchecked(xcb_connection_t* c /**< */ , ubyte device_id /**< */ );

xcb_atom_t* xcb_input_list_device_properties_atoms(const xcb_input_list_device_properties_reply_t* R /**< */ );

int xcb_input_list_device_properties_atoms_length(const xcb_input_list_device_properties_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_input_list_device_properties_atoms_end(const xcb_input_list_device_properties_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_list_device_properties_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_list_device_properties_reply_t* xcb_input_list_device_properties_reply(xcb_connection_t* c /**< */ ,
	xcb_input_list_device_properties_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

ubyte* xcb_input_change_device_property_items_data_8(const xcb_input_change_device_property_items_t* S /**< */ );

int xcb_input_change_device_property_items_data_8_length(const xcb_input_change_device_property_request_t* R /**< */ ,
	const xcb_input_change_device_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_change_device_property_items_data_8_end(
	const xcb_input_change_device_property_request_t* R /**< */ , const xcb_input_change_device_property_items_t* S /**< */ );

ushort* xcb_input_change_device_property_items_data_16(const xcb_input_change_device_property_items_t* S /**< */ );

int xcb_input_change_device_property_items_data_16_length(const xcb_input_change_device_property_request_t* R /**< */ ,
	const xcb_input_change_device_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_change_device_property_items_data_16_end(
	const xcb_input_change_device_property_request_t* R /**< */ , const xcb_input_change_device_property_items_t* S /**< */ );

uint* xcb_input_change_device_property_items_data_32(const xcb_input_change_device_property_items_t* S /**< */ );

int xcb_input_change_device_property_items_data_32_length(const xcb_input_change_device_property_request_t* R /**< */ ,
	const xcb_input_change_device_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_change_device_property_items_data_32_end(
	const xcb_input_change_device_property_request_t* R /**< */ , const xcb_input_change_device_property_items_t* S /**< */ );

int xcb_input_change_device_property_items_serialize(void** _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ ,
	const xcb_input_change_device_property_items_t* _aux /**< */ );

int xcb_input_change_device_property_items_unpack(const void* _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ ,
	xcb_input_change_device_property_items_t* _aux /**< */ );

int xcb_input_change_device_property_items_sizeof(const void* _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ );

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
xcb_void_cookie_t xcb_input_change_device_property_checked(xcb_connection_t* c /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ ,
	ubyte device_id /**< */ , ubyte format /**< */ , ubyte mode /**< */ , uint num_items /**< */ , const void* items /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_change_device_property(xcb_connection_t* c /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , ubyte device_id /**< */ ,
	ubyte format /**< */ , ubyte mode /**< */ , uint num_items /**< */ , const void* items /**< */ );

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
xcb_void_cookie_t xcb_input_change_device_property_aux_checked(xcb_connection_t* c /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ ,
	ubyte device_id /**< */ , ubyte format /**< */ , ubyte mode /**< */ , uint num_items /**< */ ,
	const xcb_input_change_device_property_items_t* items /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_change_device_property_aux(xcb_connection_t* c /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ ,
	ubyte device_id /**< */ , ubyte format /**< */ , ubyte mode /**< */ , uint num_items /**< */ ,
	const xcb_input_change_device_property_items_t* items /**< */ );

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
xcb_void_cookie_t xcb_input_delete_device_property_checked(xcb_connection_t* c /**< */ , xcb_atom_t property /**< */ , ubyte device_id /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_delete_device_property(xcb_connection_t* c /**< */ , xcb_atom_t property /**< */ , ubyte device_id /**< */ );

ubyte* xcb_input_get_device_property_items_data_8(const xcb_input_get_device_property_items_t* S /**< */ );

int xcb_input_get_device_property_items_data_8_length(const xcb_input_get_device_property_reply_t* R /**< */ ,
	const xcb_input_get_device_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_get_device_property_items_data_8_end(const xcb_input_get_device_property_reply_t* R /**< */ ,
	const xcb_input_get_device_property_items_t* S /**< */ );

ushort* xcb_input_get_device_property_items_data_16(const xcb_input_get_device_property_items_t* S /**< */ );

int xcb_input_get_device_property_items_data_16_length(const xcb_input_get_device_property_reply_t* R /**< */ ,
	const xcb_input_get_device_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_get_device_property_items_data_16_end(const xcb_input_get_device_property_reply_t* R /**< */ ,
	const xcb_input_get_device_property_items_t* S /**< */ );

uint* xcb_input_get_device_property_items_data_32(const xcb_input_get_device_property_items_t* S /**< */ );

int xcb_input_get_device_property_items_data_32_length(const xcb_input_get_device_property_reply_t* R /**< */ ,
	const xcb_input_get_device_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_get_device_property_items_data_32_end(const xcb_input_get_device_property_reply_t* R /**< */ ,
	const xcb_input_get_device_property_items_t* S /**< */ );

int xcb_input_get_device_property_items_serialize(void** _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ ,
	const xcb_input_get_device_property_items_t* _aux /**< */ );

int xcb_input_get_device_property_items_unpack(const void* _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ ,
	xcb_input_get_device_property_items_t* _aux /**< */ );

int xcb_input_get_device_property_items_sizeof(const void* _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_get_device_property_cookie_t xcb_input_get_device_property(xcb_connection_t* c /**< */ , xcb_atom_t property /**< */ ,
	xcb_atom_t type /**< */ , uint offset /**< */ , uint len /**< */ , ubyte device_id /**< */ , ubyte delete_ /**< */ );

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
xcb_input_get_device_property_cookie_t xcb_input_get_device_property_unchecked(xcb_connection_t* c /**< */ , xcb_atom_t property /**< */ ,
	xcb_atom_t type /**< */ , uint offset /**< */ , uint len /**< */ , ubyte device_id /**< */ , ubyte delete_ /**< */ );

void* xcb_input_get_device_property_items(const xcb_input_get_device_property_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_get_device_property_reply_t* xcb_input_get_device_property_reply(xcb_connection_t* c /**< */ ,
	xcb_input_get_device_property_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_group_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_group_info_t)
 */
void xcb_input_group_info_next(xcb_input_group_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_group_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_group_info_end(xcb_input_group_info_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_modifier_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_modifier_info_t)
 */
void xcb_input_modifier_info_next(xcb_input_modifier_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_modifier_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_modifier_info_end(xcb_input_modifier_info_iterator_t i /**< */ );

int xcb_input_xi_query_pointer_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_xi_query_pointer_cookie_t xcb_input_xi_query_pointer(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_input_device_id_t deviceid /**< */ );

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
xcb_input_xi_query_pointer_cookie_t xcb_input_xi_query_pointer_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_input_device_id_t deviceid /**< */ );

uint* xcb_input_xi_query_pointer_buttons(const xcb_input_xi_query_pointer_reply_t* R /**< */ );

int xcb_input_xi_query_pointer_buttons_length(const xcb_input_xi_query_pointer_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_input_xi_query_pointer_buttons_end(const xcb_input_xi_query_pointer_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_xi_query_pointer_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_xi_query_pointer_reply_t* xcb_input_xi_query_pointer_reply(xcb_connection_t* c /**< */ ,
	xcb_input_xi_query_pointer_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_input_xi_warp_pointer_checked(xcb_connection_t* c /**< */ , xcb_window_t src_win /**< */ , xcb_window_t dst_win /**< */ ,
	xcb_input_fp1616_t src_x /**< */ , xcb_input_fp1616_t src_y /**< */ , ushort src_width /**< */ , ushort src_height /**< */ , xcb_input_fp1616_t dst_x /**< */ ,
	xcb_input_fp1616_t dst_y /**< */ , xcb_input_device_id_t deviceid /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_warp_pointer(xcb_connection_t* c /**< */ , xcb_window_t src_win /**< */ , xcb_window_t dst_win /**< */ ,
	xcb_input_fp1616_t src_x /**< */ , xcb_input_fp1616_t src_y /**< */ , ushort src_width /**< */ , ushort src_height /**< */ , xcb_input_fp1616_t dst_x /**< */ ,
	xcb_input_fp1616_t dst_y /**< */ , xcb_input_device_id_t deviceid /**< */ );

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
xcb_void_cookie_t xcb_input_xi_change_cursor_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_cursor_t cursor /**< */ , xcb_input_device_id_t deviceid /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_change_cursor(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_cursor_t cursor /**< */ ,
	xcb_input_device_id_t deviceid /**< */ );

int xcb_input_add_master_sizeof(const void* _buffer /**< */ );

char* xcb_input_add_master_name(const xcb_input_add_master_t* R /**< */ );

int xcb_input_add_master_name_length(const xcb_input_add_master_t* R /**< */ );

xcb_generic_iterator_t xcb_input_add_master_name_end(const xcb_input_add_master_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_add_master_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_add_master_t)
 */
void xcb_input_add_master_next(xcb_input_add_master_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_add_master_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_add_master_end(xcb_input_add_master_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_remove_master_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_remove_master_t)
 */
void xcb_input_remove_master_next(xcb_input_remove_master_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_remove_master_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_remove_master_end(xcb_input_remove_master_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_attach_slave_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_attach_slave_t)
 */
void xcb_input_attach_slave_next(xcb_input_attach_slave_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_attach_slave_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_attach_slave_end(xcb_input_attach_slave_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_detach_slave_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_detach_slave_t)
 */
void xcb_input_detach_slave_next(xcb_input_detach_slave_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_detach_slave_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_detach_slave_end(xcb_input_detach_slave_iterator_t i /**< */ );

int xcb_input_hierarchy_change_sizeof(const void* _buffer /**< */ );

ubyte* xcb_input_hierarchy_change_uninterpreted_data(const xcb_input_hierarchy_change_t* R /**< */ );

int xcb_input_hierarchy_change_uninterpreted_data_length(const xcb_input_hierarchy_change_t* R /**< */ );

xcb_generic_iterator_t xcb_input_hierarchy_change_uninterpreted_data_end(const xcb_input_hierarchy_change_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_hierarchy_change_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_hierarchy_change_t)
 */
void xcb_input_hierarchy_change_next(xcb_input_hierarchy_change_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_hierarchy_change_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_hierarchy_change_end(xcb_input_hierarchy_change_iterator_t i /**< */ );

int xcb_input_xi_change_hierarchy_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_xi_change_hierarchy_checked(xcb_connection_t* c /**< */ , ubyte num_changes /**< */ ,
	const xcb_input_hierarchy_change_t* changes /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_change_hierarchy(xcb_connection_t* c /**< */ , ubyte num_changes /**< */ ,
	const xcb_input_hierarchy_change_t* changes /**< */ );

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
xcb_void_cookie_t xcb_input_xi_set_client_pointer_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_input_device_id_t deviceid /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_set_client_pointer(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_input_device_id_t deviceid /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_xi_get_client_pointer_cookie_t xcb_input_xi_get_client_pointer(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_input_xi_get_client_pointer_cookie_t xcb_input_xi_get_client_pointer_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_xi_get_client_pointer_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_xi_get_client_pointer_reply_t* xcb_input_xi_get_client_pointer_reply(xcb_connection_t* c /**< */ ,
	xcb_input_xi_get_client_pointer_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_event_mask_sizeof(const void* _buffer /**< */ );

uint* xcb_input_event_mask_mask(const xcb_input_event_mask_t* R /**< */ );

int xcb_input_event_mask_mask_length(const xcb_input_event_mask_t* R /**< */ );

xcb_generic_iterator_t xcb_input_event_mask_mask_end(const xcb_input_event_mask_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_event_mask_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_event_mask_t)
 */
void xcb_input_event_mask_next(xcb_input_event_mask_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_event_mask_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_event_mask_end(xcb_input_event_mask_iterator_t i /**< */ );

int xcb_input_xi_select_events_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_xi_select_events_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort num_mask /**< */ ,
	const xcb_input_event_mask_t* masks /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_select_events(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort num_mask /**< */ ,
	const xcb_input_event_mask_t* masks /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_xi_query_version_cookie_t xcb_input_xi_query_version(xcb_connection_t* c /**< */ , ushort major_version /**< */ ,
	ushort minor_version /**< */ );

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
xcb_input_xi_query_version_cookie_t xcb_input_xi_query_version_unchecked(xcb_connection_t* c /**< */ ,
	ushort major_version /**< */ , ushort minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_xi_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_xi_query_version_reply_t* xcb_input_xi_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_input_xi_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_button_class_sizeof(const void* _buffer /**< */ );

uint* xcb_input_button_class_state(const xcb_input_button_class_t* R /**< */ );

int xcb_input_button_class_state_length(const xcb_input_button_class_t* R /**< */ );

xcb_generic_iterator_t xcb_input_button_class_state_end(const xcb_input_button_class_t* R /**< */ );

xcb_atom_t* xcb_input_button_class_labels(const xcb_input_button_class_t* R /**< */ );

int xcb_input_button_class_labels_length(const xcb_input_button_class_t* R /**< */ );

xcb_generic_iterator_t xcb_input_button_class_labels_end(const xcb_input_button_class_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_button_class_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_button_class_t)
 */
void xcb_input_button_class_next(xcb_input_button_class_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_button_class_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_button_class_end(xcb_input_button_class_iterator_t i /**< */ );

int xcb_input_key_class_sizeof(const void* _buffer /**< */ );

uint* xcb_input_key_class_keys(const xcb_input_key_class_t* R /**< */ );

int xcb_input_key_class_keys_length(const xcb_input_key_class_t* R /**< */ );

xcb_generic_iterator_t xcb_input_key_class_keys_end(const xcb_input_key_class_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_key_class_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_key_class_t)
 */
void xcb_input_key_class_next(xcb_input_key_class_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_key_class_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_key_class_end(xcb_input_key_class_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_scroll_class_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_scroll_class_t)
 */
void xcb_input_scroll_class_next(xcb_input_scroll_class_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_scroll_class_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_scroll_class_end(xcb_input_scroll_class_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_touch_class_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_touch_class_t)
 */
void xcb_input_touch_class_next(xcb_input_touch_class_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_touch_class_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_touch_class_end(xcb_input_touch_class_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_valuator_class_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_valuator_class_t)
 */
void xcb_input_valuator_class_next(xcb_input_valuator_class_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_valuator_class_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_valuator_class_end(xcb_input_valuator_class_iterator_t i /**< */ );

int xcb_input_device_class_sizeof(const void* _buffer /**< */ );

ubyte* xcb_input_device_class_uninterpreted_data(const xcb_input_device_class_t* R /**< */ );

int xcb_input_device_class_uninterpreted_data_length(const xcb_input_device_class_t* R /**< */ );

xcb_generic_iterator_t xcb_input_device_class_uninterpreted_data_end(const xcb_input_device_class_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_class_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_class_t)
 */
void xcb_input_device_class_next(xcb_input_device_class_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_class_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_device_class_end(xcb_input_device_class_iterator_t i /**< */ );

int xcb_input_xi_device_info_sizeof(const void* _buffer /**< */ );

char* xcb_input_xi_device_info_name(const xcb_input_xi_device_info_t* R /**< */ );

int xcb_input_xi_device_info_name_length(const xcb_input_xi_device_info_t* R /**< */ );

xcb_generic_iterator_t xcb_input_xi_device_info_name_end(const xcb_input_xi_device_info_t* R /**< */ );

int xcb_input_xi_device_info_classes_length(const xcb_input_xi_device_info_t* R /**< */ );

xcb_input_device_class_iterator_t xcb_input_xi_device_info_classes_iterator(const xcb_input_xi_device_info_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_xi_device_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_xi_device_info_t)
 */
void xcb_input_xi_device_info_next(xcb_input_xi_device_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_xi_device_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_xi_device_info_end(xcb_input_xi_device_info_iterator_t i /**< */ );

int xcb_input_xi_query_device_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_xi_query_device_cookie_t xcb_input_xi_query_device(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ );

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
xcb_input_xi_query_device_cookie_t xcb_input_xi_query_device_unchecked(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ );

int xcb_input_xi_query_device_infos_length(const xcb_input_xi_query_device_reply_t* R /**< */ );

xcb_input_xi_device_info_iterator_t xcb_input_xi_query_device_infos_iterator(const xcb_input_xi_query_device_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_xi_query_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_xi_query_device_reply_t* xcb_input_xi_query_device_reply(xcb_connection_t* c /**< */ ,
	xcb_input_xi_query_device_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_input_xi_set_focus_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_timestamp_t time /**< */ ,
	xcb_input_device_id_t deviceid /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_set_focus(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_timestamp_t time /**< */ ,
	xcb_input_device_id_t deviceid /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_xi_get_focus_cookie_t xcb_input_xi_get_focus(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ );

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
xcb_input_xi_get_focus_cookie_t xcb_input_xi_get_focus_unchecked(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_xi_get_focus_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_xi_get_focus_reply_t* xcb_input_xi_get_focus_reply(xcb_connection_t* c /**< */ , xcb_input_xi_get_focus_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_input_xi_grab_device_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_xi_grab_device_cookie_t xcb_input_xi_grab_device(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_timestamp_t time /**< */ ,
	xcb_cursor_t cursor /**< */ , xcb_input_device_id_t deviceid /**< */ , ubyte mode /**< */ , ubyte paired_device_mode /**< */ , ubyte owner_events /**< */ ,
	ushort mask_len /**< */ , const uint* mask /**< */ );

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
xcb_input_xi_grab_device_cookie_t xcb_input_xi_grab_device_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_timestamp_t time /**< */ , xcb_cursor_t cursor /**< */ , xcb_input_device_id_t deviceid /**< */ , ubyte mode /**< */ , ubyte paired_device_mode /**< */ ,
	ubyte owner_events /**< */ , ushort mask_len /**< */ , const uint* mask /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_xi_grab_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_xi_grab_device_reply_t* xcb_input_xi_grab_device_reply(xcb_connection_t* c /**< */ ,
	xcb_input_xi_grab_device_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_input_xi_ungrab_device_checked(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ ,
	xcb_input_device_id_t deviceid /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_ungrab_device(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ , xcb_input_device_id_t deviceid /**< */ );

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
xcb_void_cookie_t xcb_input_xi_allow_events_checked(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ ,
	xcb_input_device_id_t deviceid /**< */ , ubyte event_mode /**< */ , uint touchid /**< */ , xcb_window_t grab_window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_allow_events(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ , xcb_input_device_id_t deviceid /**< */ ,
	ubyte event_mode /**< */ , uint touchid /**< */ , xcb_window_t grab_window /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_grab_modifier_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_grab_modifier_info_t)
 */
void xcb_input_grab_modifier_info_next(xcb_input_grab_modifier_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_grab_modifier_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_grab_modifier_info_end(xcb_input_grab_modifier_info_iterator_t i /**< */ );

int xcb_input_xi_passive_grab_device_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_xi_passive_grab_device_cookie_t xcb_input_xi_passive_grab_device(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ ,
	xcb_window_t grab_window /**< */ , xcb_cursor_t cursor /**< */ , uint detail /**< */ , xcb_input_device_id_t deviceid /**< */ , ushort num_modifiers /**< */ ,
	ushort mask_len /**< */ , ubyte grab_type /**< */ , ubyte grab_mode /**< */ , ubyte paired_device_mode /**< */ , ubyte owner_events /**< */ ,
	const uint* mask /**< */ , const uint* modifiers /**< */ );

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
xcb_input_xi_passive_grab_device_cookie_t xcb_input_xi_passive_grab_device_unchecked(xcb_connection_t* c /**< */ ,
	xcb_timestamp_t time /**< */ , xcb_window_t grab_window /**< */ , xcb_cursor_t cursor /**< */ , uint detail /**< */ , xcb_input_device_id_t deviceid /**< */ ,
	ushort num_modifiers /**< */ , ushort mask_len /**< */ , ubyte grab_type /**< */ , ubyte grab_mode /**< */ , ubyte paired_device_mode /**< */ ,
	ubyte owner_events /**< */ , const uint* mask /**< */ , const uint* modifiers /**< */ );

xcb_input_grab_modifier_info_t* xcb_input_xi_passive_grab_device_modifiers(const xcb_input_xi_passive_grab_device_reply_t* R /**< */ );

int xcb_input_xi_passive_grab_device_modifiers_length(const xcb_input_xi_passive_grab_device_reply_t* R /**< */ );

xcb_input_grab_modifier_info_iterator_t xcb_input_xi_passive_grab_device_modifiers_iterator(const xcb_input_xi_passive_grab_device_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_xi_passive_grab_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_xi_passive_grab_device_reply_t* xcb_input_xi_passive_grab_device_reply(xcb_connection_t* c /**< */ ,
	xcb_input_xi_passive_grab_device_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_xi_passive_ungrab_device_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_xi_passive_ungrab_device_checked(xcb_connection_t* c /**< */ , xcb_window_t grab_window /**< */ , uint detail /**< */ ,
	xcb_input_device_id_t deviceid /**< */ , ushort num_modifiers /**< */ , ubyte grab_type /**< */ , const uint* modifiers /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_passive_ungrab_device(xcb_connection_t* c /**< */ , xcb_window_t grab_window /**< */ , uint detail /**< */ ,
	xcb_input_device_id_t deviceid /**< */ , ushort num_modifiers /**< */ , ubyte grab_type /**< */ , const uint* modifiers /**< */ );

int xcb_input_xi_list_properties_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_xi_list_properties_cookie_t xcb_input_xi_list_properties(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ );

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
xcb_input_xi_list_properties_cookie_t xcb_input_xi_list_properties_unchecked(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ );

xcb_atom_t* xcb_input_xi_list_properties_properties(const xcb_input_xi_list_properties_reply_t* R /**< */ );

int xcb_input_xi_list_properties_properties_length(const xcb_input_xi_list_properties_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_input_xi_list_properties_properties_end(const xcb_input_xi_list_properties_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_xi_list_properties_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_xi_list_properties_reply_t* xcb_input_xi_list_properties_reply(xcb_connection_t* c /**< */ ,
	xcb_input_xi_list_properties_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

ubyte* xcb_input_xi_change_property_items_data_8(const xcb_input_xi_change_property_items_t* S /**< */ );

int xcb_input_xi_change_property_items_data_8_length(const xcb_input_xi_change_property_request_t* R /**< */ ,
	const xcb_input_xi_change_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_xi_change_property_items_data_8_end(const xcb_input_xi_change_property_request_t* R /**< */ ,
	const xcb_input_xi_change_property_items_t* S /**< */ );

ushort* xcb_input_xi_change_property_items_data_16(const xcb_input_xi_change_property_items_t* S /**< */ );

int xcb_input_xi_change_property_items_data_16_length(const xcb_input_xi_change_property_request_t* R /**< */ ,
	const xcb_input_xi_change_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_xi_change_property_items_data_16_end(const xcb_input_xi_change_property_request_t* R /**< */ ,
	const xcb_input_xi_change_property_items_t* S /**< */ );

uint* xcb_input_xi_change_property_items_data_32(const xcb_input_xi_change_property_items_t* S /**< */ );

int xcb_input_xi_change_property_items_data_32_length(const xcb_input_xi_change_property_request_t* R /**< */ ,
	const xcb_input_xi_change_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_xi_change_property_items_data_32_end(const xcb_input_xi_change_property_request_t* R /**< */ ,
	const xcb_input_xi_change_property_items_t* S /**< */ );

int xcb_input_xi_change_property_items_serialize(void** _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ ,
	const xcb_input_xi_change_property_items_t* _aux /**< */ );

int xcb_input_xi_change_property_items_unpack(const void* _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ ,
	xcb_input_xi_change_property_items_t* _aux /**< */ );

int xcb_input_xi_change_property_items_sizeof(const void* _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ );

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
xcb_void_cookie_t xcb_input_xi_change_property_checked(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ , ubyte mode /**< */ ,
	ubyte format /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , uint num_items /**< */ , const void* items /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_change_property(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ , ubyte mode /**< */ , ubyte format /**< */ ,
	xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , uint num_items /**< */ , const void* items /**< */ );

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
xcb_void_cookie_t xcb_input_xi_change_property_aux_checked(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ , ubyte mode /**< */ ,
	ubyte format /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , uint num_items /**< */ ,
	const xcb_input_xi_change_property_items_t* items /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_change_property_aux(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ , ubyte mode /**< */ ,
	ubyte format /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , uint num_items /**< */ ,
	const xcb_input_xi_change_property_items_t* items /**< */ );

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
xcb_void_cookie_t xcb_input_xi_delete_property_checked(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ ,
	xcb_atom_t property /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_delete_property(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ , xcb_atom_t property /**< */ );

ubyte* xcb_input_xi_get_property_items_data_8(const xcb_input_xi_get_property_items_t* S /**< */ );

int xcb_input_xi_get_property_items_data_8_length(const xcb_input_xi_get_property_reply_t* R /**< */ ,
	const xcb_input_xi_get_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_xi_get_property_items_data_8_end(const xcb_input_xi_get_property_reply_t* R /**< */ ,
	const xcb_input_xi_get_property_items_t* S /**< */ );

ushort* xcb_input_xi_get_property_items_data_16(const xcb_input_xi_get_property_items_t* S /**< */ );

int xcb_input_xi_get_property_items_data_16_length(const xcb_input_xi_get_property_reply_t* R /**< */ ,
	const xcb_input_xi_get_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_xi_get_property_items_data_16_end(const xcb_input_xi_get_property_reply_t* R /**< */ ,
	const xcb_input_xi_get_property_items_t* S /**< */ );

uint* xcb_input_xi_get_property_items_data_32(const xcb_input_xi_get_property_items_t* S /**< */ );

int xcb_input_xi_get_property_items_data_32_length(const xcb_input_xi_get_property_reply_t* R /**< */ ,
	const xcb_input_xi_get_property_items_t* S /**< */ );

xcb_generic_iterator_t xcb_input_xi_get_property_items_data_32_end(const xcb_input_xi_get_property_reply_t* R /**< */ ,
	const xcb_input_xi_get_property_items_t* S /**< */ );

int xcb_input_xi_get_property_items_serialize(void** _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ ,
	const xcb_input_xi_get_property_items_t* _aux /**< */ );

int xcb_input_xi_get_property_items_unpack(const void* _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ ,
	xcb_input_xi_get_property_items_t* _aux /**< */ );

int xcb_input_xi_get_property_items_sizeof(const void* _buffer /**< */ , uint num_items /**< */ , ubyte format /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_xi_get_property_cookie_t xcb_input_xi_get_property(xcb_connection_t* c /**< */ , xcb_input_device_id_t deviceid /**< */ ,
	ubyte delete_ /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , uint offset /**< */ , uint len /**< */ );

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
xcb_input_xi_get_property_cookie_t xcb_input_xi_get_property_unchecked(xcb_connection_t* c /**< */ ,
	xcb_input_device_id_t deviceid /**< */ , ubyte delete_ /**< */ , xcb_atom_t property /**< */ , xcb_atom_t type /**< */ ,
	uint offset /**< */ , uint len /**< */ );

void* xcb_input_xi_get_property_items(const xcb_input_xi_get_property_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_xi_get_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_xi_get_property_reply_t* xcb_input_xi_get_property_reply(xcb_connection_t* c /**< */ ,
	xcb_input_xi_get_property_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_input_xi_get_selected_events_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_input_xi_get_selected_events_cookie_t xcb_input_xi_get_selected_events(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_input_xi_get_selected_events_cookie_t xcb_input_xi_get_selected_events_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

int xcb_input_xi_get_selected_events_masks_length(const xcb_input_xi_get_selected_events_reply_t* R /**< */ );

xcb_input_event_mask_iterator_t xcb_input_xi_get_selected_events_masks_iterator(const xcb_input_xi_get_selected_events_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_xi_get_selected_events_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_input_xi_get_selected_events_reply_t* xcb_input_xi_get_selected_events_reply(xcb_connection_t* c /**< */ ,
	xcb_input_xi_get_selected_events_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_barrier_release_pointer_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_barrier_release_pointer_info_t)
 */
void xcb_input_barrier_release_pointer_info_next(xcb_input_barrier_release_pointer_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_barrier_release_pointer_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_barrier_release_pointer_info_end(xcb_input_barrier_release_pointer_info_iterator_t i /**< */ );

int xcb_input_xi_barrier_release_pointer_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_input_xi_barrier_release_pointer_checked(xcb_connection_t* c /**< */ , uint num_barriers /**< */ ,
	const xcb_input_barrier_release_pointer_info_t* barriers /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_input_xi_barrier_release_pointer(xcb_connection_t* c /**< */ , uint num_barriers /**< */ ,
	const xcb_input_barrier_release_pointer_info_t* barriers /**< */ );

int xcb_input_device_changed_sizeof(const void* _buffer /**< */ );

int xcb_input_key_press_sizeof(const void* _buffer /**< */ );

int xcb_input_key_release_sizeof(const void* _buffer /**< */ );

int xcb_input_button_press_sizeof(const void* _buffer /**< */ );

int xcb_input_button_release_sizeof(const void* _buffer /**< */ );

int xcb_input_motion_sizeof(const void* _buffer /**< */ );

int xcb_input_enter_sizeof(const void* _buffer /**< */ );

int xcb_input_leave_sizeof(const void* _buffer /**< */ );

int xcb_input_focus_in_sizeof(const void* _buffer /**< */ );

int xcb_input_focus_out_sizeof(const void* _buffer /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_hierarchy_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_hierarchy_info_t)
 */
void xcb_input_hierarchy_info_next(xcb_input_hierarchy_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_hierarchy_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_input_hierarchy_info_end(xcb_input_hierarchy_info_iterator_t i /**< */ );

int xcb_input_hierarchy_sizeof(const void* _buffer /**< */ );

int xcb_input_raw_key_press_sizeof(const void* _buffer /**< */ );

int xcb_input_raw_key_release_sizeof(const void* _buffer /**< */ );

int xcb_input_raw_button_press_sizeof(const void* _buffer /**< */ );

int xcb_input_raw_button_release_sizeof(const void* _buffer /**< */ );

int xcb_input_raw_motion_sizeof(const void* _buffer /**< */ );

int xcb_input_touch_begin_sizeof(const void* _buffer /**< */ );

int xcb_input_touch_update_sizeof(const void* _buffer /**< */ );

int xcb_input_touch_end_sizeof(const void* _buffer /**< */ );

int xcb_input_raw_touch_begin_sizeof(const void* _buffer /**< */ );

int xcb_input_raw_touch_update_sizeof(const void* _buffer /**< */ );

int xcb_input_raw_touch_end_sizeof(const void* _buffer /**< */ );

/**
 * @}
 */
