/*
 * This file generated automatically from xproto.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB__API XCB  API
 * @brief  XCB Protocol Implementation.
 * @{
 **/

module xcb.xproto;

import xcb.xcb;

extern (C):

/**
 * @brief xcb_char2b_t
 **/
struct xcb_char2b_t {
	ubyte byte1; /**<  */
	ubyte byte2; /**<  */
}

/**
 * @brief xcb_char2b_iterator_t
 **/
struct xcb_char2b_iterator_t {
	xcb_char2b_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_window_t = uint;

/**
 * @brief xcb_window_iterator_t
 **/
struct xcb_window_iterator_t {
	xcb_window_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_pixmap_t = uint;

/**
 * @brief xcb_pixmap_iterator_t
 **/
struct xcb_pixmap_iterator_t {
	xcb_pixmap_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_cursor_t = uint;

/**
 * @brief xcb_cursor_iterator_t
 **/
struct xcb_cursor_iterator_t {
	xcb_cursor_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_font_t = uint;

/**
 * @brief xcb_font_iterator_t
 **/
struct xcb_font_iterator_t {
	xcb_font_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_gcontext_t = uint;

/**
 * @brief xcb_gcontext_iterator_t
 **/
struct xcb_gcontext_iterator_t {
	xcb_gcontext_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_colormap_t = uint;

/**
 * @brief xcb_colormap_iterator_t
 **/
struct xcb_colormap_iterator_t {
	xcb_colormap_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_atom_t = uint;

/**
 * @brief xcb_atom_iterator_t
 **/
struct xcb_atom_iterator_t {
	xcb_atom_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_drawable_t = uint;

/**
 * @brief xcb_drawable_iterator_t
 **/
struct xcb_drawable_iterator_t {
	xcb_drawable_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_fontable_t = uint;

/**
 * @brief xcb_fontable_iterator_t
 **/
struct xcb_fontable_iterator_t {
	xcb_fontable_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_visualid_t = uint;

/**
 * @brief xcb_visualid_iterator_t
 **/
struct xcb_visualid_iterator_t {
	xcb_visualid_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_timestamp_t = uint;

/**
 * @brief xcb_timestamp_iterator_t
 **/
struct xcb_timestamp_iterator_t {
	xcb_timestamp_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_keysym_t = uint;

/**
 * @brief xcb_keysym_iterator_t
 **/
struct xcb_keysym_iterator_t {
	xcb_keysym_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_keycode_t = ubyte;

/**
 * @brief xcb_keycode_iterator_t
 **/
struct xcb_keycode_iterator_t {
	xcb_keycode_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_button_t = ubyte;

/**
 * @brief xcb_button_iterator_t
 **/
struct xcb_button_iterator_t {
	xcb_button_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_point_t
 **/
struct xcb_point_t {
	short x; /**<  */
	short y; /**<  */
}

/**
 * @brief xcb_point_iterator_t
 **/
struct xcb_point_iterator_t {
	xcb_point_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_rectangle_t
 **/
struct xcb_rectangle_t {
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

/**
 * @brief xcb_rectangle_iterator_t
 **/
struct xcb_rectangle_iterator_t {
	xcb_rectangle_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_arc_t
 **/
struct xcb_arc_t {
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	short angle1; /**<  */
	short angle2; /**<  */
}

/**
 * @brief xcb_arc_iterator_t
 **/
struct xcb_arc_iterator_t {
	xcb_arc_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_format_t
 **/
struct xcb_format_t {
	ubyte depth; /**<  */
	ubyte bits_per_pixel; /**<  */
	ubyte scanline_pad; /**<  */
	ubyte[5] pad0; /**<  */
}

/**
 * @brief xcb_format_iterator_t
 **/
struct xcb_format_iterator_t {
	xcb_format_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_visual_class_t {
	XCB_VISUAL_CLASS_STATIC_GRAY = 0,
	XCB_VISUAL_CLASS_GRAY_SCALE = 1,
	XCB_VISUAL_CLASS_STATIC_COLOR = 2,
	XCB_VISUAL_CLASS_PSEUDO_COLOR = 3,
	XCB_VISUAL_CLASS_TRUE_COLOR = 4,
	XCB_VISUAL_CLASS_DIRECT_COLOR = 5
}

alias XCB_VISUAL_CLASS_STATIC_GRAY = xcb_visual_class_t.XCB_VISUAL_CLASS_STATIC_GRAY;
alias XCB_VISUAL_CLASS_GRAY_SCALE = xcb_visual_class_t.XCB_VISUAL_CLASS_GRAY_SCALE;
alias XCB_VISUAL_CLASS_STATIC_COLOR = xcb_visual_class_t.XCB_VISUAL_CLASS_STATIC_COLOR;
alias XCB_VISUAL_CLASS_PSEUDO_COLOR = xcb_visual_class_t.XCB_VISUAL_CLASS_PSEUDO_COLOR;
alias XCB_VISUAL_CLASS_TRUE_COLOR = xcb_visual_class_t.XCB_VISUAL_CLASS_TRUE_COLOR;
alias XCB_VISUAL_CLASS_DIRECT_COLOR = xcb_visual_class_t.XCB_VISUAL_CLASS_DIRECT_COLOR;

/**
 * @brief xcb_visualtype_t
 **/
struct xcb_visualtype_t {
	xcb_visualid_t visual_id; /**<  */
	ubyte class_; /**<  */
	ubyte bits_per_rgb_value; /**<  */
	ushort colormap_entries; /**<  */
	uint red_mask; /**<  */
	uint green_mask; /**<  */
	uint blue_mask; /**<  */
	ubyte[4] pad0; /**<  */
}

/**
 * @brief xcb_visualtype_iterator_t
 **/
struct xcb_visualtype_iterator_t {
	xcb_visualtype_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_depth_t
 **/
struct xcb_depth_t {
	ubyte depth; /**<  */
	ubyte pad0; /**<  */
	ushort visuals_len; /**<  */
	ubyte[4] pad1; /**<  */
}

/**
 * @brief xcb_depth_iterator_t
 **/
struct xcb_depth_iterator_t {
	xcb_depth_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_event_mask_t {
	XCB_EVENT_MASK_NO_EVENT = 0,
	XCB_EVENT_MASK_KEY_PRESS = 1,
	XCB_EVENT_MASK_KEY_RELEASE = 2,
	XCB_EVENT_MASK_BUTTON_PRESS = 4,
	XCB_EVENT_MASK_BUTTON_RELEASE = 8,
	XCB_EVENT_MASK_ENTER_WINDOW = 16,
	XCB_EVENT_MASK_LEAVE_WINDOW = 32,
	XCB_EVENT_MASK_POINTER_MOTION = 64,
	XCB_EVENT_MASK_POINTER_MOTION_HINT = 128,
	XCB_EVENT_MASK_BUTTON_1_MOTION = 256,
	XCB_EVENT_MASK_BUTTON_2_MOTION = 512,
	XCB_EVENT_MASK_BUTTON_3_MOTION = 1024,
	XCB_EVENT_MASK_BUTTON_4_MOTION = 2048,
	XCB_EVENT_MASK_BUTTON_5_MOTION = 4096,
	XCB_EVENT_MASK_BUTTON_MOTION = 8192,
	XCB_EVENT_MASK_KEYMAP_STATE = 16384,
	XCB_EVENT_MASK_EXPOSURE = 32768,
	XCB_EVENT_MASK_VISIBILITY_CHANGE = 65536,
	XCB_EVENT_MASK_STRUCTURE_NOTIFY = 131072,
	XCB_EVENT_MASK_RESIZE_REDIRECT = 262144,
	XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY = 524288,
	XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT = 1048576,
	XCB_EVENT_MASK_FOCUS_CHANGE = 2097152,
	XCB_EVENT_MASK_PROPERTY_CHANGE = 4194304,
	XCB_EVENT_MASK_COLOR_MAP_CHANGE = 8388608,
	XCB_EVENT_MASK_OWNER_GRAB_BUTTON = 16777216
}

alias XCB_EVENT_MASK_NO_EVENT = xcb_event_mask_t.XCB_EVENT_MASK_NO_EVENT;
alias XCB_EVENT_MASK_KEY_PRESS = xcb_event_mask_t.XCB_EVENT_MASK_KEY_PRESS;
alias XCB_EVENT_MASK_KEY_RELEASE = xcb_event_mask_t.XCB_EVENT_MASK_KEY_RELEASE;
alias XCB_EVENT_MASK_BUTTON_PRESS = xcb_event_mask_t.XCB_EVENT_MASK_BUTTON_PRESS;
alias XCB_EVENT_MASK_BUTTON_RELEASE = xcb_event_mask_t.XCB_EVENT_MASK_BUTTON_RELEASE;
alias XCB_EVENT_MASK_ENTER_WINDOW = xcb_event_mask_t.XCB_EVENT_MASK_ENTER_WINDOW;
alias XCB_EVENT_MASK_LEAVE_WINDOW = xcb_event_mask_t.XCB_EVENT_MASK_LEAVE_WINDOW;
alias XCB_EVENT_MASK_POINTER_MOTION = xcb_event_mask_t.XCB_EVENT_MASK_POINTER_MOTION;
alias XCB_EVENT_MASK_POINTER_MOTION_HINT = xcb_event_mask_t.XCB_EVENT_MASK_POINTER_MOTION_HINT;
alias XCB_EVENT_MASK_BUTTON_1_MOTION = xcb_event_mask_t.XCB_EVENT_MASK_BUTTON_1_MOTION;
alias XCB_EVENT_MASK_BUTTON_2_MOTION = xcb_event_mask_t.XCB_EVENT_MASK_BUTTON_2_MOTION;
alias XCB_EVENT_MASK_BUTTON_3_MOTION = xcb_event_mask_t.XCB_EVENT_MASK_BUTTON_3_MOTION;
alias XCB_EVENT_MASK_BUTTON_4_MOTION = xcb_event_mask_t.XCB_EVENT_MASK_BUTTON_4_MOTION;
alias XCB_EVENT_MASK_BUTTON_5_MOTION = xcb_event_mask_t.XCB_EVENT_MASK_BUTTON_5_MOTION;
alias XCB_EVENT_MASK_BUTTON_MOTION = xcb_event_mask_t.XCB_EVENT_MASK_BUTTON_MOTION;
alias XCB_EVENT_MASK_KEYMAP_STATE = xcb_event_mask_t.XCB_EVENT_MASK_KEYMAP_STATE;
alias XCB_EVENT_MASK_EXPOSURE = xcb_event_mask_t.XCB_EVENT_MASK_EXPOSURE;
alias XCB_EVENT_MASK_VISIBILITY_CHANGE = xcb_event_mask_t.XCB_EVENT_MASK_VISIBILITY_CHANGE;
alias XCB_EVENT_MASK_STRUCTURE_NOTIFY = xcb_event_mask_t.XCB_EVENT_MASK_STRUCTURE_NOTIFY;
alias XCB_EVENT_MASK_RESIZE_REDIRECT = xcb_event_mask_t.XCB_EVENT_MASK_RESIZE_REDIRECT;
alias XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY = xcb_event_mask_t.XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY;
alias XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT = xcb_event_mask_t.XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT;
alias XCB_EVENT_MASK_FOCUS_CHANGE = xcb_event_mask_t.XCB_EVENT_MASK_FOCUS_CHANGE;
alias XCB_EVENT_MASK_PROPERTY_CHANGE = xcb_event_mask_t.XCB_EVENT_MASK_PROPERTY_CHANGE;
alias XCB_EVENT_MASK_COLOR_MAP_CHANGE = xcb_event_mask_t.XCB_EVENT_MASK_COLOR_MAP_CHANGE;
alias XCB_EVENT_MASK_OWNER_GRAB_BUTTON = xcb_event_mask_t.XCB_EVENT_MASK_OWNER_GRAB_BUTTON;

enum xcb_backing_store_t {
	XCB_BACKING_STORE_NOT_USEFUL = 0,
	XCB_BACKING_STORE_WHEN_MAPPED = 1,
	XCB_BACKING_STORE_ALWAYS = 2
}

alias XCB_BACKING_STORE_NOT_USEFUL = xcb_backing_store_t.XCB_BACKING_STORE_NOT_USEFUL;
alias XCB_BACKING_STORE_WHEN_MAPPED = xcb_backing_store_t.XCB_BACKING_STORE_WHEN_MAPPED;
alias XCB_BACKING_STORE_ALWAYS = xcb_backing_store_t.XCB_BACKING_STORE_ALWAYS;

/**
 * @brief xcb_screen_t
 **/
struct xcb_screen_t {
	xcb_window_t root; /**<  */
	xcb_colormap_t default_colormap; /**<  */
	uint white_pixel; /**<  */
	uint black_pixel; /**<  */
	uint current_input_masks; /**<  */
	ushort width_in_pixels; /**<  */
	ushort height_in_pixels; /**<  */
	ushort width_in_millimeters; /**<  */
	ushort height_in_millimeters; /**<  */
	ushort min_installed_maps; /**<  */
	ushort max_installed_maps; /**<  */
	xcb_visualid_t root_visual; /**<  */
	ubyte backing_stores; /**<  */
	ubyte save_unders; /**<  */
	ubyte root_depth; /**<  */
	ubyte allowed_depths_len; /**<  */
}

/**
 * @brief xcb_screen_iterator_t
 **/
struct xcb_screen_iterator_t {
	xcb_screen_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_setup_request_t
 **/
struct xcb_setup_request_t {
	ubyte byte_order; /**<  */
	ubyte pad0; /**<  */
	ushort protocol_major_version; /**<  */
	ushort protocol_minor_version; /**<  */
	ushort authorization_protocol_name_len; /**<  */
	ushort authorization_protocol_data_len; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_setup_request_iterator_t
 **/
struct xcb_setup_request_iterator_t {
	xcb_setup_request_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_setup_failed_t
 **/
struct xcb_setup_failed_t {
	ubyte status; /**<  */
	ubyte reason_len; /**<  */
	ushort protocol_major_version; /**<  */
	ushort protocol_minor_version; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_setup_failed_iterator_t
 **/
struct xcb_setup_failed_iterator_t {
	xcb_setup_failed_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_setup_authenticate_t
 **/
struct xcb_setup_authenticate_t {
	ubyte status; /**<  */
	ubyte[5] pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_setup_authenticate_iterator_t
 **/
struct xcb_setup_authenticate_iterator_t {
	xcb_setup_authenticate_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_image_order_t {
	XCB_IMAGE_ORDER_LSB_FIRST = 0,
	XCB_IMAGE_ORDER_MSB_FIRST = 1
}

alias XCB_IMAGE_ORDER_LSB_FIRST = xcb_image_order_t.XCB_IMAGE_ORDER_LSB_FIRST;
alias XCB_IMAGE_ORDER_MSB_FIRST = xcb_image_order_t.XCB_IMAGE_ORDER_MSB_FIRST;

/**
 * @brief xcb_setup_t
 **/
struct xcb_setup_t {
	ubyte status; /**<  */
	ubyte pad0; /**<  */
	ushort protocol_major_version; /**<  */
	ushort protocol_minor_version; /**<  */
	ushort length; /**<  */
	uint release_number; /**<  */
	uint resource_id_base; /**<  */
	uint resource_id_mask; /**<  */
	uint motion_buffer_size; /**<  */
	ushort vendor_len; /**<  */
	ushort maximum_request_length; /**<  */
	ubyte roots_len; /**<  */
	ubyte pixmap_formats_len; /**<  */
	ubyte image_byte_order; /**<  */
	ubyte bitmap_format_bit_order; /**<  */
	ubyte bitmap_format_scanline_unit; /**<  */
	ubyte bitmap_format_scanline_pad; /**<  */
	xcb_keycode_t min_keycode; /**<  */
	xcb_keycode_t max_keycode; /**<  */
	ubyte[4] pad1; /**<  */
}

/**
 * @brief xcb_setup_iterator_t
 **/
struct xcb_setup_iterator_t {
	xcb_setup_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_mod_mask_t {
	XCB_MOD_MASK_SHIFT = 1,
	XCB_MOD_MASK_LOCK = 2,
	XCB_MOD_MASK_CONTROL = 4,
	XCB_MOD_MASK_1 = 8,
	XCB_MOD_MASK_2 = 16,
	XCB_MOD_MASK_3 = 32,
	XCB_MOD_MASK_4 = 64,
	XCB_MOD_MASK_5 = 128,
	XCB_MOD_MASK_ANY = 32768
}

alias XCB_MOD_MASK_SHIFT = xcb_mod_mask_t.XCB_MOD_MASK_SHIFT;
alias XCB_MOD_MASK_LOCK = xcb_mod_mask_t.XCB_MOD_MASK_LOCK;
alias XCB_MOD_MASK_CONTROL = xcb_mod_mask_t.XCB_MOD_MASK_CONTROL;
alias XCB_MOD_MASK_1 = xcb_mod_mask_t.XCB_MOD_MASK_1;
alias XCB_MOD_MASK_2 = xcb_mod_mask_t.XCB_MOD_MASK_2;
alias XCB_MOD_MASK_3 = xcb_mod_mask_t.XCB_MOD_MASK_3;
alias XCB_MOD_MASK_4 = xcb_mod_mask_t.XCB_MOD_MASK_4;
alias XCB_MOD_MASK_5 = xcb_mod_mask_t.XCB_MOD_MASK_5;
alias XCB_MOD_MASK_ANY = xcb_mod_mask_t.XCB_MOD_MASK_ANY;

enum xcb_key_but_mask_t {
	XCB_KEY_BUT_MASK_SHIFT = 1,
	XCB_KEY_BUT_MASK_LOCK = 2,
	XCB_KEY_BUT_MASK_CONTROL = 4,
	XCB_KEY_BUT_MASK_MOD_1 = 8,
	XCB_KEY_BUT_MASK_MOD_2 = 16,
	XCB_KEY_BUT_MASK_MOD_3 = 32,
	XCB_KEY_BUT_MASK_MOD_4 = 64,
	XCB_KEY_BUT_MASK_MOD_5 = 128,
	XCB_KEY_BUT_MASK_BUTTON_1 = 256,
	XCB_KEY_BUT_MASK_BUTTON_2 = 512,
	XCB_KEY_BUT_MASK_BUTTON_3 = 1024,
	XCB_KEY_BUT_MASK_BUTTON_4 = 2048,
	XCB_KEY_BUT_MASK_BUTTON_5 = 4096
}

alias XCB_KEY_BUT_MASK_SHIFT = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_SHIFT;
alias XCB_KEY_BUT_MASK_LOCK = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_LOCK;
alias XCB_KEY_BUT_MASK_CONTROL = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_CONTROL;
alias XCB_KEY_BUT_MASK_MOD_1 = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_MOD_1;
alias XCB_KEY_BUT_MASK_MOD_2 = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_MOD_2;
alias XCB_KEY_BUT_MASK_MOD_3 = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_MOD_3;
alias XCB_KEY_BUT_MASK_MOD_4 = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_MOD_4;
alias XCB_KEY_BUT_MASK_MOD_5 = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_MOD_5;
alias XCB_KEY_BUT_MASK_BUTTON_1 = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_BUTTON_1;
alias XCB_KEY_BUT_MASK_BUTTON_2 = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_BUTTON_2;
alias XCB_KEY_BUT_MASK_BUTTON_3 = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_BUTTON_3;
alias XCB_KEY_BUT_MASK_BUTTON_4 = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_BUTTON_4;
alias XCB_KEY_BUT_MASK_BUTTON_5 = xcb_key_but_mask_t.XCB_KEY_BUT_MASK_BUTTON_5;

enum xcb_window_enum_t {
	XCB_WINDOW_NONE = 0
}

alias XCB_WINDOW_NONE = xcb_window_enum_t.XCB_WINDOW_NONE;

/** Opcode for xcb_key_press. */
enum XCB_KEY_PRESS = 2;

/**
 * @brief xcb_key_press_event_t
 **/
struct xcb_key_press_event_t {
	ubyte response_type; /**<  */
	xcb_keycode_t detail; /**<  */
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
	ubyte pad0; /**<  */
}

/** Opcode for xcb_key_release. */
enum XCB_KEY_RELEASE = 3;

alias xcb_key_release_event_t = xcb_key_press_event_t;

enum xcb_button_mask_t {
	XCB_BUTTON_MASK_1 = 256,
	XCB_BUTTON_MASK_2 = 512,
	XCB_BUTTON_MASK_3 = 1024,
	XCB_BUTTON_MASK_4 = 2048,
	XCB_BUTTON_MASK_5 = 4096,
	XCB_BUTTON_MASK_ANY = 32768
}

alias XCB_BUTTON_MASK_1 = xcb_button_mask_t.XCB_BUTTON_MASK_1;
alias XCB_BUTTON_MASK_2 = xcb_button_mask_t.XCB_BUTTON_MASK_2;
alias XCB_BUTTON_MASK_3 = xcb_button_mask_t.XCB_BUTTON_MASK_3;
alias XCB_BUTTON_MASK_4 = xcb_button_mask_t.XCB_BUTTON_MASK_4;
alias XCB_BUTTON_MASK_5 = xcb_button_mask_t.XCB_BUTTON_MASK_5;
alias XCB_BUTTON_MASK_ANY = xcb_button_mask_t.XCB_BUTTON_MASK_ANY;

/** Opcode for xcb_button_press. */
enum XCB_BUTTON_PRESS = 4;

/**
 * @brief xcb_button_press_event_t
 **/
struct xcb_button_press_event_t {
	ubyte response_type; /**<  */
	xcb_button_t detail; /**<  */
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
	ubyte pad0; /**<  */
}

/** Opcode for xcb_button_release. */
enum XCB_BUTTON_RELEASE = 5;

alias xcb_button_release_event_t = xcb_button_press_event_t;

enum xcb_motion_t {
	XCB_MOTION_NORMAL = 0,
	XCB_MOTION_HINT = 1
}

alias XCB_MOTION_NORMAL = xcb_motion_t.XCB_MOTION_NORMAL;
alias XCB_MOTION_HINT = xcb_motion_t.XCB_MOTION_HINT;

/** Opcode for xcb_motion_notify. */
enum XCB_MOTION_NOTIFY = 6;

/**
 * @brief xcb_motion_notify_event_t
 **/
struct xcb_motion_notify_event_t {
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
	ubyte pad0; /**<  */
}

enum xcb_notify_detail_t {
	XCB_NOTIFY_DETAIL_ANCESTOR = 0,
	XCB_NOTIFY_DETAIL_VIRTUAL = 1,
	XCB_NOTIFY_DETAIL_INFERIOR = 2,
	XCB_NOTIFY_DETAIL_NONLINEAR = 3,
	XCB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = 4,
	XCB_NOTIFY_DETAIL_POINTER = 5,
	XCB_NOTIFY_DETAIL_POINTER_ROOT = 6,
	XCB_NOTIFY_DETAIL_NONE = 7
}

alias XCB_NOTIFY_DETAIL_ANCESTOR = xcb_notify_detail_t.XCB_NOTIFY_DETAIL_ANCESTOR;
alias XCB_NOTIFY_DETAIL_VIRTUAL = xcb_notify_detail_t.XCB_NOTIFY_DETAIL_VIRTUAL;
alias XCB_NOTIFY_DETAIL_INFERIOR = xcb_notify_detail_t.XCB_NOTIFY_DETAIL_INFERIOR;
alias XCB_NOTIFY_DETAIL_NONLINEAR = xcb_notify_detail_t.XCB_NOTIFY_DETAIL_NONLINEAR;
alias XCB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = xcb_notify_detail_t.XCB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL;
alias XCB_NOTIFY_DETAIL_POINTER = xcb_notify_detail_t.XCB_NOTIFY_DETAIL_POINTER;
alias XCB_NOTIFY_DETAIL_POINTER_ROOT = xcb_notify_detail_t.XCB_NOTIFY_DETAIL_POINTER_ROOT;
alias XCB_NOTIFY_DETAIL_NONE = xcb_notify_detail_t.XCB_NOTIFY_DETAIL_NONE;

enum xcb_notify_mode_t {
	XCB_NOTIFY_MODE_NORMAL = 0,
	XCB_NOTIFY_MODE_GRAB = 1,
	XCB_NOTIFY_MODE_UNGRAB = 2,
	XCB_NOTIFY_MODE_WHILE_GRABBED = 3
}

alias XCB_NOTIFY_MODE_NORMAL = xcb_notify_mode_t.XCB_NOTIFY_MODE_NORMAL;
alias XCB_NOTIFY_MODE_GRAB = xcb_notify_mode_t.XCB_NOTIFY_MODE_GRAB;
alias XCB_NOTIFY_MODE_UNGRAB = xcb_notify_mode_t.XCB_NOTIFY_MODE_UNGRAB;
alias XCB_NOTIFY_MODE_WHILE_GRABBED = xcb_notify_mode_t.XCB_NOTIFY_MODE_WHILE_GRABBED;

/** Opcode for xcb_enter_notify. */
enum XCB_ENTER_NOTIFY = 7;

/**
 * @brief xcb_enter_notify_event_t
 **/
struct xcb_enter_notify_event_t {
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
	ubyte mode; /**<  */
	ubyte same_screen_focus; /**<  */
}

/** Opcode for xcb_leave_notify. */
enum XCB_LEAVE_NOTIFY = 8;

alias xcb_leave_notify_event_t = xcb_enter_notify_event_t;

/** Opcode for xcb_focus_in. */
enum XCB_FOCUS_IN = 9;

/**
 * @brief xcb_focus_in_event_t
 **/
struct xcb_focus_in_event_t {
	ubyte response_type; /**<  */
	ubyte detail; /**<  */
	ushort sequence; /**<  */
	xcb_window_t event; /**<  */
	ubyte mode; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_focus_out. */
enum XCB_FOCUS_OUT = 10;

alias xcb_focus_out_event_t = xcb_focus_in_event_t;

/** Opcode for xcb_keymap_notify. */
enum XCB_KEYMAP_NOTIFY = 11;

/**
 * @brief xcb_keymap_notify_event_t
 **/
struct xcb_keymap_notify_event_t {
	ubyte response_type; /**<  */
	ubyte[31] keys; /**<  */
}

/** Opcode for xcb_expose. */
enum XCB_EXPOSE = 12;

/**
 * @brief xcb_expose_event_t
 **/
struct xcb_expose_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t window; /**<  */
	ushort x; /**<  */
	ushort y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort count; /**<  */
	ubyte[2] pad1; /**<  */
}

/** Opcode for xcb_graphics_exposure. */
enum XCB_GRAPHICS_EXPOSURE = 13;

/**
 * @brief xcb_graphics_exposure_event_t
 **/
struct xcb_graphics_exposure_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_drawable_t drawable; /**<  */
	ushort x; /**<  */
	ushort y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort minor_opcode; /**<  */
	ushort count; /**<  */
	ubyte major_opcode; /**<  */
	ubyte[3] pad1; /**<  */
}

/** Opcode for xcb_no_exposure. */
enum XCB_NO_EXPOSURE = 14;

/**
 * @brief xcb_no_exposure_event_t
 **/
struct xcb_no_exposure_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_drawable_t drawable; /**<  */
	ushort minor_opcode; /**<  */
	ubyte major_opcode; /**<  */
	ubyte pad1; /**<  */
}

enum xcb_visibility_t {
	XCB_VISIBILITY_UNOBSCURED = 0,
	XCB_VISIBILITY_PARTIALLY_OBSCURED = 1,
	XCB_VISIBILITY_FULLY_OBSCURED = 2
}

alias XCB_VISIBILITY_UNOBSCURED = xcb_visibility_t.XCB_VISIBILITY_UNOBSCURED;
alias XCB_VISIBILITY_PARTIALLY_OBSCURED = xcb_visibility_t.XCB_VISIBILITY_PARTIALLY_OBSCURED;
alias XCB_VISIBILITY_FULLY_OBSCURED = xcb_visibility_t.XCB_VISIBILITY_FULLY_OBSCURED;

/** Opcode for xcb_visibility_notify. */
enum XCB_VISIBILITY_NOTIFY = 15;

/**
 * @brief xcb_visibility_notify_event_t
 **/
struct xcb_visibility_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t window; /**<  */
	ubyte state; /**<  */
	ubyte[3] pad1; /**<  */
}

/** Opcode for xcb_create_notify. */
enum XCB_CREATE_NOTIFY = 16;

/**
 * @brief xcb_create_notify_event_t
 **/
struct xcb_create_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t parent; /**<  */
	xcb_window_t window; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort border_width; /**<  */
	ubyte override_redirect; /**<  */
	ubyte pad1; /**<  */
}

/** Opcode for xcb_destroy_notify. */
enum XCB_DESTROY_NOTIFY = 17;

/**
 * @brief xcb_destroy_notify_event_t
 **/
struct xcb_destroy_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t window; /**<  */
}

/** Opcode for xcb_unmap_notify. */
enum XCB_UNMAP_NOTIFY = 18;

/**
 * @brief xcb_unmap_notify_event_t
 **/
struct xcb_unmap_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t window; /**<  */
	ubyte from_configure; /**<  */
	ubyte[3] pad1; /**<  */
}

/** Opcode for xcb_map_notify. */
enum XCB_MAP_NOTIFY = 19;

/**
 * @brief xcb_map_notify_event_t
 **/
struct xcb_map_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t window; /**<  */
	ubyte override_redirect; /**<  */
	ubyte[3] pad1; /**<  */
}

/** Opcode for xcb_map_request. */
enum XCB_MAP_REQUEST = 20;

/**
 * @brief xcb_map_request_event_t
 **/
struct xcb_map_request_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t parent; /**<  */
	xcb_window_t window; /**<  */
}

/** Opcode for xcb_reparent_notify. */
enum XCB_REPARENT_NOTIFY = 21;

/**
 * @brief xcb_reparent_notify_event_t
 **/
struct xcb_reparent_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t window; /**<  */
	xcb_window_t parent; /**<  */
	short x; /**<  */
	short y; /**<  */
	ubyte override_redirect; /**<  */
	ubyte[3] pad1; /**<  */
}

/** Opcode for xcb_configure_notify. */
enum XCB_CONFIGURE_NOTIFY = 22;

/**
 * @brief xcb_configure_notify_event_t
 **/
struct xcb_configure_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t window; /**<  */
	xcb_window_t above_sibling; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort border_width; /**<  */
	ubyte override_redirect; /**<  */
	ubyte pad1; /**<  */
}

/** Opcode for xcb_configure_request. */
enum XCB_CONFIGURE_REQUEST = 23;

/**
 * @brief xcb_configure_request_event_t
 **/
struct xcb_configure_request_event_t {
	ubyte response_type; /**<  */
	ubyte stack_mode; /**<  */
	ushort sequence; /**<  */
	xcb_window_t parent; /**<  */
	xcb_window_t window; /**<  */
	xcb_window_t sibling; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort border_width; /**<  */
	ushort value_mask; /**<  */
}

/** Opcode for xcb_gravity_notify. */
enum XCB_GRAVITY_NOTIFY = 24;

/**
 * @brief xcb_gravity_notify_event_t
 **/
struct xcb_gravity_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t window; /**<  */
	short x; /**<  */
	short y; /**<  */
}

/** Opcode for xcb_resize_request. */
enum XCB_RESIZE_REQUEST = 25;

/**
 * @brief xcb_resize_request_event_t
 **/
struct xcb_resize_request_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t window; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

enum xcb_place_t {
	XCB_PLACE_ON_TOP = 0,
	/**< The window is now on top of all siblings. */

		XCB_PLACE_ON_BOTTOM = 1/**< The window is now below all siblings. */

}

alias XCB_PLACE_ON_TOP = xcb_place_t.XCB_PLACE_ON_TOP;
alias XCB_PLACE_ON_BOTTOM = xcb_place_t.XCB_PLACE_ON_BOTTOM;

/** Opcode for xcb_circulate_notify. */
enum XCB_CIRCULATE_NOTIFY = 26;

/**
 * @brief xcb_circulate_notify_event_t
 **/
struct xcb_circulate_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t event; /**<  */
	xcb_window_t window; /**<  */
	ubyte[4] pad1; /**<  */
	ubyte place; /**<  */
	ubyte[3] pad2; /**<  */
}

/** Opcode for xcb_circulate_request. */
enum XCB_CIRCULATE_REQUEST = 27;

alias xcb_circulate_request_event_t = xcb_circulate_notify_event_t;

enum xcb_property_t {
	XCB_PROPERTY_NEW_VALUE = 0,
	XCB_PROPERTY_DELETE = 1
}

alias XCB_PROPERTY_NEW_VALUE = xcb_property_t.XCB_PROPERTY_NEW_VALUE;
alias XCB_PROPERTY_DELETE = xcb_property_t.XCB_PROPERTY_DELETE;

/** Opcode for xcb_property_notify. */
enum XCB_PROPERTY_NOTIFY = 28;

/**
 * @brief xcb_property_notify_event_t
 **/
struct xcb_property_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t window; /**<  */
	xcb_atom_t atom; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte state; /**<  */
	ubyte[3] pad1; /**<  */
}

/** Opcode for xcb_selection_clear. */
enum XCB_SELECTION_CLEAR = 29;

/**
 * @brief xcb_selection_clear_event_t
 **/
struct xcb_selection_clear_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_window_t owner; /**<  */
	xcb_atom_t selection; /**<  */
}

enum xcb_time_t {
	XCB_TIME_CURRENT_TIME = 0
}

alias XCB_TIME_CURRENT_TIME = xcb_time_t.XCB_TIME_CURRENT_TIME;

enum xcb_atom_enum_t {
	XCB_ATOM_NONE = 0,
	XCB_ATOM_ANY = 0,
	XCB_ATOM_PRIMARY = 1,
	XCB_ATOM_SECONDARY = 2,
	XCB_ATOM_ARC = 3,
	XCB_ATOM_ATOM = 4,
	XCB_ATOM_BITMAP = 5,
	XCB_ATOM_CARDINAL = 6,
	XCB_ATOM_COLORMAP = 7,
	XCB_ATOM_CURSOR = 8,
	XCB_ATOM_CUT_BUFFER0 = 9,
	XCB_ATOM_CUT_BUFFER1 = 10,
	XCB_ATOM_CUT_BUFFER2 = 11,
	XCB_ATOM_CUT_BUFFER3 = 12,
	XCB_ATOM_CUT_BUFFER4 = 13,
	XCB_ATOM_CUT_BUFFER5 = 14,
	XCB_ATOM_CUT_BUFFER6 = 15,
	XCB_ATOM_CUT_BUFFER7 = 16,
	XCB_ATOM_DRAWABLE = 17,
	XCB_ATOM_FONT = 18,
	XCB_ATOM_INTEGER = 19,
	XCB_ATOM_PIXMAP = 20,
	XCB_ATOM_POINT = 21,
	XCB_ATOM_RECTANGLE = 22,
	XCB_ATOM_RESOURCE_MANAGER = 23,
	XCB_ATOM_RGB_COLOR_MAP = 24,
	XCB_ATOM_RGB_BEST_MAP = 25,
	XCB_ATOM_RGB_BLUE_MAP = 26,
	XCB_ATOM_RGB_DEFAULT_MAP = 27,
	XCB_ATOM_RGB_GRAY_MAP = 28,
	XCB_ATOM_RGB_GREEN_MAP = 29,
	XCB_ATOM_RGB_RED_MAP = 30,
	XCB_ATOM_STRING = 31,
	XCB_ATOM_VISUALID = 32,
	XCB_ATOM_WINDOW = 33,
	XCB_ATOM_WM_COMMAND = 34,
	XCB_ATOM_WM_HINTS = 35,
	XCB_ATOM_WM_CLIENT_MACHINE = 36,
	XCB_ATOM_WM_ICON_NAME = 37,
	XCB_ATOM_WM_ICON_SIZE = 38,
	XCB_ATOM_WM_NAME = 39,
	XCB_ATOM_WM_NORMAL_HINTS = 40,
	XCB_ATOM_WM_SIZE_HINTS = 41,
	XCB_ATOM_WM_ZOOM_HINTS = 42,
	XCB_ATOM_MIN_SPACE = 43,
	XCB_ATOM_NORM_SPACE = 44,
	XCB_ATOM_MAX_SPACE = 45,
	XCB_ATOM_END_SPACE = 46,
	XCB_ATOM_SUPERSCRIPT_X = 47,
	XCB_ATOM_SUPERSCRIPT_Y = 48,
	XCB_ATOM_SUBSCRIPT_X = 49,
	XCB_ATOM_SUBSCRIPT_Y = 50,
	XCB_ATOM_UNDERLINE_POSITION = 51,
	XCB_ATOM_UNDERLINE_THICKNESS = 52,
	XCB_ATOM_STRIKEOUT_ASCENT = 53,
	XCB_ATOM_STRIKEOUT_DESCENT = 54,
	XCB_ATOM_ITALIC_ANGLE = 55,
	XCB_ATOM_X_HEIGHT = 56,
	XCB_ATOM_QUAD_WIDTH = 57,
	XCB_ATOM_WEIGHT = 58,
	XCB_ATOM_POINT_SIZE = 59,
	XCB_ATOM_RESOLUTION = 60,
	XCB_ATOM_COPYRIGHT = 61,
	XCB_ATOM_NOTICE = 62,
	XCB_ATOM_FONT_NAME = 63,
	XCB_ATOM_FAMILY_NAME = 64,
	XCB_ATOM_FULL_NAME = 65,
	XCB_ATOM_CAP_HEIGHT = 66,
	XCB_ATOM_WM_CLASS = 67,
	XCB_ATOM_WM_TRANSIENT_FOR = 68
}

alias XCB_ATOM_NONE = xcb_atom_enum_t.XCB_ATOM_NONE;
alias XCB_ATOM_ANY = xcb_atom_enum_t.XCB_ATOM_ANY;
alias XCB_ATOM_PRIMARY = xcb_atom_enum_t.XCB_ATOM_PRIMARY;
alias XCB_ATOM_SECONDARY = xcb_atom_enum_t.XCB_ATOM_SECONDARY;
alias XCB_ATOM_ARC = xcb_atom_enum_t.XCB_ATOM_ARC;
alias XCB_ATOM_ATOM = xcb_atom_enum_t.XCB_ATOM_ATOM;
alias XCB_ATOM_BITMAP = xcb_atom_enum_t.XCB_ATOM_BITMAP;
alias XCB_ATOM_CARDINAL = xcb_atom_enum_t.XCB_ATOM_CARDINAL;
alias XCB_ATOM_COLORMAP = xcb_atom_enum_t.XCB_ATOM_COLORMAP;
alias XCB_ATOM_CURSOR = xcb_atom_enum_t.XCB_ATOM_CURSOR;
alias XCB_ATOM_CUT_BUFFER0 = xcb_atom_enum_t.XCB_ATOM_CUT_BUFFER0;
alias XCB_ATOM_CUT_BUFFER1 = xcb_atom_enum_t.XCB_ATOM_CUT_BUFFER1;
alias XCB_ATOM_CUT_BUFFER2 = xcb_atom_enum_t.XCB_ATOM_CUT_BUFFER2;
alias XCB_ATOM_CUT_BUFFER3 = xcb_atom_enum_t.XCB_ATOM_CUT_BUFFER3;
alias XCB_ATOM_CUT_BUFFER4 = xcb_atom_enum_t.XCB_ATOM_CUT_BUFFER4;
alias XCB_ATOM_CUT_BUFFER5 = xcb_atom_enum_t.XCB_ATOM_CUT_BUFFER5;
alias XCB_ATOM_CUT_BUFFER6 = xcb_atom_enum_t.XCB_ATOM_CUT_BUFFER6;
alias XCB_ATOM_CUT_BUFFER7 = xcb_atom_enum_t.XCB_ATOM_CUT_BUFFER7;
alias XCB_ATOM_DRAWABLE = xcb_atom_enum_t.XCB_ATOM_DRAWABLE;
alias XCB_ATOM_FONT = xcb_atom_enum_t.XCB_ATOM_FONT;
alias XCB_ATOM_INTEGER = xcb_atom_enum_t.XCB_ATOM_INTEGER;
alias XCB_ATOM_PIXMAP = xcb_atom_enum_t.XCB_ATOM_PIXMAP;
alias XCB_ATOM_POINT = xcb_atom_enum_t.XCB_ATOM_POINT;
alias XCB_ATOM_RECTANGLE = xcb_atom_enum_t.XCB_ATOM_RECTANGLE;
alias XCB_ATOM_RESOURCE_MANAGER = xcb_atom_enum_t.XCB_ATOM_RESOURCE_MANAGER;
alias XCB_ATOM_RGB_COLOR_MAP = xcb_atom_enum_t.XCB_ATOM_RGB_COLOR_MAP;
alias XCB_ATOM_RGB_BEST_MAP = xcb_atom_enum_t.XCB_ATOM_RGB_BEST_MAP;
alias XCB_ATOM_RGB_BLUE_MAP = xcb_atom_enum_t.XCB_ATOM_RGB_BLUE_MAP;
alias XCB_ATOM_RGB_DEFAULT_MAP = xcb_atom_enum_t.XCB_ATOM_RGB_DEFAULT_MAP;
alias XCB_ATOM_RGB_GRAY_MAP = xcb_atom_enum_t.XCB_ATOM_RGB_GRAY_MAP;
alias XCB_ATOM_RGB_GREEN_MAP = xcb_atom_enum_t.XCB_ATOM_RGB_GREEN_MAP;
alias XCB_ATOM_RGB_RED_MAP = xcb_atom_enum_t.XCB_ATOM_RGB_RED_MAP;
alias XCB_ATOM_STRING = xcb_atom_enum_t.XCB_ATOM_STRING;
alias XCB_ATOM_VISUALID = xcb_atom_enum_t.XCB_ATOM_VISUALID;
alias XCB_ATOM_WINDOW = xcb_atom_enum_t.XCB_ATOM_WINDOW;
alias XCB_ATOM_WM_COMMAND = xcb_atom_enum_t.XCB_ATOM_WM_COMMAND;
alias XCB_ATOM_WM_HINTS = xcb_atom_enum_t.XCB_ATOM_WM_HINTS;
alias XCB_ATOM_WM_CLIENT_MACHINE = xcb_atom_enum_t.XCB_ATOM_WM_CLIENT_MACHINE;
alias XCB_ATOM_WM_ICON_NAME = xcb_atom_enum_t.XCB_ATOM_WM_ICON_NAME;
alias XCB_ATOM_WM_ICON_SIZE = xcb_atom_enum_t.XCB_ATOM_WM_ICON_SIZE;
alias XCB_ATOM_WM_NAME = xcb_atom_enum_t.XCB_ATOM_WM_NAME;
alias XCB_ATOM_WM_NORMAL_HINTS = xcb_atom_enum_t.XCB_ATOM_WM_NORMAL_HINTS;
alias XCB_ATOM_WM_SIZE_HINTS = xcb_atom_enum_t.XCB_ATOM_WM_SIZE_HINTS;
alias XCB_ATOM_WM_ZOOM_HINTS = xcb_atom_enum_t.XCB_ATOM_WM_ZOOM_HINTS;
alias XCB_ATOM_MIN_SPACE = xcb_atom_enum_t.XCB_ATOM_MIN_SPACE;
alias XCB_ATOM_NORM_SPACE = xcb_atom_enum_t.XCB_ATOM_NORM_SPACE;
alias XCB_ATOM_MAX_SPACE = xcb_atom_enum_t.XCB_ATOM_MAX_SPACE;
alias XCB_ATOM_END_SPACE = xcb_atom_enum_t.XCB_ATOM_END_SPACE;
alias XCB_ATOM_SUPERSCRIPT_X = xcb_atom_enum_t.XCB_ATOM_SUPERSCRIPT_X;
alias XCB_ATOM_SUPERSCRIPT_Y = xcb_atom_enum_t.XCB_ATOM_SUPERSCRIPT_Y;
alias XCB_ATOM_SUBSCRIPT_X = xcb_atom_enum_t.XCB_ATOM_SUBSCRIPT_X;
alias XCB_ATOM_SUBSCRIPT_Y = xcb_atom_enum_t.XCB_ATOM_SUBSCRIPT_Y;
alias XCB_ATOM_UNDERLINE_POSITION = xcb_atom_enum_t.XCB_ATOM_UNDERLINE_POSITION;
alias XCB_ATOM_UNDERLINE_THICKNESS = xcb_atom_enum_t.XCB_ATOM_UNDERLINE_THICKNESS;
alias XCB_ATOM_STRIKEOUT_ASCENT = xcb_atom_enum_t.XCB_ATOM_STRIKEOUT_ASCENT;
alias XCB_ATOM_STRIKEOUT_DESCENT = xcb_atom_enum_t.XCB_ATOM_STRIKEOUT_DESCENT;
alias XCB_ATOM_ITALIC_ANGLE = xcb_atom_enum_t.XCB_ATOM_ITALIC_ANGLE;
alias XCB_ATOM_X_HEIGHT = xcb_atom_enum_t.XCB_ATOM_X_HEIGHT;
alias XCB_ATOM_QUAD_WIDTH = xcb_atom_enum_t.XCB_ATOM_QUAD_WIDTH;
alias XCB_ATOM_WEIGHT = xcb_atom_enum_t.XCB_ATOM_WEIGHT;
alias XCB_ATOM_POINT_SIZE = xcb_atom_enum_t.XCB_ATOM_POINT_SIZE;
alias XCB_ATOM_RESOLUTION = xcb_atom_enum_t.XCB_ATOM_RESOLUTION;
alias XCB_ATOM_COPYRIGHT = xcb_atom_enum_t.XCB_ATOM_COPYRIGHT;
alias XCB_ATOM_NOTICE = xcb_atom_enum_t.XCB_ATOM_NOTICE;
alias XCB_ATOM_FONT_NAME = xcb_atom_enum_t.XCB_ATOM_FONT_NAME;
alias XCB_ATOM_FAMILY_NAME = xcb_atom_enum_t.XCB_ATOM_FAMILY_NAME;
alias XCB_ATOM_FULL_NAME = xcb_atom_enum_t.XCB_ATOM_FULL_NAME;
alias XCB_ATOM_CAP_HEIGHT = xcb_atom_enum_t.XCB_ATOM_CAP_HEIGHT;
alias XCB_ATOM_WM_CLASS = xcb_atom_enum_t.XCB_ATOM_WM_CLASS;
alias XCB_ATOM_WM_TRANSIENT_FOR = xcb_atom_enum_t.XCB_ATOM_WM_TRANSIENT_FOR;

/** Opcode for xcb_selection_request. */
enum XCB_SELECTION_REQUEST = 30;

/**
 * @brief xcb_selection_request_event_t
 **/
struct xcb_selection_request_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_window_t owner; /**<  */
	xcb_window_t requestor; /**<  */
	xcb_atom_t selection; /**<  */
	xcb_atom_t target; /**<  */
	xcb_atom_t property; /**<  */
}

/** Opcode for xcb_selection_notify. */
enum XCB_SELECTION_NOTIFY = 31;

/**
 * @brief xcb_selection_notify_event_t
 **/
struct xcb_selection_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_window_t requestor; /**<  */
	xcb_atom_t selection; /**<  */
	xcb_atom_t target; /**<  */
	xcb_atom_t property; /**<  */
}

enum xcb_colormap_state_t {
	XCB_COLORMAP_STATE_UNINSTALLED = 0,
	/**< The colormap was uninstalled. */

		XCB_COLORMAP_STATE_INSTALLED = 1/**< The colormap was installed. */

}

alias XCB_COLORMAP_STATE_UNINSTALLED = xcb_colormap_state_t.XCB_COLORMAP_STATE_UNINSTALLED;
alias XCB_COLORMAP_STATE_INSTALLED = xcb_colormap_state_t.XCB_COLORMAP_STATE_INSTALLED;

enum xcb_colormap_enum_t {
	XCB_COLORMAP_NONE = 0
}

alias XCB_COLORMAP_NONE = xcb_colormap_enum_t.XCB_COLORMAP_NONE;

/** Opcode for xcb_colormap_notify. */
enum XCB_COLORMAP_NOTIFY = 32;

/**
 * @brief xcb_colormap_notify_event_t
 **/
struct xcb_colormap_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	xcb_window_t window; /**<  */
	xcb_colormap_t colormap; /**<  */
	ubyte new_; /**<  */
	ubyte state; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_client_message_data_t
 **/
union xcb_client_message_data_t {
	ubyte[20] data8; /**<  */
	ushort[10] data16; /**<  */
	uint[5] data32; /**<  */
}

/**
 * @brief xcb_client_message_data_iterator_t
 **/
struct xcb_client_message_data_iterator_t {
	xcb_client_message_data_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_client_message. */
enum XCB_CLIENT_MESSAGE = 33;

/**
 * @brief xcb_client_message_event_t
 **/
struct xcb_client_message_event_t {
	ubyte response_type; /**<  */
	ubyte format; /**<  */
	ushort sequence; /**<  */
	xcb_window_t window; /**<  */
	xcb_atom_t type; /**<  */
	xcb_client_message_data_t data; /**<  */
}

enum xcb_mapping_t {
	XCB_MAPPING_MODIFIER = 0,
	XCB_MAPPING_KEYBOARD = 1,
	XCB_MAPPING_POINTER = 2
}

alias XCB_MAPPING_MODIFIER = xcb_mapping_t.XCB_MAPPING_MODIFIER;
alias XCB_MAPPING_KEYBOARD = xcb_mapping_t.XCB_MAPPING_KEYBOARD;
alias XCB_MAPPING_POINTER = xcb_mapping_t.XCB_MAPPING_POINTER;

/** Opcode for xcb_mapping_notify. */
enum XCB_MAPPING_NOTIFY = 34;

/**
 * @brief xcb_mapping_notify_event_t
 **/
struct xcb_mapping_notify_event_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	ubyte request; /**<  */
	xcb_keycode_t first_keycode; /**<  */
	ubyte count; /**<  */
	ubyte pad1; /**<  */
}

/** Opcode for xcb_ge_generic. */
enum XCB_GE_GENERIC = 35;

/**
 * @brief xcb_ge_generic_event_t
 **/
struct xcb_ge_generic_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	ubyte[22] pad0; /**<  */
	uint full_sequence; /**<  */
}

/** Opcode for xcb_request. */
enum XCB_REQUEST = 1;

/**
 * @brief xcb_request_error_t
 **/
struct xcb_request_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
	uint bad_value; /**<  */
	ushort minor_opcode; /**<  */
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
}

/** Opcode for xcb_value. */
enum XCB_VALUE = 2;

/**
 * @brief xcb_value_error_t
 **/
struct xcb_value_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
	uint bad_value; /**<  */
	ushort minor_opcode; /**<  */
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
}

/** Opcode for xcb_window. */
enum XCB_WINDOW = 3;

alias xcb_window_error_t = xcb_value_error_t;

/** Opcode for xcb_pixmap. */
enum XCB_PIXMAP = 4;

alias xcb_pixmap_error_t = xcb_value_error_t;

/** Opcode for xcb_atom. */
enum XCB_ATOM = 5;

alias xcb_atom_error_t = xcb_value_error_t;

/** Opcode for xcb_cursor. */
enum XCB_CURSOR = 6;

alias xcb_cursor_error_t = xcb_value_error_t;

/** Opcode for xcb_font. */
enum XCB_FONT = 7;

alias xcb_font_error_t = xcb_value_error_t;

/** Opcode for xcb_match. */
enum XCB_MATCH = 8;

alias xcb_match_error_t = xcb_request_error_t;

/** Opcode for xcb_drawable. */
enum XCB_DRAWABLE = 9;

alias xcb_drawable_error_t = xcb_value_error_t;

/** Opcode for xcb_access. */
enum XCB_ACCESS = 10;

alias xcb_access_error_t = xcb_request_error_t;

/** Opcode for xcb_alloc. */
enum XCB_ALLOC = 11;

alias xcb_alloc_error_t = xcb_request_error_t;

/** Opcode for xcb_colormap. */
enum XCB_COLORMAP = 12;

alias xcb_colormap_error_t = xcb_value_error_t;

/** Opcode for xcb_g_context. */
enum XCB_G_CONTEXT = 13;

alias xcb_g_context_error_t = xcb_value_error_t;

/** Opcode for xcb_id_choice. */
enum XCB_ID_CHOICE = 14;

alias xcb_id_choice_error_t = xcb_value_error_t;

/** Opcode for xcb_name. */
enum XCB_NAME = 15;

alias xcb_name_error_t = xcb_request_error_t;

/** Opcode for xcb_length. */
enum XCB_LENGTH = 16;

alias xcb_length_error_t = xcb_request_error_t;

/** Opcode for xcb_implementation. */
enum XCB_IMPLEMENTATION = 17;

alias xcb_implementation_error_t = xcb_request_error_t;

enum xcb_window_class_t {
	XCB_WINDOW_CLASS_COPY_FROM_PARENT = 0,
	XCB_WINDOW_CLASS_INPUT_OUTPUT = 1,
	XCB_WINDOW_CLASS_INPUT_ONLY = 2
}

alias XCB_WINDOW_CLASS_COPY_FROM_PARENT = xcb_window_class_t.XCB_WINDOW_CLASS_COPY_FROM_PARENT;
alias XCB_WINDOW_CLASS_INPUT_OUTPUT = xcb_window_class_t.XCB_WINDOW_CLASS_INPUT_OUTPUT;
alias XCB_WINDOW_CLASS_INPUT_ONLY = xcb_window_class_t.XCB_WINDOW_CLASS_INPUT_ONLY;

enum xcb_cw_t {
	XCB_CW_BACK_PIXMAP = 1,
	/**< Overrides the default background-pixmap. The background pixmap and window must
have the same root and same depth. Any size pixmap can be used, although some
sizes may be faster than others.

If `XCB_BACK_PIXMAP_NONE` is specified, the window has no defined background.
The server may fill the contents with the previous screen contents or with
contents of its own choosing.

If `XCB_BACK_PIXMAP_PARENT_RELATIVE` is specified, the parent's background is
used, but the window must have the same depth as the parent (or a Match error
results).   The parent's background is tracked, and the current version is
used each time the window background is required. */

		XCB_CW_BACK_PIXEL = 2,/**< Overrides `BackPixmap`. A pixmap of undefined size filled with the specified
background pixel is used for the background. Range-checking is not performed,
the background pixel is truncated to the appropriate number of bits. */

		XCB_CW_BORDER_PIXMAP = 4,/**< Overrides the default border-pixmap. The border pixmap and window must have the
same root and the same depth. Any size pixmap can be used, although some sizes
may be faster than others.

The special value `XCB_COPY_FROM_PARENT` means the parent's border pixmap is
copied (subsequent changes to the parent's border attribute do not affect the
child), but the window must have the same depth as the parent. */

		XCB_CW_BORDER_PIXEL = 8,/**< Overrides `BorderPixmap`. A pixmap of undefined size filled with the specified
border pixel is used for the border. Range checking is not performed on the
border-pixel value, it is truncated to the appropriate number of bits. */

		XCB_CW_BIT_GRAVITY = 16,
		/**< Defines which region of the window should be retained if the window is resized. */

		XCB_CW_WIN_GRAVITY = 32,/**< Defines how the window should be repositioned if the parent is resized (see
`ConfigureWindow`). */

		XCB_CW_BACKING_STORE = 64,/**< A backing-store of `WhenMapped` advises the server that maintaining contents of
obscured regions when the window is mapped would be beneficial. A backing-store
of `Always` advises the server that maintaining contents even when the window
is unmapped would be beneficial. In this case, the server may generate an
exposure event when the window is created. A value of `NotUseful` advises the
server that maintaining contents is unnecessary, although a server may still
choose to maintain contents while the window is mapped. Note that if the server
maintains contents, then the server should maintain complete contents not just
the region within the parent boundaries, even if the window is larger than its
parent. While the server maintains contents, exposure events will not normally
be generated, but the server may stop maintaining contents at any time. */

		XCB_CW_BACKING_PLANES = 128,/**< The backing-planes indicates (with bits set to 1) which bit planes of the
window hold dynamic data that must be preserved in backing-stores and during
save-unders. */

		XCB_CW_BACKING_PIXEL = 256,
		/**< The backing-pixel specifies what value to use in planes not covered by
backing-planes. The server is free to save only the specified bit planes in the
backing-store or save-under and regenerate the remaining planes with the
specified pixel value. Any bits beyond the specified depth of the window in
these values are simply ignored. */

		XCB_CW_OVERRIDE_REDIRECT = 512,/**< The override-redirect specifies whether map and configure requests on this
window should override a SubstructureRedirect on the parent, typically to
inform a window manager not to tamper with the window. */

		XCB_CW_SAVE_UNDER = 1024,/**< If 1, the server is advised that when this window is mapped, saving the
contents of windows it obscures would be beneficial. */

		XCB_CW_EVENT_MASK = 2048,/**< The event-mask defines which events the client is interested in for this window
(or for some event types, inferiors of the window). */

		XCB_CW_DONT_PROPAGATE = 4096,
		/**< The do-not-propagate-mask defines which events should not be propagated to
ancestor windows when no client has the event type selected in this window. */

		XCB_CW_COLORMAP = 8192,/**< The colormap specifies the colormap that best reflects the true colors of the window. Servers
capable of supporting multiple hardware colormaps may use this information, and window man-
agers may use it for InstallColormap requests. The colormap must have the same visual type
and root as the window (or a Match error results). If CopyFromParent is specified, the parent's
colormap is copied (subsequent changes to the parent's colormap attribute do not affect the child).
However, the window must have the same visual type as the parent (or a Match error results),
and the parent must not have a colormap of None (or a Match error results). For an explanation
of None, see FreeColormap request. The colormap is copied by sharing the colormap object
between the child and the parent, not by making a complete copy of the colormap contents. */

		XCB_CW_CURSOR = 16384/**< If a cursor is specified, it will be used whenever the pointer is in the window. If None is speci-
fied, the parent's cursor will be used when the pointer is in the window, and any change in the
parent's cursor will cause an immediate change in the displayed cursor. */

}

alias XCB_CW_BACK_PIXMAP = xcb_cw_t.XCB_CW_BACK_PIXMAP;
alias XCB_CW_BACK_PIXEL = xcb_cw_t.XCB_CW_BACK_PIXEL;
alias XCB_CW_BORDER_PIXMAP = xcb_cw_t.XCB_CW_BORDER_PIXMAP;
alias XCB_CW_BORDER_PIXEL = xcb_cw_t.XCB_CW_BORDER_PIXEL;
alias XCB_CW_BIT_GRAVITY = xcb_cw_t.XCB_CW_BIT_GRAVITY;
alias XCB_CW_WIN_GRAVITY = xcb_cw_t.XCB_CW_WIN_GRAVITY;
alias XCB_CW_BACKING_STORE = xcb_cw_t.XCB_CW_BACKING_STORE;
alias XCB_CW_BACKING_PLANES = xcb_cw_t.XCB_CW_BACKING_PLANES;
alias XCB_CW_BACKING_PIXEL = xcb_cw_t.XCB_CW_BACKING_PIXEL;
alias XCB_CW_OVERRIDE_REDIRECT = xcb_cw_t.XCB_CW_OVERRIDE_REDIRECT;
alias XCB_CW_SAVE_UNDER = xcb_cw_t.XCB_CW_SAVE_UNDER;
alias XCB_CW_EVENT_MASK = xcb_cw_t.XCB_CW_EVENT_MASK;
alias XCB_CW_DONT_PROPAGATE = xcb_cw_t.XCB_CW_DONT_PROPAGATE;
alias XCB_CW_COLORMAP = xcb_cw_t.XCB_CW_COLORMAP;
alias XCB_CW_CURSOR = xcb_cw_t.XCB_CW_CURSOR;

enum xcb_back_pixmap_t {
	XCB_BACK_PIXMAP_NONE = 0,
	XCB_BACK_PIXMAP_PARENT_RELATIVE = 1
}

alias XCB_BACK_PIXMAP_NONE = xcb_back_pixmap_t.XCB_BACK_PIXMAP_NONE;
alias XCB_BACK_PIXMAP_PARENT_RELATIVE = xcb_back_pixmap_t.XCB_BACK_PIXMAP_PARENT_RELATIVE;

enum xcb_gravity_t {
	XCB_GRAVITY_BIT_FORGET = 0,
	XCB_GRAVITY_WIN_UNMAP = 0,
	XCB_GRAVITY_NORTH_WEST = 1,
	XCB_GRAVITY_NORTH = 2,
	XCB_GRAVITY_NORTH_EAST = 3,
	XCB_GRAVITY_WEST = 4,
	XCB_GRAVITY_CENTER = 5,
	XCB_GRAVITY_EAST = 6,
	XCB_GRAVITY_SOUTH_WEST = 7,
	XCB_GRAVITY_SOUTH = 8,
	XCB_GRAVITY_SOUTH_EAST = 9,
	XCB_GRAVITY_STATIC = 10
}

alias XCB_GRAVITY_BIT_FORGET = xcb_gravity_t.XCB_GRAVITY_BIT_FORGET;
alias XCB_GRAVITY_WIN_UNMAP = xcb_gravity_t.XCB_GRAVITY_WIN_UNMAP;
alias XCB_GRAVITY_NORTH_WEST = xcb_gravity_t.XCB_GRAVITY_NORTH_WEST;
alias XCB_GRAVITY_NORTH = xcb_gravity_t.XCB_GRAVITY_NORTH;
alias XCB_GRAVITY_NORTH_EAST = xcb_gravity_t.XCB_GRAVITY_NORTH_EAST;
alias XCB_GRAVITY_WEST = xcb_gravity_t.XCB_GRAVITY_WEST;
alias XCB_GRAVITY_CENTER = xcb_gravity_t.XCB_GRAVITY_CENTER;
alias XCB_GRAVITY_EAST = xcb_gravity_t.XCB_GRAVITY_EAST;
alias XCB_GRAVITY_SOUTH_WEST = xcb_gravity_t.XCB_GRAVITY_SOUTH_WEST;
alias XCB_GRAVITY_SOUTH = xcb_gravity_t.XCB_GRAVITY_SOUTH;
alias XCB_GRAVITY_SOUTH_EAST = xcb_gravity_t.XCB_GRAVITY_SOUTH_EAST;
alias XCB_GRAVITY_STATIC = xcb_gravity_t.XCB_GRAVITY_STATIC;

/** Opcode for xcb_create_window. */
enum XCB_CREATE_WINDOW = 1;

/**
 * @brief xcb_create_window_request_t
 **/
struct xcb_create_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte depth; /**<  */
	ushort length; /**<  */
	xcb_window_t wid; /**<  */
	xcb_window_t parent; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort border_width; /**<  */
	ushort class_; /**<  */
	xcb_visualid_t visual; /**<  */
	uint value_mask; /**<  */
}

/** Opcode for xcb_change_window_attributes. */
enum XCB_CHANGE_WINDOW_ATTRIBUTES = 2;

/**
 * @brief xcb_change_window_attributes_request_t
 **/
struct xcb_change_window_attributes_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	uint value_mask; /**<  */
}

enum xcb_map_state_t {
	XCB_MAP_STATE_UNMAPPED = 0,
	XCB_MAP_STATE_UNVIEWABLE = 1,
	XCB_MAP_STATE_VIEWABLE = 2
}

alias XCB_MAP_STATE_UNMAPPED = xcb_map_state_t.XCB_MAP_STATE_UNMAPPED;
alias XCB_MAP_STATE_UNVIEWABLE = xcb_map_state_t.XCB_MAP_STATE_UNVIEWABLE;
alias XCB_MAP_STATE_VIEWABLE = xcb_map_state_t.XCB_MAP_STATE_VIEWABLE;

/**
 * @brief xcb_get_window_attributes_cookie_t
 **/
struct xcb_get_window_attributes_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_window_attributes. */
enum XCB_GET_WINDOW_ATTRIBUTES = 3;

/**
 * @brief xcb_get_window_attributes_request_t
 **/
struct xcb_get_window_attributes_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_get_window_attributes_reply_t
 **/
struct xcb_get_window_attributes_reply_t {
	ubyte response_type; /**<  */
	ubyte backing_store; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_visualid_t visual; /**<  */
	ushort class_; /**<  */
	ubyte bit_gravity; /**<  */
	ubyte win_gravity; /**<  */
	uint backing_planes; /**<  */
	uint backing_pixel; /**<  */
	ubyte save_under; /**<  */
	ubyte map_is_installed; /**<  */
	ubyte map_state; /**<  */
	ubyte override_redirect; /**<  */
	xcb_colormap_t colormap; /**<  */
	uint all_event_masks; /**<  */
	uint your_event_mask; /**<  */
	ushort do_not_propagate_mask; /**<  */
	ubyte[2] pad0; /**<  */
}

/** Opcode for xcb_destroy_window. */
enum XCB_DESTROY_WINDOW = 4;

/**
 * @brief xcb_destroy_window_request_t
 **/
struct xcb_destroy_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/** Opcode for xcb_destroy_subwindows. */
enum XCB_DESTROY_SUBWINDOWS = 5;

/**
 * @brief xcb_destroy_subwindows_request_t
 **/
struct xcb_destroy_subwindows_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

enum xcb_set_mode_t {
	XCB_SET_MODE_INSERT = 0,
	XCB_SET_MODE_DELETE = 1
}

alias XCB_SET_MODE_INSERT = xcb_set_mode_t.XCB_SET_MODE_INSERT;
alias XCB_SET_MODE_DELETE = xcb_set_mode_t.XCB_SET_MODE_DELETE;

/** Opcode for xcb_change_save_set. */
enum XCB_CHANGE_SAVE_SET = 6;

/**
 * @brief xcb_change_save_set_request_t
 **/
struct xcb_change_save_set_request_t {
	ubyte major_opcode; /**<  */
	ubyte mode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/** Opcode for xcb_reparent_window. */
enum XCB_REPARENT_WINDOW = 7;

/**
 * @brief xcb_reparent_window_request_t
 **/
struct xcb_reparent_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_window_t parent; /**<  */
	short x; /**<  */
	short y; /**<  */
}

/** Opcode for xcb_map_window. */
enum XCB_MAP_WINDOW = 8;

/**
 * @brief xcb_map_window_request_t
 **/
struct xcb_map_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/** Opcode for xcb_map_subwindows. */
enum XCB_MAP_SUBWINDOWS = 9;

/**
 * @brief xcb_map_subwindows_request_t
 **/
struct xcb_map_subwindows_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/** Opcode for xcb_unmap_window. */
enum XCB_UNMAP_WINDOW = 10;

/**
 * @brief xcb_unmap_window_request_t
 **/
struct xcb_unmap_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/** Opcode for xcb_unmap_subwindows. */
enum XCB_UNMAP_SUBWINDOWS = 11;

/**
 * @brief xcb_unmap_subwindows_request_t
 **/
struct xcb_unmap_subwindows_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

enum xcb_config_window_t {
	XCB_CONFIG_WINDOW_X = 1,
	XCB_CONFIG_WINDOW_Y = 2,
	XCB_CONFIG_WINDOW_WIDTH = 4,
	XCB_CONFIG_WINDOW_HEIGHT = 8,
	XCB_CONFIG_WINDOW_BORDER_WIDTH = 16,
	XCB_CONFIG_WINDOW_SIBLING = 32,
	XCB_CONFIG_WINDOW_STACK_MODE = 64
}

alias XCB_CONFIG_WINDOW_X = xcb_config_window_t.XCB_CONFIG_WINDOW_X;
alias XCB_CONFIG_WINDOW_Y = xcb_config_window_t.XCB_CONFIG_WINDOW_Y;
alias XCB_CONFIG_WINDOW_WIDTH = xcb_config_window_t.XCB_CONFIG_WINDOW_WIDTH;
alias XCB_CONFIG_WINDOW_HEIGHT = xcb_config_window_t.XCB_CONFIG_WINDOW_HEIGHT;
alias XCB_CONFIG_WINDOW_BORDER_WIDTH = xcb_config_window_t.XCB_CONFIG_WINDOW_BORDER_WIDTH;
alias XCB_CONFIG_WINDOW_SIBLING = xcb_config_window_t.XCB_CONFIG_WINDOW_SIBLING;
alias XCB_CONFIG_WINDOW_STACK_MODE = xcb_config_window_t.XCB_CONFIG_WINDOW_STACK_MODE;

enum xcb_stack_mode_t {
	XCB_STACK_MODE_ABOVE = 0,
	XCB_STACK_MODE_BELOW = 1,
	XCB_STACK_MODE_TOP_IF = 2,
	XCB_STACK_MODE_BOTTOM_IF = 3,
	XCB_STACK_MODE_OPPOSITE = 4
}

alias XCB_STACK_MODE_ABOVE = xcb_stack_mode_t.XCB_STACK_MODE_ABOVE;
alias XCB_STACK_MODE_BELOW = xcb_stack_mode_t.XCB_STACK_MODE_BELOW;
alias XCB_STACK_MODE_TOP_IF = xcb_stack_mode_t.XCB_STACK_MODE_TOP_IF;
alias XCB_STACK_MODE_BOTTOM_IF = xcb_stack_mode_t.XCB_STACK_MODE_BOTTOM_IF;
alias XCB_STACK_MODE_OPPOSITE = xcb_stack_mode_t.XCB_STACK_MODE_OPPOSITE;

/** Opcode for xcb_configure_window. */
enum XCB_CONFIGURE_WINDOW = 12;

/**
 * @brief xcb_configure_window_request_t
 **/
struct xcb_configure_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ushort value_mask; /**<  */
	ubyte[2] pad1; /**<  */
}

enum xcb_circulate_t {
	XCB_CIRCULATE_RAISE_LOWEST = 0,
	XCB_CIRCULATE_LOWER_HIGHEST = 1
}

alias XCB_CIRCULATE_RAISE_LOWEST = xcb_circulate_t.XCB_CIRCULATE_RAISE_LOWEST;
alias XCB_CIRCULATE_LOWER_HIGHEST = xcb_circulate_t.XCB_CIRCULATE_LOWER_HIGHEST;

/** Opcode for xcb_circulate_window. */
enum XCB_CIRCULATE_WINDOW = 13;

/**
 * @brief xcb_circulate_window_request_t
 **/
struct xcb_circulate_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte direction; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_get_geometry_cookie_t
 **/
struct xcb_get_geometry_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_geometry. */
enum XCB_GET_GEOMETRY = 14;

/**
 * @brief xcb_get_geometry_request_t
 **/
struct xcb_get_geometry_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
}

/**
 * @brief xcb_get_geometry_reply_t
 **/
struct xcb_get_geometry_reply_t {
	ubyte response_type; /**<  */
	ubyte depth; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t root; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort border_width; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_query_tree_cookie_t
 **/
struct xcb_query_tree_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_query_tree. */
enum XCB_QUERY_TREE = 15;

/**
 * @brief xcb_query_tree_request_t
 **/
struct xcb_query_tree_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_query_tree_reply_t
 **/
struct xcb_query_tree_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t parent; /**<  */
	ushort children_len; /**<  */
	ubyte[14] pad1; /**<  */
}

/**
 * @brief xcb_intern_atom_cookie_t
 **/
struct xcb_intern_atom_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_intern_atom. */
enum XCB_INTERN_ATOM = 16;

/**
 * @brief xcb_intern_atom_request_t
 **/
struct xcb_intern_atom_request_t {
	ubyte major_opcode; /**<  */
	ubyte only_if_exists; /**<  */
	ushort length; /**<  */
	ushort name_len; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_intern_atom_reply_t
 **/
struct xcb_intern_atom_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_atom_t atom; /**<  */
}

/**
 * @brief xcb_get_atom_name_cookie_t
 **/
struct xcb_get_atom_name_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_atom_name. */
enum XCB_GET_ATOM_NAME = 17;

/**
 * @brief xcb_get_atom_name_request_t
 **/
struct xcb_get_atom_name_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_atom_t atom; /**<  */
}

/**
 * @brief xcb_get_atom_name_reply_t
 **/
struct xcb_get_atom_name_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort name_len; /**<  */
	ubyte[22] pad1; /**<  */
}

enum xcb_prop_mode_t {
	XCB_PROP_MODE_REPLACE = 0,
	/**< Discard the previous property value and store the new data. */

		XCB_PROP_MODE_PREPEND = 1,/**< Insert the new data before the beginning of existing data. The `format` must
match existing property value. If the property is undefined, it is treated as
defined with the correct type and format with zero-length data. */

		XCB_PROP_MODE_APPEND = 2/**< Insert the new data after the beginning of existing data. The `format` must
match existing property value. If the property is undefined, it is treated as
defined with the correct type and format with zero-length data. */

}

alias XCB_PROP_MODE_REPLACE = xcb_prop_mode_t.XCB_PROP_MODE_REPLACE;
alias XCB_PROP_MODE_PREPEND = xcb_prop_mode_t.XCB_PROP_MODE_PREPEND;
alias XCB_PROP_MODE_APPEND = xcb_prop_mode_t.XCB_PROP_MODE_APPEND;

/** Opcode for xcb_change_property. */
enum XCB_CHANGE_PROPERTY = 18;

/**
 * @brief xcb_change_property_request_t
 **/
struct xcb_change_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte mode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_atom_t property; /**<  */
	xcb_atom_t type; /**<  */
	ubyte format; /**<  */
	ubyte[3] pad0; /**<  */
	uint data_len; /**<  */
}

/** Opcode for xcb_delete_property. */
enum XCB_DELETE_PROPERTY = 19;

/**
 * @brief xcb_delete_property_request_t
 **/
struct xcb_delete_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_atom_t property; /**<  */
}

enum xcb_get_property_type_t {
	XCB_GET_PROPERTY_TYPE_ANY = 0
}

alias XCB_GET_PROPERTY_TYPE_ANY = xcb_get_property_type_t.XCB_GET_PROPERTY_TYPE_ANY;

/**
 * @brief xcb_get_property_cookie_t
 **/
struct xcb_get_property_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_property. */
enum XCB_GET_PROPERTY = 20;

/**
 * @brief xcb_get_property_request_t
 **/
struct xcb_get_property_request_t {
	ubyte major_opcode; /**<  */
	ubyte delete_; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_atom_t property; /**<  */
	xcb_atom_t type; /**<  */
	uint long_offset; /**<  */
	uint long_length; /**<  */
}

/**
 * @brief xcb_get_property_reply_t
 **/
struct xcb_get_property_reply_t {
	ubyte response_type; /**<  */
	ubyte format; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_atom_t type; /**<  */
	uint bytes_after; /**<  */
	uint value_len; /**<  */
	ubyte[12] pad0; /**<  */
}

/**
 * @brief xcb_list_properties_cookie_t
 **/
struct xcb_list_properties_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_list_properties. */
enum XCB_LIST_PROPERTIES = 21;

/**
 * @brief xcb_list_properties_request_t
 **/
struct xcb_list_properties_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_list_properties_reply_t
 **/
struct xcb_list_properties_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort atoms_len; /**<  */
	ubyte[22] pad1; /**<  */
}

/** Opcode for xcb_set_selection_owner. */
enum XCB_SET_SELECTION_OWNER = 22;

/**
 * @brief xcb_set_selection_owner_request_t
 **/
struct xcb_set_selection_owner_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t owner; /**<  */
	xcb_atom_t selection; /**<  */
	xcb_timestamp_t time; /**<  */
}

/**
 * @brief xcb_get_selection_owner_cookie_t
 **/
struct xcb_get_selection_owner_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_selection_owner. */
enum XCB_GET_SELECTION_OWNER = 23;

/**
 * @brief xcb_get_selection_owner_request_t
 **/
struct xcb_get_selection_owner_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_atom_t selection; /**<  */
}

/**
 * @brief xcb_get_selection_owner_reply_t
 **/
struct xcb_get_selection_owner_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t owner; /**<  */
}

/** Opcode for xcb_convert_selection. */
enum XCB_CONVERT_SELECTION = 24;

/**
 * @brief xcb_convert_selection_request_t
 **/
struct xcb_convert_selection_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t requestor; /**<  */
	xcb_atom_t selection; /**<  */
	xcb_atom_t target; /**<  */
	xcb_atom_t property; /**<  */
	xcb_timestamp_t time; /**<  */
}

enum xcb_send_event_dest_t {
	XCB_SEND_EVENT_DEST_POINTER_WINDOW = 0,
	XCB_SEND_EVENT_DEST_ITEM_FOCUS = 1
}

alias XCB_SEND_EVENT_DEST_POINTER_WINDOW = xcb_send_event_dest_t.XCB_SEND_EVENT_DEST_POINTER_WINDOW;
alias XCB_SEND_EVENT_DEST_ITEM_FOCUS = xcb_send_event_dest_t.XCB_SEND_EVENT_DEST_ITEM_FOCUS;

/** Opcode for xcb_send_event. */
enum XCB_SEND_EVENT = 25;

/**
 * @brief xcb_send_event_request_t
 **/
struct xcb_send_event_request_t {
	ubyte major_opcode; /**<  */
	ubyte propagate; /**<  */
	ushort length; /**<  */
	xcb_window_t destination; /**<  */
	uint event_mask; /**<  */
	char[32] event; /**<  */
}

enum xcb_grab_mode_t {
	XCB_GRAB_MODE_SYNC = 0,
	/**< The state of the keyboard appears to freeze: No further keyboard events are
generated by the server until the grabbing client issues a releasing
`AllowEvents` request or until the keyboard grab is released. */

		XCB_GRAB_MODE_ASYNC = 1/**< Keyboard event processing continues normally. */

}

alias XCB_GRAB_MODE_SYNC = xcb_grab_mode_t.XCB_GRAB_MODE_SYNC;
alias XCB_GRAB_MODE_ASYNC = xcb_grab_mode_t.XCB_GRAB_MODE_ASYNC;

enum xcb_grab_status_t {
	XCB_GRAB_STATUS_SUCCESS = 0,
	XCB_GRAB_STATUS_ALREADY_GRABBED = 1,
	XCB_GRAB_STATUS_INVALID_TIME = 2,
	XCB_GRAB_STATUS_NOT_VIEWABLE = 3,
	XCB_GRAB_STATUS_FROZEN = 4
}

alias XCB_GRAB_STATUS_SUCCESS = xcb_grab_status_t.XCB_GRAB_STATUS_SUCCESS;
alias XCB_GRAB_STATUS_ALREADY_GRABBED = xcb_grab_status_t.XCB_GRAB_STATUS_ALREADY_GRABBED;
alias XCB_GRAB_STATUS_INVALID_TIME = xcb_grab_status_t.XCB_GRAB_STATUS_INVALID_TIME;
alias XCB_GRAB_STATUS_NOT_VIEWABLE = xcb_grab_status_t.XCB_GRAB_STATUS_NOT_VIEWABLE;
alias XCB_GRAB_STATUS_FROZEN = xcb_grab_status_t.XCB_GRAB_STATUS_FROZEN;

enum xcb_cursor_enum_t {
	XCB_CURSOR_NONE = 0
}

alias XCB_CURSOR_NONE = xcb_cursor_enum_t.XCB_CURSOR_NONE;

/**
 * @brief xcb_grab_pointer_cookie_t
 **/
struct xcb_grab_pointer_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_grab_pointer. */
enum XCB_GRAB_POINTER = 26;

/**
 * @brief xcb_grab_pointer_request_t
 **/
struct xcb_grab_pointer_request_t {
	ubyte major_opcode; /**<  */
	ubyte owner_events; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	ushort event_mask; /**<  */
	ubyte pointer_mode; /**<  */
	ubyte keyboard_mode; /**<  */
	xcb_window_t confine_to; /**<  */
	xcb_cursor_t cursor; /**<  */
	xcb_timestamp_t time; /**<  */
}

/**
 * @brief xcb_grab_pointer_reply_t
 **/
struct xcb_grab_pointer_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
}

/** Opcode for xcb_ungrab_pointer. */
enum XCB_UNGRAB_POINTER = 27;

/**
 * @brief xcb_ungrab_pointer_request_t
 **/
struct xcb_ungrab_pointer_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_timestamp_t time; /**<  */
}

enum xcb_button_index_t {
	XCB_BUTTON_INDEX_ANY = 0,
	/**< Any of the following (or none): */

		XCB_BUTTON_INDEX_1 = 1,/**< The left mouse button. */

		XCB_BUTTON_INDEX_2 = 2,/**< The right mouse button. */

		XCB_BUTTON_INDEX_3 = 3,/**< The middle mouse button. */

		XCB_BUTTON_INDEX_4 = 4,/**< Scroll wheel. TODO: direction? */

		XCB_BUTTON_INDEX_5 = 5/**< Scroll wheel. TODO: direction? */

}

alias XCB_BUTTON_INDEX_ANY = xcb_button_index_t.XCB_BUTTON_INDEX_ANY;
alias XCB_BUTTON_INDEX_1 = xcb_button_index_t.XCB_BUTTON_INDEX_1;
alias XCB_BUTTON_INDEX_2 = xcb_button_index_t.XCB_BUTTON_INDEX_2;
alias XCB_BUTTON_INDEX_3 = xcb_button_index_t.XCB_BUTTON_INDEX_3;
alias XCB_BUTTON_INDEX_4 = xcb_button_index_t.XCB_BUTTON_INDEX_4;
alias XCB_BUTTON_INDEX_5 = xcb_button_index_t.XCB_BUTTON_INDEX_5;

/** Opcode for xcb_grab_button. */
enum XCB_GRAB_BUTTON = 28;

/**
 * @brief xcb_grab_button_request_t
 **/
struct xcb_grab_button_request_t {
	ubyte major_opcode; /**<  */
	ubyte owner_events; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	ushort event_mask; /**<  */
	ubyte pointer_mode; /**<  */
	ubyte keyboard_mode; /**<  */
	xcb_window_t confine_to; /**<  */
	xcb_cursor_t cursor; /**<  */
	ubyte button; /**<  */
	ubyte pad0; /**<  */
	ushort modifiers; /**<  */
}

/** Opcode for xcb_ungrab_button. */
enum XCB_UNGRAB_BUTTON = 29;

/**
 * @brief xcb_ungrab_button_request_t
 **/
struct xcb_ungrab_button_request_t {
	ubyte major_opcode; /**<  */
	ubyte button; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	ushort modifiers; /**<  */
	ubyte[2] pad0; /**<  */
}

/** Opcode for xcb_change_active_pointer_grab. */
enum XCB_CHANGE_ACTIVE_POINTER_GRAB = 30;

/**
 * @brief xcb_change_active_pointer_grab_request_t
 **/
struct xcb_change_active_pointer_grab_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_cursor_t cursor; /**<  */
	xcb_timestamp_t time; /**<  */
	ushort event_mask; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_grab_keyboard_cookie_t
 **/
struct xcb_grab_keyboard_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_grab_keyboard. */
enum XCB_GRAB_KEYBOARD = 31;

/**
 * @brief xcb_grab_keyboard_request_t
 **/
struct xcb_grab_keyboard_request_t {
	ubyte major_opcode; /**<  */
	ubyte owner_events; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte pointer_mode; /**<  */
	ubyte keyboard_mode; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_grab_keyboard_reply_t
 **/
struct xcb_grab_keyboard_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
}

/** Opcode for xcb_ungrab_keyboard. */
enum XCB_UNGRAB_KEYBOARD = 32;

/**
 * @brief xcb_ungrab_keyboard_request_t
 **/
struct xcb_ungrab_keyboard_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_timestamp_t time; /**<  */
}

enum xcb_grab_t {
	XCB_GRAB_ANY = 0
}

alias XCB_GRAB_ANY = xcb_grab_t.XCB_GRAB_ANY;

/** Opcode for xcb_grab_key. */
enum XCB_GRAB_KEY = 33;

/**
 * @brief xcb_grab_key_request_t
 **/
struct xcb_grab_key_request_t {
	ubyte major_opcode; /**<  */
	ubyte owner_events; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	ushort modifiers; /**<  */
	xcb_keycode_t key; /**<  */
	ubyte pointer_mode; /**<  */
	ubyte keyboard_mode; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_ungrab_key. */
enum XCB_UNGRAB_KEY = 34;

/**
 * @brief xcb_ungrab_key_request_t
 **/
struct xcb_ungrab_key_request_t {
	ubyte major_opcode; /**<  */
	xcb_keycode_t key; /**<  */
	ushort length; /**<  */
	xcb_window_t grab_window; /**<  */
	ushort modifiers; /**<  */
	ubyte[2] pad0; /**<  */
}

enum xcb_allow_t {
	XCB_ALLOW_ASYNC_POINTER = 0,
	/**< For AsyncPointer, if the pointer is frozen by the client, pointer event
processing continues normally. If the pointer is frozen twice by the client on
behalf of two separate grabs, AsyncPointer thaws for both. AsyncPointer has no
effect if the pointer is not frozen by the client, but the pointer need not be
grabbed by the client.

TODO: rewrite this in more understandable terms. */

		XCB_ALLOW_SYNC_POINTER = 1,/**< For SyncPointer, if the pointer is frozen and actively grabbed by the client,
pointer event processing continues normally until the next ButtonPress or
ButtonRelease event is reported to the client, at which time the pointer again
appears to freeze. However, if the reported event causes the pointer grab to be
released, then the pointer does not freeze. SyncPointer has no effect if the
pointer is not frozen by the client or if the pointer is not grabbed by the
client. */

		XCB_ALLOW_REPLAY_POINTER = 2,/**< For ReplayPointer, if the pointer is actively grabbed by the client and is
frozen as the result of an event having been sent to the client (either from
the activation of a GrabButton or from a previous AllowEvents with mode
SyncPointer but not from a GrabPointer), then the pointer grab is released and
that event is completely reprocessed, this time ignoring any passive grabs at
or above (towards the root) the grab-window of the grab just released. The
request has no effect if the pointer is not grabbed by the client or if the
pointer is not frozen as the result of an event. */

		XCB_ALLOW_ASYNC_KEYBOARD = 3,
		/**< For AsyncKeyboard, if the keyboard is frozen by the client, keyboard event
processing continues normally. If the keyboard is frozen twice by the client on
behalf of two separate grabs, AsyncKeyboard thaws for both. AsyncKeyboard has
no effect if the keyboard is not frozen by the client, but the keyboard need
not be grabbed by the client. */

		XCB_ALLOW_SYNC_KEYBOARD = 4,/**< For SyncKeyboard, if the keyboard is frozen and actively grabbed by the client,
keyboard event processing continues normally until the next KeyPress or
KeyRelease event is reported to the client, at which time the keyboard again
appears to freeze. However, if the reported event causes the keyboard grab to
be released, then the keyboard does not freeze. SyncKeyboard has no effect if
the keyboard is not frozen by the client or if the keyboard is not grabbed by
the client. */

		XCB_ALLOW_REPLAY_KEYBOARD = 5,/**< For ReplayKeyboard, if the keyboard is actively grabbed by the client and is
frozen as the result of an event having been sent to the client (either from
the activation of a GrabKey or from a previous AllowEvents with mode
SyncKeyboard but not from a GrabKeyboard), then the keyboard grab is released
and that event is completely reprocessed, this time ignoring any passive grabs
at or above (towards the root) the grab-window of the grab just released. The
request has no effect if the keyboard is not grabbed by the client or if the
keyboard is not frozen as the result of an event. */

		XCB_ALLOW_ASYNC_BOTH = 6,/**< For AsyncBoth, if the pointer and the keyboard are frozen by the client, event
processing for both devices continues normally. If a device is frozen twice by
the client on behalf of two separate grabs, AsyncBoth thaws for both. AsyncBoth
has no effect unless both pointer and keyboard are frozen by the client. */

		XCB_ALLOW_SYNC_BOTH = 7/**< For SyncBoth, if both pointer and keyboard are frozen by the client, event
processing (for both devices) continues normally until the next ButtonPress,
ButtonRelease, KeyPress, or KeyRelease event is reported to the client for a
grabbed device (button event for the pointer, key event for the keyboard), at
which time the devices again appear to freeze. However, if the reported event
causes the grab to be released, then the devices do not freeze (but if the
other device is still grabbed, then a subsequent event for it will still cause
both devices to freeze). SyncBoth has no effect unless both pointer and
keyboard are frozen by the client. If the pointer or keyboard is frozen twice
by the client on behalf of two separate grabs, SyncBoth thaws for both (but a
subsequent freeze for SyncBoth will only freeze each device once). */

}

alias XCB_ALLOW_ASYNC_POINTER = xcb_allow_t.XCB_ALLOW_ASYNC_POINTER;
alias XCB_ALLOW_SYNC_POINTER = xcb_allow_t.XCB_ALLOW_SYNC_POINTER;
alias XCB_ALLOW_REPLAY_POINTER = xcb_allow_t.XCB_ALLOW_REPLAY_POINTER;
alias XCB_ALLOW_ASYNC_KEYBOARD = xcb_allow_t.XCB_ALLOW_ASYNC_KEYBOARD;
alias XCB_ALLOW_SYNC_KEYBOARD = xcb_allow_t.XCB_ALLOW_SYNC_KEYBOARD;
alias XCB_ALLOW_REPLAY_KEYBOARD = xcb_allow_t.XCB_ALLOW_REPLAY_KEYBOARD;
alias XCB_ALLOW_ASYNC_BOTH = xcb_allow_t.XCB_ALLOW_ASYNC_BOTH;
alias XCB_ALLOW_SYNC_BOTH = xcb_allow_t.XCB_ALLOW_SYNC_BOTH;

/** Opcode for xcb_allow_events. */
enum XCB_ALLOW_EVENTS = 35;

/**
 * @brief xcb_allow_events_request_t
 **/
struct xcb_allow_events_request_t {
	ubyte major_opcode; /**<  */
	ubyte mode; /**<  */
	ushort length; /**<  */
	xcb_timestamp_t time; /**<  */
}

/** Opcode for xcb_grab_server. */
enum XCB_GRAB_SERVER = 36;

/**
 * @brief xcb_grab_server_request_t
 **/
struct xcb_grab_server_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/** Opcode for xcb_ungrab_server. */
enum XCB_UNGRAB_SERVER = 37;

/**
 * @brief xcb_ungrab_server_request_t
 **/
struct xcb_ungrab_server_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_query_pointer_cookie_t
 **/
struct xcb_query_pointer_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_query_pointer. */
enum XCB_QUERY_POINTER = 38;

/**
 * @brief xcb_query_pointer_request_t
 **/
struct xcb_query_pointer_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_query_pointer_reply_t
 **/
struct xcb_query_pointer_reply_t {
	ubyte response_type; /**<  */
	ubyte same_screen; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t child; /**<  */
	short root_x; /**<  */
	short root_y; /**<  */
	short win_x; /**<  */
	short win_y; /**<  */
	ushort mask; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_timecoord_t
 **/
struct xcb_timecoord_t {
	xcb_timestamp_t time; /**<  */
	short x; /**<  */
	short y; /**<  */
}

/**
 * @brief xcb_timecoord_iterator_t
 **/
struct xcb_timecoord_iterator_t {
	xcb_timecoord_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_get_motion_events_cookie_t
 **/
struct xcb_get_motion_events_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_motion_events. */
enum XCB_GET_MOTION_EVENTS = 39;

/**
 * @brief xcb_get_motion_events_request_t
 **/
struct xcb_get_motion_events_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_timestamp_t start; /**<  */
	xcb_timestamp_t stop; /**<  */
}

/**
 * @brief xcb_get_motion_events_reply_t
 **/
struct xcb_get_motion_events_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint events_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_translate_coordinates_cookie_t
 **/
struct xcb_translate_coordinates_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_translate_coordinates. */
enum XCB_TRANSLATE_COORDINATES = 40;

/**
 * @brief xcb_translate_coordinates_request_t
 **/
struct xcb_translate_coordinates_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t src_window; /**<  */
	xcb_window_t dst_window; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
}

/**
 * @brief xcb_translate_coordinates_reply_t
 **/
struct xcb_translate_coordinates_reply_t {
	ubyte response_type; /**<  */
	ubyte same_screen; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t child; /**<  */
	short dst_x; /**<  */
	short dst_y; /**<  */
}

/** Opcode for xcb_warp_pointer. */
enum XCB_WARP_POINTER = 41;

/**
 * @brief xcb_warp_pointer_request_t
 **/
struct xcb_warp_pointer_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t src_window; /**<  */
	xcb_window_t dst_window; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
	ushort src_width; /**<  */
	ushort src_height; /**<  */
	short dst_x; /**<  */
	short dst_y; /**<  */
}

enum xcb_input_focus_t {
	XCB_INPUT_FOCUS_NONE = 0,
	/**< The focus reverts to `XCB_NONE`, so no window will have the input focus. */

		XCB_INPUT_FOCUS_POINTER_ROOT = 1,/**< The focus reverts to `XCB_POINTER_ROOT` respectively. When the focus reverts,
FocusIn and FocusOut events are generated, but the last-focus-change time is
not changed. */

		XCB_INPUT_FOCUS_PARENT = 2,/**< The focus reverts to the parent (or closest viewable ancestor) and the new
revert_to value is `XCB_INPUT_FOCUS_NONE`. */

		XCB_INPUT_FOCUS_FOLLOW_KEYBOARD = 3/**< NOT YET DOCUMENTED. Only relevant for the xinput extension. */

}

alias XCB_INPUT_FOCUS_NONE = xcb_input_focus_t.XCB_INPUT_FOCUS_NONE;
alias XCB_INPUT_FOCUS_POINTER_ROOT = xcb_input_focus_t.XCB_INPUT_FOCUS_POINTER_ROOT;
alias XCB_INPUT_FOCUS_PARENT = xcb_input_focus_t.XCB_INPUT_FOCUS_PARENT;
alias XCB_INPUT_FOCUS_FOLLOW_KEYBOARD = xcb_input_focus_t.XCB_INPUT_FOCUS_FOLLOW_KEYBOARD;

/** Opcode for xcb_set_input_focus. */
enum XCB_SET_INPUT_FOCUS = 42;

/**
 * @brief xcb_set_input_focus_request_t
 **/
struct xcb_set_input_focus_request_t {
	ubyte major_opcode; /**<  */
	ubyte revert_to; /**<  */
	ushort length; /**<  */
	xcb_window_t focus; /**<  */
	xcb_timestamp_t time; /**<  */
}

/**
 * @brief xcb_get_input_focus_cookie_t
 **/
struct xcb_get_input_focus_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_input_focus. */
enum XCB_GET_INPUT_FOCUS = 43;

/**
 * @brief xcb_get_input_focus_request_t
 **/
struct xcb_get_input_focus_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_get_input_focus_reply_t
 **/
struct xcb_get_input_focus_reply_t {
	ubyte response_type; /**<  */
	ubyte revert_to; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t focus; /**<  */
}

/**
 * @brief xcb_query_keymap_cookie_t
 **/
struct xcb_query_keymap_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_query_keymap. */
enum XCB_QUERY_KEYMAP = 44;

/**
 * @brief xcb_query_keymap_request_t
 **/
struct xcb_query_keymap_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_query_keymap_reply_t
 **/
struct xcb_query_keymap_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[32] keys; /**<  */
}

/** Opcode for xcb_open_font. */
enum XCB_OPEN_FONT = 45;

/**
 * @brief xcb_open_font_request_t
 **/
struct xcb_open_font_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_font_t fid; /**<  */
	ushort name_len; /**<  */
	ubyte[2] pad1; /**<  */
}

/** Opcode for xcb_close_font. */
enum XCB_CLOSE_FONT = 46;

/**
 * @brief xcb_close_font_request_t
 **/
struct xcb_close_font_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_font_t font; /**<  */
}

enum xcb_font_draw_t {
	XCB_FONT_DRAW_LEFT_TO_RIGHT = 0,
	XCB_FONT_DRAW_RIGHT_TO_LEFT = 1
}

alias XCB_FONT_DRAW_LEFT_TO_RIGHT = xcb_font_draw_t.XCB_FONT_DRAW_LEFT_TO_RIGHT;
alias XCB_FONT_DRAW_RIGHT_TO_LEFT = xcb_font_draw_t.XCB_FONT_DRAW_RIGHT_TO_LEFT;

/**
 * @brief xcb_fontprop_t
 **/
struct xcb_fontprop_t {
	xcb_atom_t name; /**<  */
	uint value; /**<  */
}

/**
 * @brief xcb_fontprop_iterator_t
 **/
struct xcb_fontprop_iterator_t {
	xcb_fontprop_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_charinfo_t
 **/
struct xcb_charinfo_t {
	short left_side_bearing; /**<  */
	short right_side_bearing; /**<  */
	short character_width; /**<  */
	short ascent; /**<  */
	short descent; /**<  */
	ushort attributes; /**<  */
}

/**
 * @brief xcb_charinfo_iterator_t
 **/
struct xcb_charinfo_iterator_t {
	xcb_charinfo_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_query_font_cookie_t
 **/
struct xcb_query_font_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_query_font. */
enum XCB_QUERY_FONT = 47;

/**
 * @brief xcb_query_font_request_t
 **/
struct xcb_query_font_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_fontable_t font; /**<  */
}

/**
 * @brief xcb_query_font_reply_t
 **/
struct xcb_query_font_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_charinfo_t min_bounds; /**<  */
	ubyte[4] pad1; /**<  */
	xcb_charinfo_t max_bounds; /**<  */
	ubyte[4] pad2; /**<  */
	ushort min_char_or_byte2; /**<  */
	ushort max_char_or_byte2; /**<  */
	ushort default_char; /**<  */
	ushort properties_len; /**<  */
	ubyte draw_direction; /**<  */
	ubyte min_byte1; /**<  */
	ubyte max_byte1; /**<  */
	ubyte all_chars_exist; /**<  */
	short font_ascent; /**<  */
	short font_descent; /**<  */
	uint char_infos_len; /**<  */
}

/**
 * @brief xcb_query_text_extents_cookie_t
 **/
struct xcb_query_text_extents_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_query_text_extents. */
enum XCB_QUERY_TEXT_EXTENTS = 48;

/**
 * @brief xcb_query_text_extents_request_t
 **/
struct xcb_query_text_extents_request_t {
	ubyte major_opcode; /**<  */
	ubyte odd_length; /**<  */
	ushort length; /**<  */
	xcb_fontable_t font; /**<  */
}

/**
 * @brief xcb_query_text_extents_reply_t
 **/
struct xcb_query_text_extents_reply_t {
	ubyte response_type; /**<  */
	ubyte draw_direction; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	short font_ascent; /**<  */
	short font_descent; /**<  */
	short overall_ascent; /**<  */
	short overall_descent; /**<  */
	int overall_width; /**<  */
	int overall_left; /**<  */
	int overall_right; /**<  */
}

/**
 * @brief xcb_str_t
 **/
struct xcb_str_t {
	ubyte name_len; /**<  */
}

/**
 * @brief xcb_str_iterator_t
 **/
struct xcb_str_iterator_t {
	xcb_str_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_list_fonts_cookie_t
 **/
struct xcb_list_fonts_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_list_fonts. */
enum XCB_LIST_FONTS = 49;

/**
 * @brief xcb_list_fonts_request_t
 **/
struct xcb_list_fonts_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	ushort max_names; /**<  */
	ushort pattern_len; /**<  */
}

/**
 * @brief xcb_list_fonts_reply_t
 **/
struct xcb_list_fonts_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort names_len; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_list_fonts_with_info_cookie_t
 **/
struct xcb_list_fonts_with_info_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_list_fonts_with_info. */
enum XCB_LIST_FONTS_WITH_INFO = 50;

/**
 * @brief xcb_list_fonts_with_info_request_t
 **/
struct xcb_list_fonts_with_info_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	ushort max_names; /**<  */
	ushort pattern_len; /**<  */
}

/**
 * @brief xcb_list_fonts_with_info_reply_t
 **/
struct xcb_list_fonts_with_info_reply_t {
	ubyte response_type; /**<  */
	ubyte name_len; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_charinfo_t min_bounds; /**<  */
	ubyte[4] pad0; /**<  */
	xcb_charinfo_t max_bounds; /**<  */
	ubyte[4] pad1; /**<  */
	ushort min_char_or_byte2; /**<  */
	ushort max_char_or_byte2; /**<  */
	ushort default_char; /**<  */
	ushort properties_len; /**<  */
	ubyte draw_direction; /**<  */
	ubyte min_byte1; /**<  */
	ubyte max_byte1; /**<  */
	ubyte all_chars_exist; /**<  */
	short font_ascent; /**<  */
	short font_descent; /**<  */
	uint replies_hint; /**<  */
}

/** Opcode for xcb_set_font_path. */
enum XCB_SET_FONT_PATH = 51;

/**
 * @brief xcb_set_font_path_request_t
 **/
struct xcb_set_font_path_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	ushort font_qty; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_get_font_path_cookie_t
 **/
struct xcb_get_font_path_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_font_path. */
enum XCB_GET_FONT_PATH = 52;

/**
 * @brief xcb_get_font_path_request_t
 **/
struct xcb_get_font_path_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_get_font_path_reply_t
 **/
struct xcb_get_font_path_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort path_len; /**<  */
	ubyte[22] pad1; /**<  */
}

/** Opcode for xcb_create_pixmap. */
enum XCB_CREATE_PIXMAP = 53;

/**
 * @brief xcb_create_pixmap_request_t
 **/
struct xcb_create_pixmap_request_t {
	ubyte major_opcode; /**<  */
	ubyte depth; /**<  */
	ushort length; /**<  */
	xcb_pixmap_t pid; /**<  */
	xcb_drawable_t drawable; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

/** Opcode for xcb_free_pixmap. */
enum XCB_FREE_PIXMAP = 54;

/**
 * @brief xcb_free_pixmap_request_t
 **/
struct xcb_free_pixmap_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_pixmap_t pixmap; /**<  */
}

enum xcb_gc_t {
	XCB_GC_FUNCTION = 1,
	/**< TODO: Refer to GX */

		XCB_GC_PLANE_MASK = 2,/**< In graphics operations, given a source and destination pixel, the result is
computed bitwise on corresponding bits of the pixels; that is, a Boolean
operation is performed in each bit plane. The plane-mask restricts the
operation to a subset of planes, so the result is:

        ((src FUNC dst) AND plane-mask) OR (dst AND (NOT plane-mask)) */

		XCB_GC_FOREGROUND = 4,/**< Foreground colorpixel. */

		XCB_GC_BACKGROUND = 8,/**< Background colorpixel. */

		XCB_GC_LINE_WIDTH = 16,
		/**< The line-width is measured in pixels and can be greater than or equal to one, a wide line, or the
special value zero, a thin line. */

		XCB_GC_LINE_STYLE = 32,/**< The line-style defines which sections of a line are drawn:
Solid                The full path of the line is drawn.
DoubleDash           The full path of the line is drawn, but the even dashes are filled differently
                     than the odd dashes (see fill-style), with Butt cap-style used where even and
                     odd dashes meet.
OnOffDash            Only the even dashes are drawn, and cap-style applies to all internal ends of
                     the individual dashes (except NotLast is treated as Butt). */

		XCB_GC_CAP_STYLE = 64,/**< The cap-style defines how the endpoints of a path are drawn:
NotLast    The result is equivalent to Butt, except that for a line-width of zero the final
           endpoint is not drawn.
Butt       The result is square at the endpoint (perpendicular to the slope of the line)
           with no projection beyond.
Round      The result is a circular arc with its diameter equal to the line-width, centered
           on the endpoint; it is equivalent to Butt for line-width zero.
Projecting The result is square at the end, but the path continues beyond the endpoint for
           a distance equal to half the line-width; it is equivalent to Butt for line-width
           zero. */

		XCB_GC_JOIN_STYLE = 128,/**< The join-style defines how corners are drawn for wide lines:
Miter               The outer edges of the two lines extend to meet at an angle. However, if the
                    angle is less than 11 degrees, a Bevel join-style is used instead.
Round               The result is a circular arc with a diameter equal to the line-width, centered
                    on the joinpoint.
Bevel               The result is Butt endpoint styles, and then the triangular notch is filled. */

		XCB_GC_FILL_STYLE = 256,
		/**< The fill-style defines the contents of the source for line, text, and fill requests. For all text and fill
requests (for example, PolyText8, PolyText16, PolyFillRectangle, FillPoly, and PolyFillArc)
as well as for line requests with line-style Solid, (for example, PolyLine, PolySegment,
PolyRectangle, PolyArc) and for the even dashes for line requests with line-style OnOffDash
or DoubleDash:
Solid                     Foreground
Tiled                     Tile
OpaqueStippled            A tile with the same width and height as stipple but with background
                          everywhere stipple has a zero and with foreground everywhere stipple
                          has a one
Stippled                  Foreground masked by stipple
For the odd dashes for line requests with line-style DoubleDash:
Solid                     Background
Tiled                     Same as for even dashes
OpaqueStippled            Same as for even dashes
Stippled                  Background masked by stipple */

		XCB_GC_FILL_RULE = 512,/**<  */

		XCB_GC_TILE = 1024,/**< The tile/stipple represents an infinite two-dimensional plane with the tile/stipple replicated in all
dimensions. When that plane is superimposed on the drawable for use in a graphics operation,
the upper-left corner of some instance of the tile/stipple is at the coordinates within the drawable
specified by the tile/stipple origin. The tile/stipple and clip origins are interpreted relative to the
origin of whatever destination drawable is specified in a graphics request.
The tile pixmap must have the same root and depth as the gcontext (or a Match error results).
The stipple pixmap must have depth one and must have the same root as the gcontext (or a
Match error results). For fill-style Stippled (but not fill-style
OpaqueStippled), the stipple pattern is tiled in a single plane and acts as an
additional clip mask to be ANDed with the clip-mask.
Any size pixmap can be used for tiling or stippling, although some sizes may be faster to use than
others. */

		XCB_GC_STIPPLE = 2048,/**< The tile/stipple represents an infinite two-dimensional plane with the tile/stipple replicated in all
dimensions. When that plane is superimposed on the drawable for use in a graphics operation,
the upper-left corner of some instance of the tile/stipple is at the coordinates within the drawable
specified by the tile/stipple origin. The tile/stipple and clip origins are interpreted relative to the
origin of whatever destination drawable is specified in a graphics request.
The tile pixmap must have the same root and depth as the gcontext (or a Match error results).
The stipple pixmap must have depth one and must have the same root as the gcontext (or a
Match error results). For fill-style Stippled (but not fill-style
OpaqueStippled), the stipple pattern is tiled in a single plane and acts as an
additional clip mask to be ANDed with the clip-mask.
Any size pixmap can be used for tiling or stippling, although some sizes may be faster to use than
others. */

		XCB_GC_TILE_STIPPLE_ORIGIN_X = 4096,
		/**< TODO */

		XCB_GC_TILE_STIPPLE_ORIGIN_Y = 8192,/**< TODO */

		XCB_GC_FONT = 16384,/**< Which font to use for the `ImageText8` and `ImageText16` requests. */

		XCB_GC_SUBWINDOW_MODE = 32768,
		/**< For ClipByChildren, both source and destination windows are additionally
clipped by all viewable InputOutput children. For IncludeInferiors, neither
source nor destination window is
clipped by inferiors. This will result in including subwindow contents in the source and drawing
through subwindow boundaries of the destination. The use of IncludeInferiors with a source or
destination window of one depth with mapped inferiors of differing depth is not illegal, but the
semantics is undefined by the core protocol. */

		XCB_GC_GRAPHICS_EXPOSURES = 65536,/**< Whether ExposureEvents should be generated (1) or not (0).

The default is 1. */

		XCB_GC_CLIP_ORIGIN_X = 131072,/**< TODO */

		XCB_GC_CLIP_ORIGIN_Y = 262144,
		/**< TODO */

		XCB_GC_CLIP_MASK = 524288,/**< The clip-mask restricts writes to the destination drawable. Only pixels where the clip-mask has
bits set to 1 are drawn. Pixels are not drawn outside the area covered by the clip-mask or where
the clip-mask has bits set to 0. The clip-mask affects all graphics requests, but it does not clip
sources. The clip-mask origin is interpreted relative to the origin of whatever destination drawable is specified in a graphics request. If a pixmap is specified as the clip-mask, it must have
depth 1 and have the same root as the gcontext (or a Match error results). If clip-mask is None,
then pixels are always drawn, regardless of the clip origin. The clip-mask can also be set with the
SetClipRectangles request. */

		XCB_GC_DASH_OFFSET = 1048576,/**< TODO */

		XCB_GC_DASH_LIST = 2097152,/**< TODO */

		XCB_GC_ARC_MODE = 4194304/**< TODO */

}

alias XCB_GC_FUNCTION = xcb_gc_t.XCB_GC_FUNCTION;
alias XCB_GC_PLANE_MASK = xcb_gc_t.XCB_GC_PLANE_MASK;
alias XCB_GC_FOREGROUND = xcb_gc_t.XCB_GC_FOREGROUND;
alias XCB_GC_BACKGROUND = xcb_gc_t.XCB_GC_BACKGROUND;
alias XCB_GC_LINE_WIDTH = xcb_gc_t.XCB_GC_LINE_WIDTH;
alias XCB_GC_LINE_STYLE = xcb_gc_t.XCB_GC_LINE_STYLE;
alias XCB_GC_CAP_STYLE = xcb_gc_t.XCB_GC_CAP_STYLE;
alias XCB_GC_JOIN_STYLE = xcb_gc_t.XCB_GC_JOIN_STYLE;
alias XCB_GC_FILL_STYLE = xcb_gc_t.XCB_GC_FILL_STYLE;
alias XCB_GC_FILL_RULE = xcb_gc_t.XCB_GC_FILL_RULE;
alias XCB_GC_TILE = xcb_gc_t.XCB_GC_TILE;
alias XCB_GC_STIPPLE = xcb_gc_t.XCB_GC_STIPPLE;
alias XCB_GC_TILE_STIPPLE_ORIGIN_X = xcb_gc_t.XCB_GC_TILE_STIPPLE_ORIGIN_X;
alias XCB_GC_TILE_STIPPLE_ORIGIN_Y = xcb_gc_t.XCB_GC_TILE_STIPPLE_ORIGIN_Y;
alias XCB_GC_FONT = xcb_gc_t.XCB_GC_FONT;
alias XCB_GC_SUBWINDOW_MODE = xcb_gc_t.XCB_GC_SUBWINDOW_MODE;
alias XCB_GC_GRAPHICS_EXPOSURES = xcb_gc_t.XCB_GC_GRAPHICS_EXPOSURES;
alias XCB_GC_CLIP_ORIGIN_X = xcb_gc_t.XCB_GC_CLIP_ORIGIN_X;
alias XCB_GC_CLIP_ORIGIN_Y = xcb_gc_t.XCB_GC_CLIP_ORIGIN_Y;
alias XCB_GC_CLIP_MASK = xcb_gc_t.XCB_GC_CLIP_MASK;
alias XCB_GC_DASH_OFFSET = xcb_gc_t.XCB_GC_DASH_OFFSET;
alias XCB_GC_DASH_LIST = xcb_gc_t.XCB_GC_DASH_LIST;
alias XCB_GC_ARC_MODE = xcb_gc_t.XCB_GC_ARC_MODE;

enum xcb_gx_t {
	XCB_GX_CLEAR = 0,
	XCB_GX_AND = 1,
	XCB_GX_AND_REVERSE = 2,
	XCB_GX_COPY = 3,
	XCB_GX_AND_INVERTED = 4,
	XCB_GX_NOOP = 5,
	XCB_GX_XOR = 6,
	XCB_GX_OR = 7,
	XCB_GX_NOR = 8,
	XCB_GX_EQUIV = 9,
	XCB_GX_INVERT = 10,
	XCB_GX_OR_REVERSE = 11,
	XCB_GX_COPY_INVERTED = 12,
	XCB_GX_OR_INVERTED = 13,
	XCB_GX_NAND = 14,
	XCB_GX_SET = 15
}

alias XCB_GX_CLEAR = xcb_gx_t.XCB_GX_CLEAR;
alias XCB_GX_AND = xcb_gx_t.XCB_GX_AND;
alias XCB_GX_AND_REVERSE = xcb_gx_t.XCB_GX_AND_REVERSE;
alias XCB_GX_COPY = xcb_gx_t.XCB_GX_COPY;
alias XCB_GX_AND_INVERTED = xcb_gx_t.XCB_GX_AND_INVERTED;
alias XCB_GX_NOOP = xcb_gx_t.XCB_GX_NOOP;
alias XCB_GX_XOR = xcb_gx_t.XCB_GX_XOR;
alias XCB_GX_OR = xcb_gx_t.XCB_GX_OR;
alias XCB_GX_NOR = xcb_gx_t.XCB_GX_NOR;
alias XCB_GX_EQUIV = xcb_gx_t.XCB_GX_EQUIV;
alias XCB_GX_INVERT = xcb_gx_t.XCB_GX_INVERT;
alias XCB_GX_OR_REVERSE = xcb_gx_t.XCB_GX_OR_REVERSE;
alias XCB_GX_COPY_INVERTED = xcb_gx_t.XCB_GX_COPY_INVERTED;
alias XCB_GX_OR_INVERTED = xcb_gx_t.XCB_GX_OR_INVERTED;
alias XCB_GX_NAND = xcb_gx_t.XCB_GX_NAND;
alias XCB_GX_SET = xcb_gx_t.XCB_GX_SET;

enum xcb_line_style_t {
	XCB_LINE_STYLE_SOLID = 0,
	XCB_LINE_STYLE_ON_OFF_DASH = 1,
	XCB_LINE_STYLE_DOUBLE_DASH = 2
}

alias XCB_LINE_STYLE_SOLID = xcb_line_style_t.XCB_LINE_STYLE_SOLID;
alias XCB_LINE_STYLE_ON_OFF_DASH = xcb_line_style_t.XCB_LINE_STYLE_ON_OFF_DASH;
alias XCB_LINE_STYLE_DOUBLE_DASH = xcb_line_style_t.XCB_LINE_STYLE_DOUBLE_DASH;

enum xcb_cap_style_t {
	XCB_CAP_STYLE_NOT_LAST = 0,
	XCB_CAP_STYLE_BUTT = 1,
	XCB_CAP_STYLE_ROUND = 2,
	XCB_CAP_STYLE_PROJECTING = 3
}

alias XCB_CAP_STYLE_NOT_LAST = xcb_cap_style_t.XCB_CAP_STYLE_NOT_LAST;
alias XCB_CAP_STYLE_BUTT = xcb_cap_style_t.XCB_CAP_STYLE_BUTT;
alias XCB_CAP_STYLE_ROUND = xcb_cap_style_t.XCB_CAP_STYLE_ROUND;
alias XCB_CAP_STYLE_PROJECTING = xcb_cap_style_t.XCB_CAP_STYLE_PROJECTING;

enum xcb_join_style_t {
	XCB_JOIN_STYLE_MITER = 0,
	XCB_JOIN_STYLE_ROUND = 1,
	XCB_JOIN_STYLE_BEVEL = 2
}

alias XCB_JOIN_STYLE_MITER = xcb_join_style_t.XCB_JOIN_STYLE_MITER;
alias XCB_JOIN_STYLE_ROUND = xcb_join_style_t.XCB_JOIN_STYLE_ROUND;
alias XCB_JOIN_STYLE_BEVEL = xcb_join_style_t.XCB_JOIN_STYLE_BEVEL;

enum xcb_fill_style_t {
	XCB_FILL_STYLE_SOLID = 0,
	XCB_FILL_STYLE_TILED = 1,
	XCB_FILL_STYLE_STIPPLED = 2,
	XCB_FILL_STYLE_OPAQUE_STIPPLED = 3
}

alias XCB_FILL_STYLE_SOLID = xcb_fill_style_t.XCB_FILL_STYLE_SOLID;
alias XCB_FILL_STYLE_TILED = xcb_fill_style_t.XCB_FILL_STYLE_TILED;
alias XCB_FILL_STYLE_STIPPLED = xcb_fill_style_t.XCB_FILL_STYLE_STIPPLED;
alias XCB_FILL_STYLE_OPAQUE_STIPPLED = xcb_fill_style_t.XCB_FILL_STYLE_OPAQUE_STIPPLED;

enum xcb_fill_rule_t {
	XCB_FILL_RULE_EVEN_ODD = 0,
	XCB_FILL_RULE_WINDING = 1
}

alias XCB_FILL_RULE_EVEN_ODD = xcb_fill_rule_t.XCB_FILL_RULE_EVEN_ODD;
alias XCB_FILL_RULE_WINDING = xcb_fill_rule_t.XCB_FILL_RULE_WINDING;

enum xcb_subwindow_mode_t {
	XCB_SUBWINDOW_MODE_CLIP_BY_CHILDREN = 0,
	XCB_SUBWINDOW_MODE_INCLUDE_INFERIORS = 1
}

alias XCB_SUBWINDOW_MODE_CLIP_BY_CHILDREN = xcb_subwindow_mode_t.XCB_SUBWINDOW_MODE_CLIP_BY_CHILDREN;
alias XCB_SUBWINDOW_MODE_INCLUDE_INFERIORS = xcb_subwindow_mode_t.XCB_SUBWINDOW_MODE_INCLUDE_INFERIORS;

enum xcb_arc_mode_t {
	XCB_ARC_MODE_CHORD = 0,
	XCB_ARC_MODE_PIE_SLICE = 1
}

alias XCB_ARC_MODE_CHORD = xcb_arc_mode_t.XCB_ARC_MODE_CHORD;
alias XCB_ARC_MODE_PIE_SLICE = xcb_arc_mode_t.XCB_ARC_MODE_PIE_SLICE;

/** Opcode for xcb_create_gc. */
enum XCB_CREATE_GC = 55;

/**
 * @brief xcb_create_gc_request_t
 **/
struct xcb_create_gc_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_gcontext_t cid; /**<  */
	xcb_drawable_t drawable; /**<  */
	uint value_mask; /**<  */
}

/** Opcode for xcb_change_gc. */
enum XCB_CHANGE_GC = 56;

/**
 * @brief xcb_change_gc_request_t
 **/
struct xcb_change_gc_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_gcontext_t gc; /**<  */
	uint value_mask; /**<  */
}

/** Opcode for xcb_copy_gc. */
enum XCB_COPY_GC = 57;

/**
 * @brief xcb_copy_gc_request_t
 **/
struct xcb_copy_gc_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_gcontext_t src_gc; /**<  */
	xcb_gcontext_t dst_gc; /**<  */
	uint value_mask; /**<  */
}

/** Opcode for xcb_set_dashes. */
enum XCB_SET_DASHES = 58;

/**
 * @brief xcb_set_dashes_request_t
 **/
struct xcb_set_dashes_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_gcontext_t gc; /**<  */
	ushort dash_offset; /**<  */
	ushort dashes_len; /**<  */
}

enum xcb_clip_ordering_t {
	XCB_CLIP_ORDERING_UNSORTED = 0,
	XCB_CLIP_ORDERING_Y_SORTED = 1,
	XCB_CLIP_ORDERING_YX_SORTED = 2,
	XCB_CLIP_ORDERING_YX_BANDED = 3
}

alias XCB_CLIP_ORDERING_UNSORTED = xcb_clip_ordering_t.XCB_CLIP_ORDERING_UNSORTED;
alias XCB_CLIP_ORDERING_Y_SORTED = xcb_clip_ordering_t.XCB_CLIP_ORDERING_Y_SORTED;
alias XCB_CLIP_ORDERING_YX_SORTED = xcb_clip_ordering_t.XCB_CLIP_ORDERING_YX_SORTED;
alias XCB_CLIP_ORDERING_YX_BANDED = xcb_clip_ordering_t.XCB_CLIP_ORDERING_YX_BANDED;

/** Opcode for xcb_set_clip_rectangles. */
enum XCB_SET_CLIP_RECTANGLES = 59;

/**
 * @brief xcb_set_clip_rectangles_request_t
 **/
struct xcb_set_clip_rectangles_request_t {
	ubyte major_opcode; /**<  */
	ubyte ordering; /**<  */
	ushort length; /**<  */
	xcb_gcontext_t gc; /**<  */
	short clip_x_origin; /**<  */
	short clip_y_origin; /**<  */
}

/** Opcode for xcb_free_gc. */
enum XCB_FREE_GC = 60;

/**
 * @brief xcb_free_gc_request_t
 **/
struct xcb_free_gc_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_clear_area. */
enum XCB_CLEAR_AREA = 61;

/**
 * @brief xcb_clear_area_request_t
 **/
struct xcb_clear_area_request_t {
	ubyte major_opcode; /**<  */
	ubyte exposures; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

/** Opcode for xcb_copy_area. */
enum XCB_COPY_AREA = 62;

/**
 * @brief xcb_copy_area_request_t
 **/
struct xcb_copy_area_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t src_drawable; /**<  */
	xcb_drawable_t dst_drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
	short dst_x; /**<  */
	short dst_y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

/** Opcode for xcb_copy_plane. */
enum XCB_COPY_PLANE = 63;

/**
 * @brief xcb_copy_plane_request_t
 **/
struct xcb_copy_plane_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t src_drawable; /**<  */
	xcb_drawable_t dst_drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
	short dst_x; /**<  */
	short dst_y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	uint bit_plane; /**<  */
}

enum xcb_coord_mode_t {
	XCB_COORD_MODE_ORIGIN = 0,
	/**< Treats all coordinates as relative to the origin. */

		XCB_COORD_MODE_PREVIOUS = 1/**< Treats all coordinates after the first as relative to the previous coordinate. */

}

alias XCB_COORD_MODE_ORIGIN = xcb_coord_mode_t.XCB_COORD_MODE_ORIGIN;
alias XCB_COORD_MODE_PREVIOUS = xcb_coord_mode_t.XCB_COORD_MODE_PREVIOUS;

/** Opcode for xcb_poly_point. */
enum XCB_POLY_POINT = 64;

/**
 * @brief xcb_poly_point_request_t
 **/
struct xcb_poly_point_request_t {
	ubyte major_opcode; /**<  */
	ubyte coordinate_mode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_poly_line. */
enum XCB_POLY_LINE = 65;

/**
 * @brief xcb_poly_line_request_t
 **/
struct xcb_poly_line_request_t {
	ubyte major_opcode; /**<  */
	ubyte coordinate_mode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
}

/**
 * @brief xcb_segment_t
 **/
struct xcb_segment_t {
	short x1; /**<  */
	short y1; /**<  */
	short x2; /**<  */
	short y2; /**<  */
}

/**
 * @brief xcb_segment_iterator_t
 **/
struct xcb_segment_iterator_t {
	xcb_segment_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_poly_segment. */
enum XCB_POLY_SEGMENT = 66;

/**
 * @brief xcb_poly_segment_request_t
 **/
struct xcb_poly_segment_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_poly_rectangle. */
enum XCB_POLY_RECTANGLE = 67;

/**
 * @brief xcb_poly_rectangle_request_t
 **/
struct xcb_poly_rectangle_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_poly_arc. */
enum XCB_POLY_ARC = 68;

/**
 * @brief xcb_poly_arc_request_t
 **/
struct xcb_poly_arc_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
}

enum xcb_poly_shape_t {
	XCB_POLY_SHAPE_COMPLEX = 0,
	XCB_POLY_SHAPE_NONCONVEX = 1,
	XCB_POLY_SHAPE_CONVEX = 2
}

alias XCB_POLY_SHAPE_COMPLEX = xcb_poly_shape_t.XCB_POLY_SHAPE_COMPLEX;
alias XCB_POLY_SHAPE_NONCONVEX = xcb_poly_shape_t.XCB_POLY_SHAPE_NONCONVEX;
alias XCB_POLY_SHAPE_CONVEX = xcb_poly_shape_t.XCB_POLY_SHAPE_CONVEX;

/** Opcode for xcb_fill_poly. */
enum XCB_FILL_POLY = 69;

/**
 * @brief xcb_fill_poly_request_t
 **/
struct xcb_fill_poly_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	ubyte shape; /**<  */
	ubyte coordinate_mode; /**<  */
	ubyte[2] pad1; /**<  */
}

/** Opcode for xcb_poly_fill_rectangle. */
enum XCB_POLY_FILL_RECTANGLE = 70;

/**
 * @brief xcb_poly_fill_rectangle_request_t
 **/
struct xcb_poly_fill_rectangle_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_poly_fill_arc. */
enum XCB_POLY_FILL_ARC = 71;

/**
 * @brief xcb_poly_fill_arc_request_t
 **/
struct xcb_poly_fill_arc_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
}

enum xcb_image_format_t {
	XCB_IMAGE_FORMAT_XY_BITMAP = 0,
	XCB_IMAGE_FORMAT_XY_PIXMAP = 1,
	XCB_IMAGE_FORMAT_Z_PIXMAP = 2
}

alias XCB_IMAGE_FORMAT_XY_BITMAP = xcb_image_format_t.XCB_IMAGE_FORMAT_XY_BITMAP;
alias XCB_IMAGE_FORMAT_XY_PIXMAP = xcb_image_format_t.XCB_IMAGE_FORMAT_XY_PIXMAP;
alias XCB_IMAGE_FORMAT_Z_PIXMAP = xcb_image_format_t.XCB_IMAGE_FORMAT_Z_PIXMAP;

/** Opcode for xcb_put_image. */
enum XCB_PUT_IMAGE = 72;

/**
 * @brief xcb_put_image_request_t
 **/
struct xcb_put_image_request_t {
	ubyte major_opcode; /**<  */
	ubyte format; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	short dst_x; /**<  */
	short dst_y; /**<  */
	ubyte left_pad; /**<  */
	ubyte depth; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_get_image_cookie_t
 **/
struct xcb_get_image_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_image. */
enum XCB_GET_IMAGE = 73;

/**
 * @brief xcb_get_image_request_t
 **/
struct xcb_get_image_request_t {
	ubyte major_opcode; /**<  */
	ubyte format; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	uint plane_mask; /**<  */
}

/**
 * @brief xcb_get_image_reply_t
 **/
struct xcb_get_image_reply_t {
	ubyte response_type; /**<  */
	ubyte depth; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_visualid_t visual; /**<  */
	ubyte[20] pad0; /**<  */
}

/** Opcode for xcb_poly_text_8. */
enum XCB_POLY_TEXT_8 = 74;

/**
 * @brief xcb_poly_text_8_request_t
 **/
struct xcb_poly_text_8_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	short x; /**<  */
	short y; /**<  */
}

/** Opcode for xcb_poly_text_16. */
enum XCB_POLY_TEXT_16 = 75;

/**
 * @brief xcb_poly_text_16_request_t
 **/
struct xcb_poly_text_16_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	short x; /**<  */
	short y; /**<  */
}

/** Opcode for xcb_image_text_8. */
enum XCB_IMAGE_TEXT_8 = 76;

/**
 * @brief xcb_image_text_8_request_t
 **/
struct xcb_image_text_8_request_t {
	ubyte major_opcode; /**<  */
	ubyte string_len; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	short x; /**<  */
	short y; /**<  */
}

/** Opcode for xcb_image_text_16. */
enum XCB_IMAGE_TEXT_16 = 77;

/**
 * @brief xcb_image_text_16_request_t
 **/
struct xcb_image_text_16_request_t {
	ubyte major_opcode; /**<  */
	ubyte string_len; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_gcontext_t gc; /**<  */
	short x; /**<  */
	short y; /**<  */
}

enum xcb_colormap_alloc_t {
	XCB_COLORMAP_ALLOC_NONE = 0,
	XCB_COLORMAP_ALLOC_ALL = 1
}

alias XCB_COLORMAP_ALLOC_NONE = xcb_colormap_alloc_t.XCB_COLORMAP_ALLOC_NONE;
alias XCB_COLORMAP_ALLOC_ALL = xcb_colormap_alloc_t.XCB_COLORMAP_ALLOC_ALL;

/** Opcode for xcb_create_colormap. */
enum XCB_CREATE_COLORMAP = 78;

/**
 * @brief xcb_create_colormap_request_t
 **/
struct xcb_create_colormap_request_t {
	ubyte major_opcode; /**<  */
	ubyte alloc; /**<  */
	ushort length; /**<  */
	xcb_colormap_t mid; /**<  */
	xcb_window_t window; /**<  */
	xcb_visualid_t visual; /**<  */
}

/** Opcode for xcb_free_colormap. */
enum XCB_FREE_COLORMAP = 79;

/**
 * @brief xcb_free_colormap_request_t
 **/
struct xcb_free_colormap_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
}

/** Opcode for xcb_copy_colormap_and_free. */
enum XCB_COPY_COLORMAP_AND_FREE = 80;

/**
 * @brief xcb_copy_colormap_and_free_request_t
 **/
struct xcb_copy_colormap_and_free_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_colormap_t mid; /**<  */
	xcb_colormap_t src_cmap; /**<  */
}

/** Opcode for xcb_install_colormap. */
enum XCB_INSTALL_COLORMAP = 81;

/**
 * @brief xcb_install_colormap_request_t
 **/
struct xcb_install_colormap_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
}

/** Opcode for xcb_uninstall_colormap. */
enum XCB_UNINSTALL_COLORMAP = 82;

/**
 * @brief xcb_uninstall_colormap_request_t
 **/
struct xcb_uninstall_colormap_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
}

/**
 * @brief xcb_list_installed_colormaps_cookie_t
 **/
struct xcb_list_installed_colormaps_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_list_installed_colormaps. */
enum XCB_LIST_INSTALLED_COLORMAPS = 83;

/**
 * @brief xcb_list_installed_colormaps_request_t
 **/
struct xcb_list_installed_colormaps_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_list_installed_colormaps_reply_t
 **/
struct xcb_list_installed_colormaps_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort cmaps_len; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_alloc_color_cookie_t
 **/
struct xcb_alloc_color_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_alloc_color. */
enum XCB_ALLOC_COLOR = 84;

/**
 * @brief xcb_alloc_color_request_t
 **/
struct xcb_alloc_color_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
	ushort red; /**<  */
	ushort green; /**<  */
	ushort blue; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_alloc_color_reply_t
 **/
struct xcb_alloc_color_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort red; /**<  */
	ushort green; /**<  */
	ushort blue; /**<  */
	ubyte[2] pad1; /**<  */
	uint pixel; /**<  */
}

/**
 * @brief xcb_alloc_named_color_cookie_t
 **/
struct xcb_alloc_named_color_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_alloc_named_color. */
enum XCB_ALLOC_NAMED_COLOR = 85;

/**
 * @brief xcb_alloc_named_color_request_t
 **/
struct xcb_alloc_named_color_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
	ushort name_len; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_alloc_named_color_reply_t
 **/
struct xcb_alloc_named_color_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint pixel; /**<  */
	ushort exact_red; /**<  */
	ushort exact_green; /**<  */
	ushort exact_blue; /**<  */
	ushort visual_red; /**<  */
	ushort visual_green; /**<  */
	ushort visual_blue; /**<  */
}

/**
 * @brief xcb_alloc_color_cells_cookie_t
 **/
struct xcb_alloc_color_cells_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_alloc_color_cells. */
enum XCB_ALLOC_COLOR_CELLS = 86;

/**
 * @brief xcb_alloc_color_cells_request_t
 **/
struct xcb_alloc_color_cells_request_t {
	ubyte major_opcode; /**<  */
	ubyte contiguous; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
	ushort colors; /**<  */
	ushort planes; /**<  */
}

/**
 * @brief xcb_alloc_color_cells_reply_t
 **/
struct xcb_alloc_color_cells_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort pixels_len; /**<  */
	ushort masks_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_alloc_color_planes_cookie_t
 **/
struct xcb_alloc_color_planes_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_alloc_color_planes. */
enum XCB_ALLOC_COLOR_PLANES = 87;

/**
 * @brief xcb_alloc_color_planes_request_t
 **/
struct xcb_alloc_color_planes_request_t {
	ubyte major_opcode; /**<  */
	ubyte contiguous; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
	ushort colors; /**<  */
	ushort reds; /**<  */
	ushort greens; /**<  */
	ushort blues; /**<  */
}

/**
 * @brief xcb_alloc_color_planes_reply_t
 **/
struct xcb_alloc_color_planes_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort pixels_len; /**<  */
	ubyte[2] pad1; /**<  */
	uint red_mask; /**<  */
	uint green_mask; /**<  */
	uint blue_mask; /**<  */
	ubyte[8] pad2; /**<  */
}

/** Opcode for xcb_free_colors. */
enum XCB_FREE_COLORS = 88;

/**
 * @brief xcb_free_colors_request_t
 **/
struct xcb_free_colors_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
	uint plane_mask; /**<  */
}

enum xcb_color_flag_t {
	XCB_COLOR_FLAG_RED = 1,
	XCB_COLOR_FLAG_GREEN = 2,
	XCB_COLOR_FLAG_BLUE = 4
}

alias XCB_COLOR_FLAG_RED = xcb_color_flag_t.XCB_COLOR_FLAG_RED;
alias XCB_COLOR_FLAG_GREEN = xcb_color_flag_t.XCB_COLOR_FLAG_GREEN;
alias XCB_COLOR_FLAG_BLUE = xcb_color_flag_t.XCB_COLOR_FLAG_BLUE;

/**
 * @brief xcb_coloritem_t
 **/
struct xcb_coloritem_t {
	uint pixel; /**<  */
	ushort red; /**<  */
	ushort green; /**<  */
	ushort blue; /**<  */
	ubyte flags; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_coloritem_iterator_t
 **/
struct xcb_coloritem_iterator_t {
	xcb_coloritem_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_store_colors. */
enum XCB_STORE_COLORS = 89;

/**
 * @brief xcb_store_colors_request_t
 **/
struct xcb_store_colors_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
}

/** Opcode for xcb_store_named_color. */
enum XCB_STORE_NAMED_COLOR = 90;

/**
 * @brief xcb_store_named_color_request_t
 **/
struct xcb_store_named_color_request_t {
	ubyte major_opcode; /**<  */
	ubyte flags; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
	uint pixel; /**<  */
	ushort name_len; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_rgb_t
 **/
struct xcb_rgb_t {
	ushort red; /**<  */
	ushort green; /**<  */
	ushort blue; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_rgb_iterator_t
 **/
struct xcb_rgb_iterator_t {
	xcb_rgb_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_query_colors_cookie_t
 **/
struct xcb_query_colors_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_query_colors. */
enum XCB_QUERY_COLORS = 91;

/**
 * @brief xcb_query_colors_request_t
 **/
struct xcb_query_colors_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
}

/**
 * @brief xcb_query_colors_reply_t
 **/
struct xcb_query_colors_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort colors_len; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_lookup_color_cookie_t
 **/
struct xcb_lookup_color_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_lookup_color. */
enum XCB_LOOKUP_COLOR = 92;

/**
 * @brief xcb_lookup_color_request_t
 **/
struct xcb_lookup_color_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_colormap_t cmap; /**<  */
	ushort name_len; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_lookup_color_reply_t
 **/
struct xcb_lookup_color_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort exact_red; /**<  */
	ushort exact_green; /**<  */
	ushort exact_blue; /**<  */
	ushort visual_red; /**<  */
	ushort visual_green; /**<  */
	ushort visual_blue; /**<  */
}

enum xcb_pixmap_enum_t {
	XCB_PIXMAP_NONE = 0
}

alias XCB_PIXMAP_NONE = xcb_pixmap_enum_t.XCB_PIXMAP_NONE;

/** Opcode for xcb_create_cursor. */
enum XCB_CREATE_CURSOR = 93;

/**
 * @brief xcb_create_cursor_request_t
 **/
struct xcb_create_cursor_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_cursor_t cid; /**<  */
	xcb_pixmap_t source; /**<  */
	xcb_pixmap_t mask; /**<  */
	ushort fore_red; /**<  */
	ushort fore_green; /**<  */
	ushort fore_blue; /**<  */
	ushort back_red; /**<  */
	ushort back_green; /**<  */
	ushort back_blue; /**<  */
	ushort x; /**<  */
	ushort y; /**<  */
}

enum xcb_font_enum_t {
	XCB_FONT_NONE = 0
}

alias XCB_FONT_NONE = xcb_font_enum_t.XCB_FONT_NONE;

/** Opcode for xcb_create_glyph_cursor. */
enum XCB_CREATE_GLYPH_CURSOR = 94;

/**
 * @brief xcb_create_glyph_cursor_request_t
 **/
struct xcb_create_glyph_cursor_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_cursor_t cid; /**<  */
	xcb_font_t source_font; /**<  */
	xcb_font_t mask_font; /**<  */
	ushort source_char; /**<  */
	ushort mask_char; /**<  */
	ushort fore_red; /**<  */
	ushort fore_green; /**<  */
	ushort fore_blue; /**<  */
	ushort back_red; /**<  */
	ushort back_green; /**<  */
	ushort back_blue; /**<  */
}

/** Opcode for xcb_free_cursor. */
enum XCB_FREE_CURSOR = 95;

/**
 * @brief xcb_free_cursor_request_t
 **/
struct xcb_free_cursor_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_cursor_t cursor; /**<  */
}

/** Opcode for xcb_recolor_cursor. */
enum XCB_RECOLOR_CURSOR = 96;

/**
 * @brief xcb_recolor_cursor_request_t
 **/
struct xcb_recolor_cursor_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_cursor_t cursor; /**<  */
	ushort fore_red; /**<  */
	ushort fore_green; /**<  */
	ushort fore_blue; /**<  */
	ushort back_red; /**<  */
	ushort back_green; /**<  */
	ushort back_blue; /**<  */
}

enum xcb_query_shape_of_t {
	XCB_QUERY_SHAPE_OF_LARGEST_CURSOR = 0,
	XCB_QUERY_SHAPE_OF_FASTEST_TILE = 1,
	XCB_QUERY_SHAPE_OF_FASTEST_STIPPLE = 2
}

alias XCB_QUERY_SHAPE_OF_LARGEST_CURSOR = xcb_query_shape_of_t.XCB_QUERY_SHAPE_OF_LARGEST_CURSOR;
alias XCB_QUERY_SHAPE_OF_FASTEST_TILE = xcb_query_shape_of_t.XCB_QUERY_SHAPE_OF_FASTEST_TILE;
alias XCB_QUERY_SHAPE_OF_FASTEST_STIPPLE = xcb_query_shape_of_t.XCB_QUERY_SHAPE_OF_FASTEST_STIPPLE;

/**
 * @brief xcb_query_best_size_cookie_t
 **/
struct xcb_query_best_size_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_query_best_size. */
enum XCB_QUERY_BEST_SIZE = 97;

/**
 * @brief xcb_query_best_size_request_t
 **/
struct xcb_query_best_size_request_t {
	ubyte major_opcode; /**<  */
	ubyte class_; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

/**
 * @brief xcb_query_best_size_reply_t
 **/
struct xcb_query_best_size_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

/**
 * @brief xcb_query_extension_cookie_t
 **/
struct xcb_query_extension_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_query_extension. */
enum XCB_QUERY_EXTENSION = 98;

/**
 * @brief xcb_query_extension_request_t
 **/
struct xcb_query_extension_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	ushort name_len; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_query_extension_reply_t
 **/
struct xcb_query_extension_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte present; /**<  */
	ubyte major_opcode; /**<  */
	ubyte first_event; /**<  */
	ubyte first_error; /**<  */
}

/**
 * @brief xcb_list_extensions_cookie_t
 **/
struct xcb_list_extensions_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_list_extensions. */
enum XCB_LIST_EXTENSIONS = 99;

/**
 * @brief xcb_list_extensions_request_t
 **/
struct xcb_list_extensions_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_list_extensions_reply_t
 **/
struct xcb_list_extensions_reply_t {
	ubyte response_type; /**<  */
	ubyte names_len; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad0; /**<  */
}

/** Opcode for xcb_change_keyboard_mapping. */
enum XCB_CHANGE_KEYBOARD_MAPPING = 100;

/**
 * @brief xcb_change_keyboard_mapping_request_t
 **/
struct xcb_change_keyboard_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte keycode_count; /**<  */
	ushort length; /**<  */
	xcb_keycode_t first_keycode; /**<  */
	ubyte keysyms_per_keycode; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_get_keyboard_mapping_cookie_t
 **/
struct xcb_get_keyboard_mapping_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_keyboard_mapping. */
enum XCB_GET_KEYBOARD_MAPPING = 101;

/**
 * @brief xcb_get_keyboard_mapping_request_t
 **/
struct xcb_get_keyboard_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_keycode_t first_keycode; /**<  */
	ubyte count; /**<  */
}

/**
 * @brief xcb_get_keyboard_mapping_reply_t
 **/
struct xcb_get_keyboard_mapping_reply_t {
	ubyte response_type; /**<  */
	ubyte keysyms_per_keycode; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad0; /**<  */
}

enum xcb_kb_t {
	XCB_KB_KEY_CLICK_PERCENT = 1,
	XCB_KB_BELL_PERCENT = 2,
	XCB_KB_BELL_PITCH = 4,
	XCB_KB_BELL_DURATION = 8,
	XCB_KB_LED = 16,
	XCB_KB_LED_MODE = 32,
	XCB_KB_KEY = 64,
	XCB_KB_AUTO_REPEAT_MODE = 128
}

alias XCB_KB_KEY_CLICK_PERCENT = xcb_kb_t.XCB_KB_KEY_CLICK_PERCENT;
alias XCB_KB_BELL_PERCENT = xcb_kb_t.XCB_KB_BELL_PERCENT;
alias XCB_KB_BELL_PITCH = xcb_kb_t.XCB_KB_BELL_PITCH;
alias XCB_KB_BELL_DURATION = xcb_kb_t.XCB_KB_BELL_DURATION;
alias XCB_KB_LED = xcb_kb_t.XCB_KB_LED;
alias XCB_KB_LED_MODE = xcb_kb_t.XCB_KB_LED_MODE;
alias XCB_KB_KEY = xcb_kb_t.XCB_KB_KEY;
alias XCB_KB_AUTO_REPEAT_MODE = xcb_kb_t.XCB_KB_AUTO_REPEAT_MODE;

enum xcb_led_mode_t {
	XCB_LED_MODE_OFF = 0,
	XCB_LED_MODE_ON = 1
}

alias XCB_LED_MODE_OFF = xcb_led_mode_t.XCB_LED_MODE_OFF;
alias XCB_LED_MODE_ON = xcb_led_mode_t.XCB_LED_MODE_ON;

enum xcb_auto_repeat_mode_t {
	XCB_AUTO_REPEAT_MODE_OFF = 0,
	XCB_AUTO_REPEAT_MODE_ON = 1,
	XCB_AUTO_REPEAT_MODE_DEFAULT = 2
}

alias XCB_AUTO_REPEAT_MODE_OFF = xcb_auto_repeat_mode_t.XCB_AUTO_REPEAT_MODE_OFF;
alias XCB_AUTO_REPEAT_MODE_ON = xcb_auto_repeat_mode_t.XCB_AUTO_REPEAT_MODE_ON;
alias XCB_AUTO_REPEAT_MODE_DEFAULT = xcb_auto_repeat_mode_t.XCB_AUTO_REPEAT_MODE_DEFAULT;

/** Opcode for xcb_change_keyboard_control. */
enum XCB_CHANGE_KEYBOARD_CONTROL = 102;

/**
 * @brief xcb_change_keyboard_control_request_t
 **/
struct xcb_change_keyboard_control_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	uint value_mask; /**<  */
}

/**
 * @brief xcb_get_keyboard_control_cookie_t
 **/
struct xcb_get_keyboard_control_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_keyboard_control. */
enum XCB_GET_KEYBOARD_CONTROL = 103;

/**
 * @brief xcb_get_keyboard_control_request_t
 **/
struct xcb_get_keyboard_control_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_get_keyboard_control_reply_t
 **/
struct xcb_get_keyboard_control_reply_t {
	ubyte response_type; /**<  */
	ubyte global_auto_repeat; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint led_mask; /**<  */
	ubyte key_click_percent; /**<  */
	ubyte bell_percent; /**<  */
	ushort bell_pitch; /**<  */
	ushort bell_duration; /**<  */
	ubyte[2] pad0; /**<  */
	ubyte[32] auto_repeats; /**<  */
}

/** Opcode for xcb_bell. */
enum XCB_BELL = 104;

/**
 * @brief xcb_bell_request_t
 **/
struct xcb_bell_request_t {
	ubyte major_opcode; /**<  */
	byte percent; /**<  */
	ushort length; /**<  */
}

/** Opcode for xcb_change_pointer_control. */
enum XCB_CHANGE_POINTER_CONTROL = 105;

/**
 * @brief xcb_change_pointer_control_request_t
 **/
struct xcb_change_pointer_control_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	short acceleration_numerator; /**<  */
	short acceleration_denominator; /**<  */
	short threshold; /**<  */
	ubyte do_acceleration; /**<  */
	ubyte do_threshold; /**<  */
}

/**
 * @brief xcb_get_pointer_control_cookie_t
 **/
struct xcb_get_pointer_control_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_pointer_control. */
enum XCB_GET_POINTER_CONTROL = 106;

/**
 * @brief xcb_get_pointer_control_request_t
 **/
struct xcb_get_pointer_control_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_get_pointer_control_reply_t
 **/
struct xcb_get_pointer_control_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort acceleration_numerator; /**<  */
	ushort acceleration_denominator; /**<  */
	ushort threshold; /**<  */
	ubyte[18] pad1; /**<  */
}

enum xcb_blanking_t {
	XCB_BLANKING_NOT_PREFERRED = 0,
	XCB_BLANKING_PREFERRED = 1,
	XCB_BLANKING_DEFAULT = 2
}

alias XCB_BLANKING_NOT_PREFERRED = xcb_blanking_t.XCB_BLANKING_NOT_PREFERRED;
alias XCB_BLANKING_PREFERRED = xcb_blanking_t.XCB_BLANKING_PREFERRED;
alias XCB_BLANKING_DEFAULT = xcb_blanking_t.XCB_BLANKING_DEFAULT;

enum xcb_exposures_t {
	XCB_EXPOSURES_NOT_ALLOWED = 0,
	XCB_EXPOSURES_ALLOWED = 1,
	XCB_EXPOSURES_DEFAULT = 2
}

alias XCB_EXPOSURES_NOT_ALLOWED = xcb_exposures_t.XCB_EXPOSURES_NOT_ALLOWED;
alias XCB_EXPOSURES_ALLOWED = xcb_exposures_t.XCB_EXPOSURES_ALLOWED;
alias XCB_EXPOSURES_DEFAULT = xcb_exposures_t.XCB_EXPOSURES_DEFAULT;

/** Opcode for xcb_set_screen_saver. */
enum XCB_SET_SCREEN_SAVER = 107;

/**
 * @brief xcb_set_screen_saver_request_t
 **/
struct xcb_set_screen_saver_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	short timeout; /**<  */
	short interval; /**<  */
	ubyte prefer_blanking; /**<  */
	ubyte allow_exposures; /**<  */
}

/**
 * @brief xcb_get_screen_saver_cookie_t
 **/
struct xcb_get_screen_saver_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_screen_saver. */
enum XCB_GET_SCREEN_SAVER = 108;

/**
 * @brief xcb_get_screen_saver_request_t
 **/
struct xcb_get_screen_saver_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_get_screen_saver_reply_t
 **/
struct xcb_get_screen_saver_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort timeout; /**<  */
	ushort interval; /**<  */
	ubyte prefer_blanking; /**<  */
	ubyte allow_exposures; /**<  */
	ubyte[18] pad1; /**<  */
}

enum xcb_host_mode_t {
	XCB_HOST_MODE_INSERT = 0,
	XCB_HOST_MODE_DELETE = 1
}

alias XCB_HOST_MODE_INSERT = xcb_host_mode_t.XCB_HOST_MODE_INSERT;
alias XCB_HOST_MODE_DELETE = xcb_host_mode_t.XCB_HOST_MODE_DELETE;

enum xcb_family_t {
	XCB_FAMILY_INTERNET = 0,
	XCB_FAMILY_DECNET = 1,
	XCB_FAMILY_CHAOS = 2,
	XCB_FAMILY_SERVER_INTERPRETED = 5,
	XCB_FAMILY_INTERNET_6 = 6
}

alias XCB_FAMILY_INTERNET = xcb_family_t.XCB_FAMILY_INTERNET;
alias XCB_FAMILY_DECNET = xcb_family_t.XCB_FAMILY_DECNET;
alias XCB_FAMILY_CHAOS = xcb_family_t.XCB_FAMILY_CHAOS;
alias XCB_FAMILY_SERVER_INTERPRETED = xcb_family_t.XCB_FAMILY_SERVER_INTERPRETED;
alias XCB_FAMILY_INTERNET_6 = xcb_family_t.XCB_FAMILY_INTERNET_6;

/** Opcode for xcb_change_hosts. */
enum XCB_CHANGE_HOSTS = 109;

/**
 * @brief xcb_change_hosts_request_t
 **/
struct xcb_change_hosts_request_t {
	ubyte major_opcode; /**<  */
	ubyte mode; /**<  */
	ushort length; /**<  */
	ubyte family; /**<  */
	ubyte pad0; /**<  */
	ushort address_len; /**<  */
}

/**
 * @brief xcb_host_t
 **/
struct xcb_host_t {
	ubyte family; /**<  */
	ubyte pad0; /**<  */
	ushort address_len; /**<  */
}

/**
 * @brief xcb_host_iterator_t
 **/
struct xcb_host_iterator_t {
	xcb_host_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_list_hosts_cookie_t
 **/
struct xcb_list_hosts_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_list_hosts. */
enum XCB_LIST_HOSTS = 110;

/**
 * @brief xcb_list_hosts_request_t
 **/
struct xcb_list_hosts_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_list_hosts_reply_t
 **/
struct xcb_list_hosts_reply_t {
	ubyte response_type; /**<  */
	ubyte mode; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort hosts_len; /**<  */
	ubyte[22] pad0; /**<  */
}

enum xcb_access_control_t {
	XCB_ACCESS_CONTROL_DISABLE = 0,
	XCB_ACCESS_CONTROL_ENABLE = 1
}

alias XCB_ACCESS_CONTROL_DISABLE = xcb_access_control_t.XCB_ACCESS_CONTROL_DISABLE;
alias XCB_ACCESS_CONTROL_ENABLE = xcb_access_control_t.XCB_ACCESS_CONTROL_ENABLE;

/** Opcode for xcb_set_access_control. */
enum XCB_SET_ACCESS_CONTROL = 111;

/**
 * @brief xcb_set_access_control_request_t
 **/
struct xcb_set_access_control_request_t {
	ubyte major_opcode; /**<  */
	ubyte mode; /**<  */
	ushort length; /**<  */
}

enum xcb_close_down_t {
	XCB_CLOSE_DOWN_DESTROY_ALL = 0,
	XCB_CLOSE_DOWN_RETAIN_PERMANENT = 1,
	XCB_CLOSE_DOWN_RETAIN_TEMPORARY = 2
}

alias XCB_CLOSE_DOWN_DESTROY_ALL = xcb_close_down_t.XCB_CLOSE_DOWN_DESTROY_ALL;
alias XCB_CLOSE_DOWN_RETAIN_PERMANENT = xcb_close_down_t.XCB_CLOSE_DOWN_RETAIN_PERMANENT;
alias XCB_CLOSE_DOWN_RETAIN_TEMPORARY = xcb_close_down_t.XCB_CLOSE_DOWN_RETAIN_TEMPORARY;

/** Opcode for xcb_set_close_down_mode. */
enum XCB_SET_CLOSE_DOWN_MODE = 112;

/**
 * @brief xcb_set_close_down_mode_request_t
 **/
struct xcb_set_close_down_mode_request_t {
	ubyte major_opcode; /**<  */
	ubyte mode; /**<  */
	ushort length; /**<  */
}

enum xcb_kill_t {
	XCB_KILL_ALL_TEMPORARY = 0
}

alias XCB_KILL_ALL_TEMPORARY = xcb_kill_t.XCB_KILL_ALL_TEMPORARY;

/** Opcode for xcb_kill_client. */
enum XCB_KILL_CLIENT = 113;

/**
 * @brief xcb_kill_client_request_t
 **/
struct xcb_kill_client_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	uint resource; /**<  */
}

/** Opcode for xcb_rotate_properties. */
enum XCB_ROTATE_PROPERTIES = 114;

/**
 * @brief xcb_rotate_properties_request_t
 **/
struct xcb_rotate_properties_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ushort atoms_len; /**<  */
	short delta; /**<  */
}

enum xcb_screen_saver_t {
	XCB_SCREEN_SAVER_RESET = 0,
	XCB_SCREEN_SAVER_ACTIVE = 1
}

alias XCB_SCREEN_SAVER_RESET = xcb_screen_saver_t.XCB_SCREEN_SAVER_RESET;
alias XCB_SCREEN_SAVER_ACTIVE = xcb_screen_saver_t.XCB_SCREEN_SAVER_ACTIVE;

/** Opcode for xcb_force_screen_saver. */
enum XCB_FORCE_SCREEN_SAVER = 115;

/**
 * @brief xcb_force_screen_saver_request_t
 **/
struct xcb_force_screen_saver_request_t {
	ubyte major_opcode; /**<  */
	ubyte mode; /**<  */
	ushort length; /**<  */
}

enum xcb_mapping_status_t {
	XCB_MAPPING_STATUS_SUCCESS = 0,
	XCB_MAPPING_STATUS_BUSY = 1,
	XCB_MAPPING_STATUS_FAILURE = 2
}

alias XCB_MAPPING_STATUS_SUCCESS = xcb_mapping_status_t.XCB_MAPPING_STATUS_SUCCESS;
alias XCB_MAPPING_STATUS_BUSY = xcb_mapping_status_t.XCB_MAPPING_STATUS_BUSY;
alias XCB_MAPPING_STATUS_FAILURE = xcb_mapping_status_t.XCB_MAPPING_STATUS_FAILURE;

/**
 * @brief xcb_set_pointer_mapping_cookie_t
 **/
struct xcb_set_pointer_mapping_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_set_pointer_mapping. */
enum XCB_SET_POINTER_MAPPING = 116;

/**
 * @brief xcb_set_pointer_mapping_request_t
 **/
struct xcb_set_pointer_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte map_len; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_set_pointer_mapping_reply_t
 **/
struct xcb_set_pointer_mapping_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
}

/**
 * @brief xcb_get_pointer_mapping_cookie_t
 **/
struct xcb_get_pointer_mapping_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_pointer_mapping. */
enum XCB_GET_POINTER_MAPPING = 117;

/**
 * @brief xcb_get_pointer_mapping_request_t
 **/
struct xcb_get_pointer_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_get_pointer_mapping_reply_t
 **/
struct xcb_get_pointer_mapping_reply_t {
	ubyte response_type; /**<  */
	ubyte map_len; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad0; /**<  */
}

enum xcb_map_index_t {
	XCB_MAP_INDEX_SHIFT = 0,
	XCB_MAP_INDEX_LOCK = 1,
	XCB_MAP_INDEX_CONTROL = 2,
	XCB_MAP_INDEX_1 = 3,
	XCB_MAP_INDEX_2 = 4,
	XCB_MAP_INDEX_3 = 5,
	XCB_MAP_INDEX_4 = 6,
	XCB_MAP_INDEX_5 = 7
}

alias XCB_MAP_INDEX_SHIFT = xcb_map_index_t.XCB_MAP_INDEX_SHIFT;
alias XCB_MAP_INDEX_LOCK = xcb_map_index_t.XCB_MAP_INDEX_LOCK;
alias XCB_MAP_INDEX_CONTROL = xcb_map_index_t.XCB_MAP_INDEX_CONTROL;
alias XCB_MAP_INDEX_1 = xcb_map_index_t.XCB_MAP_INDEX_1;
alias XCB_MAP_INDEX_2 = xcb_map_index_t.XCB_MAP_INDEX_2;
alias XCB_MAP_INDEX_3 = xcb_map_index_t.XCB_MAP_INDEX_3;
alias XCB_MAP_INDEX_4 = xcb_map_index_t.XCB_MAP_INDEX_4;
alias XCB_MAP_INDEX_5 = xcb_map_index_t.XCB_MAP_INDEX_5;

/**
 * @brief xcb_set_modifier_mapping_cookie_t
 **/
struct xcb_set_modifier_mapping_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_set_modifier_mapping. */
enum XCB_SET_MODIFIER_MAPPING = 118;

/**
 * @brief xcb_set_modifier_mapping_request_t
 **/
struct xcb_set_modifier_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte keycodes_per_modifier; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_set_modifier_mapping_reply_t
 **/
struct xcb_set_modifier_mapping_reply_t {
	ubyte response_type; /**<  */
	ubyte status; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
}

/**
 * @brief xcb_get_modifier_mapping_cookie_t
 **/
struct xcb_get_modifier_mapping_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_get_modifier_mapping. */
enum XCB_GET_MODIFIER_MAPPING = 119;

/**
 * @brief xcb_get_modifier_mapping_request_t
 **/
struct xcb_get_modifier_mapping_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_get_modifier_mapping_reply_t
 **/
struct xcb_get_modifier_mapping_reply_t {
	ubyte response_type; /**<  */
	ubyte keycodes_per_modifier; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad0; /**<  */
}

/** Opcode for xcb_no_operation. */
enum XCB_NO_OPERATION = 127;

/**
 * @brief xcb_no_operation_request_t
 **/
struct xcb_no_operation_request_t {
	ubyte major_opcode; /**<  */
	ubyte pad0; /**<  */
	ushort length; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_char2b_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_char2b_t)
 */
void xcb_char2b_next(xcb_char2b_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_char2b_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_char2b_end(xcb_char2b_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_window_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_window_t)
 */
void xcb_window_next(xcb_window_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_window_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_window_end(xcb_window_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_pixmap_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_pixmap_t)
 */
void xcb_pixmap_next(xcb_pixmap_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_pixmap_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_pixmap_end(xcb_pixmap_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_cursor_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_cursor_t)
 */
void xcb_cursor_next(xcb_cursor_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_cursor_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_cursor_end(xcb_cursor_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_font_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_font_t)
 */
void xcb_font_next(xcb_font_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_font_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_font_end(xcb_font_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_gcontext_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_gcontext_t)
 */
void xcb_gcontext_next(xcb_gcontext_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_gcontext_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_gcontext_end(xcb_gcontext_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_colormap_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_colormap_t)
 */
void xcb_colormap_next(xcb_colormap_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_colormap_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_colormap_end(xcb_colormap_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_atom_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_atom_t)
 */
void xcb_atom_next(xcb_atom_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_atom_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_atom_end(xcb_atom_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_drawable_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_drawable_t)
 */
void xcb_drawable_next(xcb_drawable_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_drawable_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_drawable_end(xcb_drawable_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_fontable_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_fontable_t)
 */
void xcb_fontable_next(xcb_fontable_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_fontable_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_fontable_end(xcb_fontable_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_visualid_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_visualid_t)
 */
void xcb_visualid_next(xcb_visualid_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_visualid_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_visualid_end(xcb_visualid_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_timestamp_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_timestamp_t)
 */
void xcb_timestamp_next(xcb_timestamp_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_timestamp_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_timestamp_end(xcb_timestamp_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_keysym_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_keysym_t)
 */
void xcb_keysym_next(xcb_keysym_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_keysym_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_keysym_end(xcb_keysym_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_keycode_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_keycode_t)
 */
void xcb_keycode_next(xcb_keycode_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_keycode_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_keycode_end(xcb_keycode_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_button_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_button_t)
 */
void xcb_button_next(xcb_button_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_button_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_button_end(xcb_button_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_point_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_point_t)
 */
void xcb_point_next(xcb_point_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_point_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_point_end(xcb_point_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_rectangle_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_rectangle_t)
 */
void xcb_rectangle_next(xcb_rectangle_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_rectangle_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_rectangle_end(xcb_rectangle_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_arc_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_arc_t)
 */
void xcb_arc_next(xcb_arc_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_arc_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_arc_end(xcb_arc_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_format_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_format_t)
 */
void xcb_format_next(xcb_format_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_format_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_format_end(xcb_format_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_visualtype_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_visualtype_t)
 */
void xcb_visualtype_next(xcb_visualtype_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_visualtype_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_visualtype_end(xcb_visualtype_iterator_t i /**< */ );

int xcb_depth_sizeof(const void* _buffer /**< */ );

xcb_visualtype_t* xcb_depth_visuals(const xcb_depth_t* R /**< */ );

int xcb_depth_visuals_length(const xcb_depth_t* R /**< */ );

xcb_visualtype_iterator_t xcb_depth_visuals_iterator(const xcb_depth_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_depth_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_depth_t)
 */
void xcb_depth_next(xcb_depth_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_depth_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_depth_end(xcb_depth_iterator_t i /**< */ );

int xcb_screen_sizeof(const void* _buffer /**< */ );

int xcb_screen_allowed_depths_length(const xcb_screen_t* R /**< */ );

xcb_depth_iterator_t xcb_screen_allowed_depths_iterator(const xcb_screen_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_screen_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_screen_t)
 */
void xcb_screen_next(xcb_screen_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_screen_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_screen_end(xcb_screen_iterator_t i /**< */ );

int xcb_setup_request_sizeof(const void* _buffer /**< */ );

char* xcb_setup_request_authorization_protocol_name(const xcb_setup_request_t* R /**< */ );

int xcb_setup_request_authorization_protocol_name_length(const xcb_setup_request_t* R /**< */ );

xcb_generic_iterator_t xcb_setup_request_authorization_protocol_name_end(const xcb_setup_request_t* R /**< */ );

char* xcb_setup_request_authorization_protocol_data(const xcb_setup_request_t* R /**< */ );

int xcb_setup_request_authorization_protocol_data_length(const xcb_setup_request_t* R /**< */ );

xcb_generic_iterator_t xcb_setup_request_authorization_protocol_data_end(const xcb_setup_request_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_request_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_request_t)
 */
void xcb_setup_request_next(xcb_setup_request_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_request_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_setup_request_end(xcb_setup_request_iterator_t i /**< */ );

int xcb_setup_failed_sizeof(const void* _buffer /**< */ );

char* xcb_setup_failed_reason(const xcb_setup_failed_t* R /**< */ );

int xcb_setup_failed_reason_length(const xcb_setup_failed_t* R /**< */ );

xcb_generic_iterator_t xcb_setup_failed_reason_end(const xcb_setup_failed_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_failed_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_failed_t)
 */
void xcb_setup_failed_next(xcb_setup_failed_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_failed_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_setup_failed_end(xcb_setup_failed_iterator_t i /**< */ );

int xcb_setup_authenticate_sizeof(const void* _buffer /**< */ );

char* xcb_setup_authenticate_reason(const xcb_setup_authenticate_t* R /**< */ );

int xcb_setup_authenticate_reason_length(const xcb_setup_authenticate_t* R /**< */ );

xcb_generic_iterator_t xcb_setup_authenticate_reason_end(const xcb_setup_authenticate_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_authenticate_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_authenticate_t)
 */
void xcb_setup_authenticate_next(xcb_setup_authenticate_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_authenticate_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_setup_authenticate_end(xcb_setup_authenticate_iterator_t i /**< */ );

int xcb_setup_sizeof(const void* _buffer /**< */ );

char* xcb_setup_vendor(const xcb_setup_t* R /**< */ );

int xcb_setup_vendor_length(const xcb_setup_t* R /**< */ );

xcb_generic_iterator_t xcb_setup_vendor_end(const xcb_setup_t* R /**< */ );

xcb_format_t* xcb_setup_pixmap_formats(const xcb_setup_t* R /**< */ );

int xcb_setup_pixmap_formats_length(const xcb_setup_t* R /**< */ );

xcb_format_iterator_t xcb_setup_pixmap_formats_iterator(const xcb_setup_t* R /**< */ );

int xcb_setup_roots_length(const xcb_setup_t* R /**< */ );

xcb_screen_iterator_t xcb_setup_roots_iterator(const xcb_setup_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_t)
 */
void xcb_setup_next(xcb_setup_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_setup_end(xcb_setup_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_client_message_data_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_client_message_data_t)
 */
void xcb_client_message_data_next(xcb_client_message_data_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_client_message_data_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_client_message_data_end(xcb_client_message_data_iterator_t i /**< */ );

int xcb_create_window_sizeof(const void* _buffer /**< */ );

/**
 * @brief Creates a window
 *
 * @param c The connection
 * @param depth Specifies the new window's depth (TODO: what unit?).
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
 * \a parent window.
 * @param wid The ID with which you will refer to the new window, created by
 * `xcb_generate_id`.
 * @param parent The parent window of the new window.
 * @param x The X coordinate of the new window.
 * @param y The Y coordinate of the new window.
 * @param width The width of the new window.
 * @param height The height of the new window.
 * @param border_width TODO:
 * \n
 * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
 * @param class_ A bitmask of #xcb_window_class_t values.
 * @param class_ \n
 * @param visual Specifies the id for the new window's visual.
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
 * \a parent window.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @return A cookie
 *
 * Creates an unmapped window as child of the specified \a parent window. A
 * CreateNotify event will be generated. The new window is placed on top in the
 * stacking order with respect to siblings.
 * 
 * The coordinate system has the X axis horizontal and the Y axis vertical with
 * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
 * of pixels, and coincide with pixel centers. Each window and pixmap has its own
 * coordinate system. For a window, the origin is inside the border at the inside,
 * upper-left corner.
 * 
 * The created window is not yet displayed (mapped), call `xcb_map_window` to
 * display it.
 * 
 * The created window will initially use the same cursor as its parent.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_create_window_checked(xcb_connection_t* c /**< */ , ubyte depth /**< */ , xcb_window_t wid /**< */ , xcb_window_t parent /**< */ , short x /**< */ ,
	short y /**< */ , ushort width /**< */ , ushort height /**< */ , ushort border_width /**< */ , ushort class_ /**< */ , xcb_visualid_t visual /**< */ ,
	uint value_mask /**< */ , const uint* value_list /**< */ );

/**
 * @brief Creates a window
 *
 * @param c The connection
 * @param depth Specifies the new window's depth (TODO: what unit?).
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
 * \a parent window.
 * @param wid The ID with which you will refer to the new window, created by
 * `xcb_generate_id`.
 * @param parent The parent window of the new window.
 * @param x The X coordinate of the new window.
 * @param y The Y coordinate of the new window.
 * @param width The width of the new window.
 * @param height The height of the new window.
 * @param border_width TODO:
 * \n
 * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
 * @param class_ A bitmask of #xcb_window_class_t values.
 * @param class_ \n
 * @param visual Specifies the id for the new window's visual.
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
 * \a parent window.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @return A cookie
 *
 * Creates an unmapped window as child of the specified \a parent window. A
 * CreateNotify event will be generated. The new window is placed on top in the
 * stacking order with respect to siblings.
 * 
 * The coordinate system has the X axis horizontal and the Y axis vertical with
 * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
 * of pixels, and coincide with pixel centers. Each window and pixmap has its own
 * coordinate system. For a window, the origin is inside the border at the inside,
 * upper-left corner.
 * 
 * The created window is not yet displayed (mapped), call `xcb_map_window` to
 * display it.
 * 
 * The created window will initially use the same cursor as its parent.
 *
 */
xcb_void_cookie_t xcb_create_window(xcb_connection_t* c /**< */ , ubyte depth /**< */ , xcb_window_t wid /**< */ , xcb_window_t parent /**< */ , short x /**< */ , short y /**< */ ,
	ushort width /**< */ , ushort height /**< */ , ushort border_width /**< */ , ushort class_ /**< */ , xcb_visualid_t visual /**< */ ,
	uint value_mask /**< */ , const uint* value_list /**< */ );

int xcb_change_window_attributes_sizeof(const void* _buffer /**< */ );

/**
 * @brief change window attributes
 *
 * @param c The connection
 * @param window The window to change.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @param value_mask \n
 * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the attributes specified by \a value_mask for the specified \a window.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_change_window_attributes_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	uint value_mask /**< */ , const uint* value_list /**< */ );

/**
 * @brief change window attributes
 *
 * @param c The connection
 * @param window The window to change.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @param value_mask \n
 * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the attributes specified by \a value_mask for the specified \a window.
 *
 */
xcb_void_cookie_t xcb_change_window_attributes(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	uint value_mask /**< */ , const uint* value_list /**< */ );

/**
 * @brief Gets window attributes
 *
 * @param c The connection
 * @param window The window to get the attributes from.
 * @return A cookie
 *
 * Gets the current attributes for the specified \a window.
 *
 */
xcb_get_window_attributes_cookie_t xcb_get_window_attributes(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * @brief Gets window attributes
 *
 * @param c The connection
 * @param window The window to get the attributes from.
 * @return A cookie
 *
 * Gets the current attributes for the specified \a window.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_get_window_attributes_cookie_t xcb_get_window_attributes_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_window_attributes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_window_attributes_reply_t* xcb_get_window_attributes_reply(xcb_connection_t* c /**< */ ,
	xcb_get_window_attributes_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @brief Destroys a window
 *
 * @param c The connection
 * @param window The window to destroy.
 * @return A cookie
 *
 * Destroys the specified window and all of its subwindows. A DestroyNotify event
 * is generated for each destroyed window (a DestroyNotify event is first generated
 * for any given window's inferiors). If the window was mapped, it will be
 * automatically unmapped before destroying.
 * 
 * Calling DestroyWindow on the root window will do nothing.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_destroy_window_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * @brief Destroys a window
 *
 * @param c The connection
 * @param window The window to destroy.
 * @return A cookie
 *
 * Destroys the specified window and all of its subwindows. A DestroyNotify event
 * is generated for each destroyed window (a DestroyNotify event is first generated
 * for any given window's inferiors). If the window was mapped, it will be
 * automatically unmapped before destroying.
 * 
 * Calling DestroyWindow on the root window will do nothing.
 *
 */
xcb_void_cookie_t xcb_destroy_window(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_void_cookie_t xcb_destroy_subwindows_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_destroy_subwindows(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * @brief Changes a client's save set
 *
 * @param c The connection
 * @param mode A bitmask of #xcb_set_mode_t values.
 * @param mode Insert to add the specified window to the save set or Delete to delete it from the save set.
 * @param window The window to add or delete to/from your save set.
 * @return A cookie
 *
 * TODO: explain what the save set is for.
 * 
 * This function either adds or removes the specified window to the client's (your
 * application's) save set.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_change_save_set_checked(xcb_connection_t* c /**< */ , ubyte mode /**< */ , xcb_window_t window /**< */ );

/**
 * @brief Changes a client's save set
 *
 * @param c The connection
 * @param mode A bitmask of #xcb_set_mode_t values.
 * @param mode Insert to add the specified window to the save set or Delete to delete it from the save set.
 * @param window The window to add or delete to/from your save set.
 * @return A cookie
 *
 * TODO: explain what the save set is for.
 * 
 * This function either adds or removes the specified window to the client's (your
 * application's) save set.
 *
 */
xcb_void_cookie_t xcb_change_save_set(xcb_connection_t* c /**< */ , ubyte mode /**< */ , xcb_window_t window /**< */ );

/**
 * @brief Reparents a window
 *
 * @param c The connection
 * @param window The window to reparent.
 * @param parent The new parent of the window.
 * @param x The X position of the window within its new parent.
 * @param y The Y position of the window within its new parent.
 * @return A cookie
 *
 * Makes the specified window a child of the specified parent window. If the
 * window is mapped, it will automatically be unmapped before reparenting and
 * re-mapped after reparenting. The window is placed in the stacking order on top
 * with respect to sibling windows.
 * 
 * After reparenting, a ReparentNotify event is generated.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_reparent_window_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_window_t parent /**< */ ,
	short x /**< */ , short y /**< */ );

/**
 * @brief Reparents a window
 *
 * @param c The connection
 * @param window The window to reparent.
 * @param parent The new parent of the window.
 * @param x The X position of the window within its new parent.
 * @param y The Y position of the window within its new parent.
 * @return A cookie
 *
 * Makes the specified window a child of the specified parent window. If the
 * window is mapped, it will automatically be unmapped before reparenting and
 * re-mapped after reparenting. The window is placed in the stacking order on top
 * with respect to sibling windows.
 * 
 * After reparenting, a ReparentNotify event is generated.
 *
 */
xcb_void_cookie_t xcb_reparent_window(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_window_t parent /**< */ ,
	short x /**< */ , short y /**< */ );

/**
 * @brief Makes a window visible
 *
 * @param c The connection
 * @param window The window to make visible.
 * @return A cookie
 *
 * Maps the specified window. This means making the window visible (as long as its
 * parent is visible).
 * 
 * This MapWindow request will be translated to a MapRequest request if a window
 * manager is running. The window manager then decides to either map the window or
 * not. Set the override-redirect window attribute to true if you want to bypass
 * this mechanism.
 * 
 * If the window manager decides to map the window (or if no window manager is
 * running), a MapNotify event is generated.
 * 
 * If the window becomes viewable and no earlier contents for it are remembered,
 * the X server tiles the window with its background. If the window's background
 * is undefined, the existing screen contents are not altered, and the X server
 * generates zero or more Expose events.
 * 
 * If the window type is InputOutput, an Expose event will be generated when the
 * window becomes visible. The normal response to an Expose event should be to
 * repaint the window.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_map_window_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * @brief Makes a window visible
 *
 * @param c The connection
 * @param window The window to make visible.
 * @return A cookie
 *
 * Maps the specified window. This means making the window visible (as long as its
 * parent is visible).
 * 
 * This MapWindow request will be translated to a MapRequest request if a window
 * manager is running. The window manager then decides to either map the window or
 * not. Set the override-redirect window attribute to true if you want to bypass
 * this mechanism.
 * 
 * If the window manager decides to map the window (or if no window manager is
 * running), a MapNotify event is generated.
 * 
 * If the window becomes viewable and no earlier contents for it are remembered,
 * the X server tiles the window with its background. If the window's background
 * is undefined, the existing screen contents are not altered, and the X server
 * generates zero or more Expose events.
 * 
 * If the window type is InputOutput, an Expose event will be generated when the
 * window becomes visible. The normal response to an Expose event should be to
 * repaint the window.
 *
 */
xcb_void_cookie_t xcb_map_window(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_void_cookie_t xcb_map_subwindows_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_map_subwindows(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * @brief Makes a window invisible
 *
 * @param c The connection
 * @param window The window to make invisible.
 * @return A cookie
 *
 * Unmaps the specified window. This means making the window invisible (and all
 * its child windows).
 * 
 * Unmapping a window leads to the `UnmapNotify` event being generated. Also,
 * `Expose` events are generated for formerly obscured windows.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_unmap_window_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * @brief Makes a window invisible
 *
 * @param c The connection
 * @param window The window to make invisible.
 * @return A cookie
 *
 * Unmaps the specified window. This means making the window invisible (and all
 * its child windows).
 * 
 * Unmapping a window leads to the `UnmapNotify` event being generated. Also,
 * `Expose` events are generated for formerly obscured windows.
 *
 */
xcb_void_cookie_t xcb_unmap_window(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_void_cookie_t xcb_unmap_subwindows_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_unmap_subwindows(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

int xcb_configure_window_sizeof(const void* _buffer /**< */ );

/**
 * @brief Configures window attributes
 *
 * @param c The connection
 * @param window The window to configure.
 * @param value_mask Bitmask of attributes to change.
 * @param value_list New values, corresponding to the attributes in value_mask. The order has to
 * correspond to the order of possible \a value_mask bits. See the example.
 * @return A cookie
 *
 * Configures a window's size, position, border width and stacking order.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_configure_window_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	ushort value_mask /**< */ , const uint* value_list /**< */ );

/**
 * @brief Configures window attributes
 *
 * @param c The connection
 * @param window The window to configure.
 * @param value_mask Bitmask of attributes to change.
 * @param value_list New values, corresponding to the attributes in value_mask. The order has to
 * correspond to the order of possible \a value_mask bits. See the example.
 * @return A cookie
 *
 * Configures a window's size, position, border width and stacking order.
 *
 */
xcb_void_cookie_t xcb_configure_window(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort value_mask /**< */ ,
	const uint* value_list /**< */ );

/**
 * @brief Change window stacking order
 *
 * @param c The connection
 * @param direction A bitmask of #xcb_circulate_t values.
 * @param direction \n
 * @param window The window to raise/lower (depending on \a direction).
 * @return A cookie
 *
 * If \a direction is `XCB_CIRCULATE_RAISE_LOWEST`, the lowest mapped child (if
 * any) will be raised to the top of the stack.
 * 
 * If \a direction is `XCB_CIRCULATE_LOWER_HIGHEST`, the highest mapped child will
 * be lowered to the bottom of the stack.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_circulate_window_checked(xcb_connection_t* c /**< */ , ubyte direction /**< */ , xcb_window_t window /**< */ );

/**
 * @brief Change window stacking order
 *
 * @param c The connection
 * @param direction A bitmask of #xcb_circulate_t values.
 * @param direction \n
 * @param window The window to raise/lower (depending on \a direction).
 * @return A cookie
 *
 * If \a direction is `XCB_CIRCULATE_RAISE_LOWEST`, the lowest mapped child (if
 * any) will be raised to the top of the stack.
 * 
 * If \a direction is `XCB_CIRCULATE_LOWER_HIGHEST`, the highest mapped child will
 * be lowered to the bottom of the stack.
 *
 */
xcb_void_cookie_t xcb_circulate_window(xcb_connection_t* c /**< */ , ubyte direction /**< */ , xcb_window_t window /**< */ );

/**
 * @brief Get current window geometry
 *
 * @param c The connection
 * @param drawable The drawable (`Window` or `Pixmap`) of which the geometry will be received.
 * @return A cookie
 *
 * Gets the current geometry of the specified drawable (either `Window` or `Pixmap`).
 *
 */
xcb_get_geometry_cookie_t xcb_get_geometry(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ );

/**
 * @brief Get current window geometry
 *
 * @param c The connection
 * @param drawable The drawable (`Window` or `Pixmap`) of which the geometry will be received.
 * @return A cookie
 *
 * Gets the current geometry of the specified drawable (either `Window` or `Pixmap`).
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_get_geometry_cookie_t xcb_get_geometry_unchecked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_geometry_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_geometry_reply_t* xcb_get_geometry_reply(xcb_connection_t* c /**< */ , xcb_get_geometry_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_query_tree_sizeof(const void* _buffer /**< */ );

/**
 * @brief query the window tree
 *
 * @param c The connection
 * @param window The \a window to query.
 * @return A cookie
 *
 * Gets the root window ID, parent window ID and list of children windows for the
 * specified \a window. The children are listed in bottom-to-top stacking order.
 *
 */
xcb_query_tree_cookie_t xcb_query_tree(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * @brief query the window tree
 *
 * @param c The connection
 * @param window The \a window to query.
 * @return A cookie
 *
 * Gets the root window ID, parent window ID and list of children windows for the
 * specified \a window. The children are listed in bottom-to-top stacking order.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_query_tree_cookie_t xcb_query_tree_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

xcb_window_t* xcb_query_tree_children(const xcb_query_tree_reply_t* R /**< */ );

int xcb_query_tree_children_length(const xcb_query_tree_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_query_tree_children_end(const xcb_query_tree_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_tree_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_query_tree_reply_t* xcb_query_tree_reply(xcb_connection_t* c /**< */ , xcb_query_tree_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_intern_atom_sizeof(const void* _buffer /**< */ );

/**
 * @brief Get atom identifier by name
 *
 * @param c The connection
 * @param only_if_exists Return a valid atom id only if the atom already exists.
 * @param name_len The length of the following \a name.
 * @param name The name of the atom.
 * @return A cookie
 *
 * Retrieves the identifier (xcb_atom_t TODO) for the atom with the specified
 * name. Atoms are used in protocols like EWMH, for example to store window titles
 * (`_NET_WM_NAME` atom) as property of a window.
 * 
 * If \a only_if_exists is 0, the atom will be created if it does not already exist.
 * If \a only_if_exists is 1, `XCB_ATOM_NONE` will be returned if the atom does
 * not yet exist.
 *
 */
xcb_intern_atom_cookie_t xcb_intern_atom(xcb_connection_t* c /**< */ , ubyte only_if_exists /**< */ , ushort name_len /**< */ ,
	const char* name /**< */ );

/**
 * @brief Get atom identifier by name
 *
 * @param c The connection
 * @param only_if_exists Return a valid atom id only if the atom already exists.
 * @param name_len The length of the following \a name.
 * @param name The name of the atom.
 * @return A cookie
 *
 * Retrieves the identifier (xcb_atom_t TODO) for the atom with the specified
 * name. Atoms are used in protocols like EWMH, for example to store window titles
 * (`_NET_WM_NAME` atom) as property of a window.
 * 
 * If \a only_if_exists is 0, the atom will be created if it does not already exist.
 * If \a only_if_exists is 1, `XCB_ATOM_NONE` will be returned if the atom does
 * not yet exist.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_intern_atom_cookie_t xcb_intern_atom_unchecked(xcb_connection_t* c /**< */ , ubyte only_if_exists /**< */ ,
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
 * xcb_intern_atom_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_intern_atom_reply_t* xcb_intern_atom_reply(xcb_connection_t* c /**< */ , xcb_intern_atom_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_get_atom_name_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_atom_name_cookie_t xcb_get_atom_name(xcb_connection_t* c /**< */ , xcb_atom_t atom /**< */ );

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
xcb_get_atom_name_cookie_t xcb_get_atom_name_unchecked(xcb_connection_t* c /**< */ , xcb_atom_t atom /**< */ );

char* xcb_get_atom_name_name(const xcb_get_atom_name_reply_t* R /**< */ );

int xcb_get_atom_name_name_length(const xcb_get_atom_name_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_get_atom_name_name_end(const xcb_get_atom_name_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_atom_name_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_atom_name_reply_t* xcb_get_atom_name_reply(xcb_connection_t* c /**< */ , xcb_get_atom_name_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_change_property_sizeof(const void* _buffer /**< */ );

/**
 * @brief Changes a window property
 *
 * @param c The connection
 * @param mode A bitmask of #xcb_prop_mode_t values.
 * @param mode \n
 * @param window The window whose property you want to change.
 * @param property The property you want to change (an atom).
 * @param type The type of the property you want to change (an atom).
 * @param format Specifies whether the data should be viewed as a list of 8-bit, 16-bit or
 * 32-bit quantities. Possible values are 8, 16 and 32. This information allows
 * the X server to correctly perform byte-swap operations as necessary.
 * @param data_len Specifies the number of elements (see \a format).
 * @param data The property data.
 * @return A cookie
 *
 * Sets or updates a property on the specified \a window. Properties are for
 * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
 * Protocols such as EWMH also use properties - for example EWMH defines the
 * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_change_property_checked(xcb_connection_t* c /**< */ , ubyte mode /**< */ , xcb_window_t window /**< */ , xcb_atom_t property /**< */ ,
	xcb_atom_t type /**< */ , ubyte format /**< */ , uint data_len /**< */ , const void* data /**< */ );

/**
 * @brief Changes a window property
 *
 * @param c The connection
 * @param mode A bitmask of #xcb_prop_mode_t values.
 * @param mode \n
 * @param window The window whose property you want to change.
 * @param property The property you want to change (an atom).
 * @param type The type of the property you want to change (an atom).
 * @param format Specifies whether the data should be viewed as a list of 8-bit, 16-bit or
 * 32-bit quantities. Possible values are 8, 16 and 32. This information allows
 * the X server to correctly perform byte-swap operations as necessary.
 * @param data_len Specifies the number of elements (see \a format).
 * @param data The property data.
 * @return A cookie
 *
 * Sets or updates a property on the specified \a window. Properties are for
 * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
 * Protocols such as EWMH also use properties - for example EWMH defines the
 * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
 *
 */
xcb_void_cookie_t xcb_change_property(xcb_connection_t* c /**< */ , ubyte mode /**< */ , xcb_window_t window /**< */ , xcb_atom_t property /**< */ ,
	xcb_atom_t type /**< */ , ubyte format /**< */ , uint data_len /**< */ , const void* data /**< */ );

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
xcb_void_cookie_t xcb_delete_property_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_atom_t property /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_delete_property(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_atom_t property /**< */ );

int xcb_get_property_sizeof(const void* _buffer /**< */ );

/**
 * @brief Gets a window property
 *
 * @param c The connection
 * @param delete_ Whether the property should actually be deleted. For deleting a property, the
 * specified \a type has to match the actual property type.
 * @param window The window whose property you want to get.
 * @param property The property you want to get (an atom).
 * @param type The type of the property you want to get (an atom).
 * @param long_offset Specifies the offset (in 32-bit multiples) in the specified property where the
 * data is to be retrieved.
 * @param long_length Specifies how many 32-bit multiples of data should be retrieved (e.g. if you
 * set \a long_length to 4, you will receive 16 bytes of data).
 * @return A cookie
 *
 * Gets the specified \a property from the specified \a window. Properties are for
 * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
 * Protocols such as EWMH also use properties - for example EWMH defines the
 * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
 * 
 * TODO: talk about \a type
 * 
 * TODO: talk about `delete`
 * 
 * TODO: talk about the offset/length thing. what's a valid use case?
 *
 */
xcb_get_property_cookie_t xcb_get_property(xcb_connection_t* c /**< */ , ubyte delete_ /**< */ , xcb_window_t window /**< */ , xcb_atom_t property /**< */ ,
	xcb_atom_t type /**< */ , uint long_offset /**< */ , uint long_length /**< */ );

/**
 * @brief Gets a window property
 *
 * @param c The connection
 * @param delete_ Whether the property should actually be deleted. For deleting a property, the
 * specified \a type has to match the actual property type.
 * @param window The window whose property you want to get.
 * @param property The property you want to get (an atom).
 * @param type The type of the property you want to get (an atom).
 * @param long_offset Specifies the offset (in 32-bit multiples) in the specified property where the
 * data is to be retrieved.
 * @param long_length Specifies how many 32-bit multiples of data should be retrieved (e.g. if you
 * set \a long_length to 4, you will receive 16 bytes of data).
 * @return A cookie
 *
 * Gets the specified \a property from the specified \a window. Properties are for
 * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
 * Protocols such as EWMH also use properties - for example EWMH defines the
 * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
 * 
 * TODO: talk about \a type
 * 
 * TODO: talk about `delete`
 * 
 * TODO: talk about the offset/length thing. what's a valid use case?
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_get_property_cookie_t xcb_get_property_unchecked(xcb_connection_t* c /**< */ , ubyte delete_ /**< */ , xcb_window_t window /**< */ ,
	xcb_atom_t property /**< */ , xcb_atom_t type /**< */ , uint long_offset /**< */ , uint long_length /**< */ );

void* xcb_get_property_value(const xcb_get_property_reply_t* R /**< */ );

int xcb_get_property_value_length(const xcb_get_property_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_get_property_value_end(const xcb_get_property_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_property_reply_t* xcb_get_property_reply(xcb_connection_t* c /**< */ , xcb_get_property_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_list_properties_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_list_properties_cookie_t xcb_list_properties(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_list_properties_cookie_t xcb_list_properties_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

xcb_atom_t* xcb_list_properties_atoms(const xcb_list_properties_reply_t* R /**< */ );

int xcb_list_properties_atoms_length(const xcb_list_properties_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_list_properties_atoms_end(const xcb_list_properties_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_properties_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_list_properties_reply_t* xcb_list_properties_reply(xcb_connection_t* c /**< */ , xcb_list_properties_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 * @brief Sets the owner of a selection
 *
 * @param c The connection
 * @param owner The new owner of the selection.
 * \n
 * The special value `XCB_NONE` means that the selection will have no owner.
 * @param selection The selection.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The selection will not be changed if \a time is earlier than the current
 * last-change time of the \a selection or is later than the current X server time.
 * Otherwise, the last-change time is set to the specified time.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Makes `window` the owner of the selection \a selection and updates the
 * last-change time of the specified selection.
 * 
 * TODO: briefly explain what a selection is.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_set_selection_owner_checked(xcb_connection_t* c /**< */ , xcb_window_t owner /**< */ ,
	xcb_atom_t selection /**< */ , xcb_timestamp_t time /**< */ );

/**
 * @brief Sets the owner of a selection
 *
 * @param c The connection
 * @param owner The new owner of the selection.
 * \n
 * The special value `XCB_NONE` means that the selection will have no owner.
 * @param selection The selection.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The selection will not be changed if \a time is earlier than the current
 * last-change time of the \a selection or is later than the current X server time.
 * Otherwise, the last-change time is set to the specified time.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Makes `window` the owner of the selection \a selection and updates the
 * last-change time of the specified selection.
 * 
 * TODO: briefly explain what a selection is.
 *
 */
xcb_void_cookie_t xcb_set_selection_owner(xcb_connection_t* c /**< */ , xcb_window_t owner /**< */ , xcb_atom_t selection /**< */ ,
	xcb_timestamp_t time /**< */ );

/**
 * @brief Gets the owner of a selection
 *
 * @param c The connection
 * @param selection The selection.
 * @return A cookie
 *
 * Gets the owner of the specified selection.
 * 
 * TODO: briefly explain what a selection is.
 *
 */
xcb_get_selection_owner_cookie_t xcb_get_selection_owner(xcb_connection_t* c /**< */ , xcb_atom_t selection /**< */ );

/**
 * @brief Gets the owner of a selection
 *
 * @param c The connection
 * @param selection The selection.
 * @return A cookie
 *
 * Gets the owner of the specified selection.
 * 
 * TODO: briefly explain what a selection is.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_get_selection_owner_cookie_t xcb_get_selection_owner_unchecked(xcb_connection_t* c /**< */ , xcb_atom_t selection /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_selection_owner_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_selection_owner_reply_t* xcb_get_selection_owner_reply(xcb_connection_t* c /**< */ ,
	xcb_get_selection_owner_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_convert_selection_checked(xcb_connection_t* c /**< */ , xcb_window_t requestor /**< */ , xcb_atom_t selection /**< */ ,
	xcb_atom_t target /**< */ , xcb_atom_t property /**< */ , xcb_timestamp_t time /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_convert_selection(xcb_connection_t* c /**< */ , xcb_window_t requestor /**< */ , xcb_atom_t selection /**< */ , xcb_atom_t target /**< */ ,
	xcb_atom_t property /**< */ , xcb_timestamp_t time /**< */ );

/**
 * @brief send an event
 *
 * @param c The connection
 * @param propagate If \a propagate is true and no clients have selected any event on \a destination,
 * the destination is replaced with the closest ancestor of \a destination for
 * which some client has selected a type in \a event_mask and for which no
 * intervening window has that type in its do-not-propagate-mask. If no such
 * window exists or if the window is an ancestor of the focus window and
 * `InputFocus` was originally specified as the destination, the event is not sent
 * to any clients. Otherwise, the event is reported to every client selecting on
 * the final destination any of the types specified in \a event_mask.
 * @param destination The window to send this event to. Every client which selects any event within
 * \a event_mask on \a destination will get the event.
 * \n
 * The special value `XCB_SEND_EVENT_DEST_POINTER_WINDOW` refers to the window
 * that contains the mouse pointer.
 * \n
 * The special value `XCB_SEND_EVENT_DEST_ITEM_FOCUS` refers to the window which
 * has the keyboard focus.
 * @param event_mask Event_mask for determining which clients should receive the specified event.
 * See \a destination and \a propagate.
 * @param event The event to send to the specified \a destination.
 * @return A cookie
 *
 * Identifies the \a destination window, determines which clients should receive
 * the specified event and ignores any active grabs.
 * 
 * The \a event must be one of the core events or an event defined by an extension,
 * so that the X server can correctly byte-swap the contents as necessary. The
 * contents of \a event are otherwise unaltered and unchecked except for the
 * `send_event` field which is forced to 'true'.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_send_event_checked(xcb_connection_t* c /**< */ , ubyte propagate /**< */ , xcb_window_t destination /**< */ ,
	uint event_mask /**< */ , const char* event /**< */ );

/**
 * @brief send an event
 *
 * @param c The connection
 * @param propagate If \a propagate is true and no clients have selected any event on \a destination,
 * the destination is replaced with the closest ancestor of \a destination for
 * which some client has selected a type in \a event_mask and for which no
 * intervening window has that type in its do-not-propagate-mask. If no such
 * window exists or if the window is an ancestor of the focus window and
 * `InputFocus` was originally specified as the destination, the event is not sent
 * to any clients. Otherwise, the event is reported to every client selecting on
 * the final destination any of the types specified in \a event_mask.
 * @param destination The window to send this event to. Every client which selects any event within
 * \a event_mask on \a destination will get the event.
 * \n
 * The special value `XCB_SEND_EVENT_DEST_POINTER_WINDOW` refers to the window
 * that contains the mouse pointer.
 * \n
 * The special value `XCB_SEND_EVENT_DEST_ITEM_FOCUS` refers to the window which
 * has the keyboard focus.
 * @param event_mask Event_mask for determining which clients should receive the specified event.
 * See \a destination and \a propagate.
 * @param event The event to send to the specified \a destination.
 * @return A cookie
 *
 * Identifies the \a destination window, determines which clients should receive
 * the specified event and ignores any active grabs.
 * 
 * The \a event must be one of the core events or an event defined by an extension,
 * so that the X server can correctly byte-swap the contents as necessary. The
 * contents of \a event are otherwise unaltered and unchecked except for the
 * `send_event` field which is forced to 'true'.
 *
 */
xcb_void_cookie_t xcb_send_event(xcb_connection_t* c /**< */ , ubyte propagate /**< */ , xcb_window_t destination /**< */ ,
	uint event_mask /**< */ , const char* event /**< */ );

/**
 * @brief Grab the pointer
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param event_mask Specifies which pointer events are reported to the client.
 * \n
 * TODO: which values?
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
 * move the pointer out of that window).
 * \n
 * The special value `XCB_NONE` means don't confine the pointer.
 * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
 * cursor.
 * @param time The time argument allows you to avoid certain circumstances that come up if
 * applications take a long time to respond or if there are long network delays.
 * Consider a situation where you have two applications, both of which normally
 * grab the pointer when clicked on. If both applications specify the timestamp
 * from the event, the second application may wake up faster and successfully grab
 * the pointer before the first application. The first application then will get
 * an indication that the other application grabbed the pointer before its request
 * was processed.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Actively grabs control of the pointer. Further pointer events are reported only to the grabbing client. Overrides any active pointer grab by this client.
 *
 */
xcb_grab_pointer_cookie_t xcb_grab_pointer(xcb_connection_t* c /**< */ , ubyte owner_events /**< */ , xcb_window_t grab_window /**< */ ,
	ushort event_mask /**< */ , ubyte pointer_mode /**< */ , ubyte keyboard_mode /**< */ , xcb_window_t confine_to /**< */ ,
	xcb_cursor_t cursor /**< */ , xcb_timestamp_t time /**< */ );

/**
 * @brief Grab the pointer
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param event_mask Specifies which pointer events are reported to the client.
 * \n
 * TODO: which values?
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
 * move the pointer out of that window).
 * \n
 * The special value `XCB_NONE` means don't confine the pointer.
 * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
 * cursor.
 * @param time The time argument allows you to avoid certain circumstances that come up if
 * applications take a long time to respond or if there are long network delays.
 * Consider a situation where you have two applications, both of which normally
 * grab the pointer when clicked on. If both applications specify the timestamp
 * from the event, the second application may wake up faster and successfully grab
 * the pointer before the first application. The first application then will get
 * an indication that the other application grabbed the pointer before its request
 * was processed.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Actively grabs control of the pointer. Further pointer events are reported only to the grabbing client. Overrides any active pointer grab by this client.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_grab_pointer_cookie_t xcb_grab_pointer_unchecked(xcb_connection_t* c /**< */ , ubyte owner_events /**< */ , xcb_window_t grab_window /**< */ ,
	ushort event_mask /**< */ , ubyte pointer_mode /**< */ , ubyte keyboard_mode /**< */ , xcb_window_t confine_to /**< */ ,
	xcb_cursor_t cursor /**< */ , xcb_timestamp_t time /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_grab_pointer_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_grab_pointer_reply_t* xcb_grab_pointer_reply(xcb_connection_t* c /**< */ , xcb_grab_pointer_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 * @brief release the pointer
 *
 * @param c The connection
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The pointer will not be released if \a time is earlier than the
 * last-pointer-grab time or later than the current X server time.
 * @return A cookie
 *
 * Releases the pointer and any queued events if you actively grabbed the pointer
 * before using `xcb_grab_pointer`, `xcb_grab_button` or within a normal button
 * press.
 * 
 * EnterNotify and LeaveNotify events are generated.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_ungrab_pointer_checked(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ );

/**
 * @brief release the pointer
 *
 * @param c The connection
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The pointer will not be released if \a time is earlier than the
 * last-pointer-grab time or later than the current X server time.
 * @return A cookie
 *
 * Releases the pointer and any queued events if you actively grabbed the pointer
 * before using `xcb_grab_pointer`, `xcb_grab_button` or within a normal button
 * press.
 * 
 * EnterNotify and LeaveNotify events are generated.
 *
 */
xcb_void_cookie_t xcb_ungrab_pointer(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ );

/**
 * @brief Grab pointer button(s)
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param event_mask Specifies which pointer events are reported to the client.
 * \n
 * TODO: which values?
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
 * move the pointer out of that window).
 * \n
 * The special value `XCB_NONE` means don't confine the pointer.
 * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
 * cursor.
 * @param button A bitmask of #xcb_button_index_t values.
 * @param button \n
 * @param modifiers The modifiers to grab.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
 * possible modifier combinations.
 * @return A cookie
 *
 * This request establishes a passive grab. The pointer is actively grabbed as
 * described in GrabPointer, the last-pointer-grab time is set to the time at
 * which the button was pressed (as transmitted in the ButtonPress event), and the
 * ButtonPress event is reported if all of the following conditions are true:
 * 
 * The pointer is not grabbed and the specified button is logically pressed when
 * the specified modifier keys are logically down, and no other buttons or
 * modifier keys are logically down.
 * 
 * The grab-window contains the pointer.
 * 
 * The confine-to window (if any) is viewable.
 * 
 * A passive grab on the same button/key combination does not exist on any
 * ancestor of grab-window.
 * 
 * The interpretation of the remaining arguments is the same as for GrabPointer.
 * The active grab is terminated automatically when the logical state of the
 * pointer has all buttons released, independent of the logical state of modifier
 * keys. Note that the logical state of a device (as seen by means of the
 * protocol) may lag the physical state if device event processing is frozen. This
 * request overrides all previous passive grabs by the same client on the same
 * button/key combinations on the same window. A modifier of AnyModifier is
 * equivalent to issuing the request for all possible modifier combinations
 * (including the combination of no modifiers). It is not required that all
 * specified modifiers have currently assigned keycodes. A button of AnyButton is
 * equivalent to issuing the request for all possible buttons. Otherwise, it is
 * not required that the button specified currently be assigned to a physical
 * button.
 * 
 * An Access error is generated if some other client has already issued a
 * GrabButton request with the same button/key combination on the same window.
 * When using AnyModifier or AnyButton, the request fails completely (no grabs are
 * established), and an Access error is generated if there is a conflicting grab
 * for any combination. The request has no effect on an active grab.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_grab_button_checked(xcb_connection_t* c /**< */ , ubyte owner_events /**< */ , xcb_window_t grab_window /**< */ ,
	ushort event_mask /**< */ , ubyte pointer_mode /**< */ , ubyte keyboard_mode /**< */ , xcb_window_t confine_to /**< */ ,
	xcb_cursor_t cursor /**< */ , ubyte button /**< */ , ushort modifiers /**< */ );

/**
 * @brief Grab pointer button(s)
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param event_mask Specifies which pointer events are reported to the client.
 * \n
 * TODO: which values?
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
 * move the pointer out of that window).
 * \n
 * The special value `XCB_NONE` means don't confine the pointer.
 * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
 * cursor.
 * @param button A bitmask of #xcb_button_index_t values.
 * @param button \n
 * @param modifiers The modifiers to grab.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
 * possible modifier combinations.
 * @return A cookie
 *
 * This request establishes a passive grab. The pointer is actively grabbed as
 * described in GrabPointer, the last-pointer-grab time is set to the time at
 * which the button was pressed (as transmitted in the ButtonPress event), and the
 * ButtonPress event is reported if all of the following conditions are true:
 * 
 * The pointer is not grabbed and the specified button is logically pressed when
 * the specified modifier keys are logically down, and no other buttons or
 * modifier keys are logically down.
 * 
 * The grab-window contains the pointer.
 * 
 * The confine-to window (if any) is viewable.
 * 
 * A passive grab on the same button/key combination does not exist on any
 * ancestor of grab-window.
 * 
 * The interpretation of the remaining arguments is the same as for GrabPointer.
 * The active grab is terminated automatically when the logical state of the
 * pointer has all buttons released, independent of the logical state of modifier
 * keys. Note that the logical state of a device (as seen by means of the
 * protocol) may lag the physical state if device event processing is frozen. This
 * request overrides all previous passive grabs by the same client on the same
 * button/key combinations on the same window. A modifier of AnyModifier is
 * equivalent to issuing the request for all possible modifier combinations
 * (including the combination of no modifiers). It is not required that all
 * specified modifiers have currently assigned keycodes. A button of AnyButton is
 * equivalent to issuing the request for all possible buttons. Otherwise, it is
 * not required that the button specified currently be assigned to a physical
 * button.
 * 
 * An Access error is generated if some other client has already issued a
 * GrabButton request with the same button/key combination on the same window.
 * When using AnyModifier or AnyButton, the request fails completely (no grabs are
 * established), and an Access error is generated if there is a conflicting grab
 * for any combination. The request has no effect on an active grab.
 *
 */
xcb_void_cookie_t xcb_grab_button(xcb_connection_t* c /**< */ , ubyte owner_events /**< */ , xcb_window_t grab_window /**< */ , ushort event_mask /**< */ ,
	ubyte pointer_mode /**< */ , ubyte keyboard_mode /**< */ , xcb_window_t confine_to /**< */ , xcb_cursor_t cursor /**< */ ,
	ubyte button /**< */ , ushort modifiers /**< */ );

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
xcb_void_cookie_t xcb_ungrab_button_checked(xcb_connection_t* c /**< */ , ubyte button /**< */ , xcb_window_t grab_window /**< */ ,
	ushort modifiers /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_ungrab_button(xcb_connection_t* c /**< */ , ubyte button /**< */ , xcb_window_t grab_window /**< */ ,
	ushort modifiers /**< */ );

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
xcb_void_cookie_t xcb_change_active_pointer_grab_checked(xcb_connection_t* c /**< */ , xcb_cursor_t cursor /**< */ ,
	xcb_timestamp_t time /**< */ , ushort event_mask /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_change_active_pointer_grab(xcb_connection_t* c /**< */ , xcb_cursor_t cursor /**< */ ,
	xcb_timestamp_t time /**< */ , ushort event_mask /**< */ );

/**
 * @brief Grab the keyboard
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @return A cookie
 *
 * Actively grabs control of the keyboard and generates FocusIn and FocusOut
 * events. Further key events are reported only to the grabbing client.
 * 
 * Any active keyboard grab by this client is overridden. If the keyboard is
 * actively grabbed by some other client, `AlreadyGrabbed` is returned. If
 * \a grab_window is not viewable, `GrabNotViewable` is returned. If the keyboard
 * is frozen by an active grab of another client, `GrabFrozen` is returned. If the
 * specified \a time is earlier than the last-keyboard-grab time or later than the
 * current X server time, `GrabInvalidTime` is returned. Otherwise, the
 * last-keyboard-grab time is set to the specified time.
 *
 */
xcb_grab_keyboard_cookie_t xcb_grab_keyboard(xcb_connection_t* c /**< */ , ubyte owner_events /**< */ , xcb_window_t grab_window /**< */ ,
	xcb_timestamp_t time /**< */ , ubyte pointer_mode /**< */ , ubyte keyboard_mode /**< */ );

/**
 * @brief Grab the keyboard
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @return A cookie
 *
 * Actively grabs control of the keyboard and generates FocusIn and FocusOut
 * events. Further key events are reported only to the grabbing client.
 * 
 * Any active keyboard grab by this client is overridden. If the keyboard is
 * actively grabbed by some other client, `AlreadyGrabbed` is returned. If
 * \a grab_window is not viewable, `GrabNotViewable` is returned. If the keyboard
 * is frozen by an active grab of another client, `GrabFrozen` is returned. If the
 * specified \a time is earlier than the last-keyboard-grab time or later than the
 * current X server time, `GrabInvalidTime` is returned. Otherwise, the
 * last-keyboard-grab time is set to the specified time.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_grab_keyboard_cookie_t xcb_grab_keyboard_unchecked(xcb_connection_t* c /**< */ , ubyte owner_events /**< */ , xcb_window_t grab_window /**< */ ,
	xcb_timestamp_t time /**< */ , ubyte pointer_mode /**< */ , ubyte keyboard_mode /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_grab_keyboard_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_grab_keyboard_reply_t* xcb_grab_keyboard_reply(xcb_connection_t* c /**< */ , xcb_grab_keyboard_cookie_t cookie /**< */ ,
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
xcb_void_cookie_t xcb_ungrab_keyboard_checked(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_ungrab_keyboard(xcb_connection_t* c /**< */ , xcb_timestamp_t time /**< */ );

/**
 * @brief Grab keyboard key(s)
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param modifiers The modifiers to grab.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
 * possible modifier combinations.
 * @param key The keycode of the key to grab.
 * \n
 * The special value `XCB_GRAB_ANY` means grab any key.
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @return A cookie
 *
 * Establishes a passive grab on the keyboard. In the future, the keyboard is
 * actively grabbed (as for `GrabKeyboard`), the last-keyboard-grab time is set to
 * the time at which the key was pressed (as transmitted in the KeyPress event),
 * and the KeyPress event is reported if all of the following conditions are true:
 * 
 * The keyboard is not grabbed and the specified key (which can itself be a
 * modifier key) is logically pressed when the specified modifier keys are
 * logically down, and no other modifier keys are logically down.
 * 
 * Either the grab_window is an ancestor of (or is) the focus window, or the
 * grab_window is a descendant of the focus window and contains the pointer.
 * 
 * A passive grab on the same key combination does not exist on any ancestor of
 * grab_window.
 * 
 * The interpretation of the remaining arguments is as for XGrabKeyboard.  The active grab is terminated
 * automatically when the logical state of the keyboard has the specified key released (independent of the
 * logical state of the modifier keys), at which point a KeyRelease event is reported to the grabbing window.
 * 
 * Note that the logical state of a device (as seen by client applications) may lag the physical state if
 * device event processing is frozen.
 * 
 * A modifiers argument of AnyModifier is equivalent to issuing the request for all possible modifier combinations (including the combination of no modifiers).  It is not required that all modifiers specified
 * have currently assigned KeyCodes.  A keycode argument of AnyKey is equivalent to issuing the request for
 * all possible KeyCodes.  Otherwise, the specified keycode must be in the range specified by min_keycode
 * and max_keycode in the connection setup, or a BadValue error results.
 * 
 * If some other client has issued a XGrabKey with the same key combination on the same window, a BadAccess
 * error results.  When using AnyModifier or AnyKey, the request fails completely, and a BadAccess error
 * results (no grabs are established) if there is a conflicting grab for any combination.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_grab_key_checked(xcb_connection_t* c /**< */ , ubyte owner_events /**< */ , xcb_window_t grab_window /**< */ , ushort modifiers /**< */ ,
	xcb_keycode_t key /**< */ , ubyte pointer_mode /**< */ , ubyte keyboard_mode /**< */ );

/**
 * @brief Grab keyboard key(s)
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param modifiers The modifiers to grab.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
 * possible modifier combinations.
 * @param key The keycode of the key to grab.
 * \n
 * The special value `XCB_GRAB_ANY` means grab any key.
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @return A cookie
 *
 * Establishes a passive grab on the keyboard. In the future, the keyboard is
 * actively grabbed (as for `GrabKeyboard`), the last-keyboard-grab time is set to
 * the time at which the key was pressed (as transmitted in the KeyPress event),
 * and the KeyPress event is reported if all of the following conditions are true:
 * 
 * The keyboard is not grabbed and the specified key (which can itself be a
 * modifier key) is logically pressed when the specified modifier keys are
 * logically down, and no other modifier keys are logically down.
 * 
 * Either the grab_window is an ancestor of (or is) the focus window, or the
 * grab_window is a descendant of the focus window and contains the pointer.
 * 
 * A passive grab on the same key combination does not exist on any ancestor of
 * grab_window.
 * 
 * The interpretation of the remaining arguments is as for XGrabKeyboard.  The active grab is terminated
 * automatically when the logical state of the keyboard has the specified key released (independent of the
 * logical state of the modifier keys), at which point a KeyRelease event is reported to the grabbing window.
 * 
 * Note that the logical state of a device (as seen by client applications) may lag the physical state if
 * device event processing is frozen.
 * 
 * A modifiers argument of AnyModifier is equivalent to issuing the request for all possible modifier combinations (including the combination of no modifiers).  It is not required that all modifiers specified
 * have currently assigned KeyCodes.  A keycode argument of AnyKey is equivalent to issuing the request for
 * all possible KeyCodes.  Otherwise, the specified keycode must be in the range specified by min_keycode
 * and max_keycode in the connection setup, or a BadValue error results.
 * 
 * If some other client has issued a XGrabKey with the same key combination on the same window, a BadAccess
 * error results.  When using AnyModifier or AnyKey, the request fails completely, and a BadAccess error
 * results (no grabs are established) if there is a conflicting grab for any combination.
 *
 */
xcb_void_cookie_t xcb_grab_key(xcb_connection_t* c /**< */ , ubyte owner_events /**< */ , xcb_window_t grab_window /**< */ , ushort modifiers /**< */ ,
	xcb_keycode_t key /**< */ , ubyte pointer_mode /**< */ , ubyte keyboard_mode /**< */ );

/**
 * @brief release a key combination
 *
 * @param c The connection
 * @param key The keycode of the specified key combination.
 * \n
 * Using the special value `XCB_GRAB_ANY` means releasing all possible key codes.
 * @param grab_window The window on which the grabbed key combination will be released.
 * @param modifiers The modifiers of the specified key combination.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means releasing the key combination
 * with every possible modifier combination.
 * @return A cookie
 *
 * Releases the key combination on \a grab_window if you grabbed it using
 * `xcb_grab_key` before.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_ungrab_key_checked(xcb_connection_t* c /**< */ , xcb_keycode_t key /**< */ , xcb_window_t grab_window /**< */ ,
	ushort modifiers /**< */ );

/**
 * @brief release a key combination
 *
 * @param c The connection
 * @param key The keycode of the specified key combination.
 * \n
 * Using the special value `XCB_GRAB_ANY` means releasing all possible key codes.
 * @param grab_window The window on which the grabbed key combination will be released.
 * @param modifiers The modifiers of the specified key combination.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means releasing the key combination
 * with every possible modifier combination.
 * @return A cookie
 *
 * Releases the key combination on \a grab_window if you grabbed it using
 * `xcb_grab_key` before.
 *
 */
xcb_void_cookie_t xcb_ungrab_key(xcb_connection_t* c /**< */ , xcb_keycode_t key /**< */ , xcb_window_t grab_window /**< */ ,
	ushort modifiers /**< */ );

/**
 * @brief release queued events
 *
 * @param c The connection
 * @param mode A bitmask of #xcb_allow_t values.
 * @param mode \n
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Releases queued events if the client has caused a device (pointer/keyboard) to
 * freeze due to grabbing it actively. This request has no effect if \a time is
 * earlier than the last-grab time of the most recent active grab for this client
 * or if \a time is later than the current X server time.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_allow_events_checked(xcb_connection_t* c /**< */ , ubyte mode /**< */ , xcb_timestamp_t time /**< */ );

/**
 * @brief release queued events
 *
 * @param c The connection
 * @param mode A bitmask of #xcb_allow_t values.
 * @param mode \n
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Releases queued events if the client has caused a device (pointer/keyboard) to
 * freeze due to grabbing it actively. This request has no effect if \a time is
 * earlier than the last-grab time of the most recent active grab for this client
 * or if \a time is later than the current X server time.
 *
 */
xcb_void_cookie_t xcb_allow_events(xcb_connection_t* c /**< */ , ubyte mode /**< */ , xcb_timestamp_t time /**< */ );

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
xcb_void_cookie_t xcb_grab_server_checked(xcb_connection_t* c /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_grab_server(xcb_connection_t* c /**< */ );

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
xcb_void_cookie_t xcb_ungrab_server_checked(xcb_connection_t* c /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_ungrab_server(xcb_connection_t* c /**< */ );

/**
 * @brief get pointer coordinates
 *
 * @param c The connection
 * @param window A window to check if the pointer is on the same screen as \a window (see the
 * `same_screen` field in the reply).
 * @return A cookie
 *
 * Gets the root window the pointer is logically on and the pointer coordinates
 * relative to the root window's origin.
 *
 */
xcb_query_pointer_cookie_t xcb_query_pointer(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * @brief get pointer coordinates
 *
 * @param c The connection
 * @param window A window to check if the pointer is on the same screen as \a window (see the
 * `same_screen` field in the reply).
 * @return A cookie
 *
 * Gets the root window the pointer is logically on and the pointer coordinates
 * relative to the root window's origin.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_query_pointer_cookie_t xcb_query_pointer_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_pointer_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_query_pointer_reply_t* xcb_query_pointer_reply(xcb_connection_t* c /**< */ , xcb_query_pointer_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_timecoord_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_timecoord_t)
 */
void xcb_timecoord_next(xcb_timecoord_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_timecoord_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_timecoord_end(xcb_timecoord_iterator_t i /**< */ );

int xcb_get_motion_events_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_motion_events_cookie_t xcb_get_motion_events(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_timestamp_t start /**< */ , xcb_timestamp_t stop /**< */ );

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
xcb_get_motion_events_cookie_t xcb_get_motion_events_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ ,
	xcb_timestamp_t start /**< */ , xcb_timestamp_t stop /**< */ );

xcb_timecoord_t* xcb_get_motion_events_events(const xcb_get_motion_events_reply_t* R /**< */ );

int xcb_get_motion_events_events_length(const xcb_get_motion_events_reply_t* R /**< */ );

xcb_timecoord_iterator_t xcb_get_motion_events_events_iterator(const xcb_get_motion_events_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_motion_events_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_motion_events_reply_t* xcb_get_motion_events_reply(xcb_connection_t* c /**< */ ,
	xcb_get_motion_events_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_translate_coordinates_cookie_t xcb_translate_coordinates(xcb_connection_t* c /**< */ , xcb_window_t src_window /**< */ ,
	xcb_window_t dst_window /**< */ , short src_x /**< */ , short src_y /**< */ );

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
xcb_translate_coordinates_cookie_t xcb_translate_coordinates_unchecked(xcb_connection_t* c /**< */ , xcb_window_t src_window /**< */ ,
	xcb_window_t dst_window /**< */ , short src_x /**< */ , short src_y /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_translate_coordinates_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_translate_coordinates_reply_t* xcb_translate_coordinates_reply(xcb_connection_t* c /**< */ ,
	xcb_translate_coordinates_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @brief move mouse pointer
 *
 * @param c The connection
 * @param src_window If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
 * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
 * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
 * \a src_window.
 * @param dst_window If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
 * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
 * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
 * relative to the current position of the pointer.
 * @return A cookie
 *
 * Moves the mouse pointer to the specified position.
 * 
 * If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
 * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
 * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
 * \a src_window.
 * 
 * If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
 * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
 * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
 * relative to the current position of the pointer.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_warp_pointer_checked(xcb_connection_t* c /**< */ , xcb_window_t src_window /**< */ , xcb_window_t dst_window /**< */ , short src_x /**< */ ,
	short src_y /**< */ , ushort src_width /**< */ , ushort src_height /**< */ , short dst_x /**< */ , short dst_y /**< */ );

/**
 * @brief move mouse pointer
 *
 * @param c The connection
 * @param src_window If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
 * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
 * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
 * \a src_window.
 * @param dst_window If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
 * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
 * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
 * relative to the current position of the pointer.
 * @return A cookie
 *
 * Moves the mouse pointer to the specified position.
 * 
 * If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
 * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
 * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
 * \a src_window.
 * 
 * If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
 * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
 * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
 * relative to the current position of the pointer.
 *
 */
xcb_void_cookie_t xcb_warp_pointer(xcb_connection_t* c /**< */ , xcb_window_t src_window /**< */ , xcb_window_t dst_window /**< */ , short src_x /**< */ ,
	short src_y /**< */ , ushort src_width /**< */ , ushort src_height /**< */ , short dst_x /**< */ , short dst_y /**< */ );

/**
 * @brief Sets input focus
 *
 * @param c The connection
 * @param revert_to A bitmask of #xcb_input_focus_t values.
 * @param revert_to Specifies what happens when the \a focus window becomes unviewable (if \a focus
 * is neither `XCB_NONE` nor `XCB_POINTER_ROOT`).
 * @param focus The window to focus. All keyboard events will be reported to this window. The
 * window must be viewable (TODO), or a `xcb_match_error_t` occurs (TODO).
 * \n
 * If \a focus is `XCB_NONE` (TODO), all keyboard events are
 * discarded until a new focus window is set.
 * \n
 * If \a focus is `XCB_POINTER_ROOT` (TODO), focus is on the root window of the
 * screen on which the pointer is on currently.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Changes the input focus and the last-focus-change time. If the specified \a time
 * is earlier than the current last-focus-change time, the request is ignored (to
 * avoid race conditions when running X over the network).
 * 
 * A FocusIn and FocusOut event is generated when focus is changed.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_set_input_focus_checked(xcb_connection_t* c /**< */ , ubyte revert_to /**< */ , xcb_window_t focus /**< */ ,
	xcb_timestamp_t time /**< */ );

/**
 * @brief Sets input focus
 *
 * @param c The connection
 * @param revert_to A bitmask of #xcb_input_focus_t values.
 * @param revert_to Specifies what happens when the \a focus window becomes unviewable (if \a focus
 * is neither `XCB_NONE` nor `XCB_POINTER_ROOT`).
 * @param focus The window to focus. All keyboard events will be reported to this window. The
 * window must be viewable (TODO), or a `xcb_match_error_t` occurs (TODO).
 * \n
 * If \a focus is `XCB_NONE` (TODO), all keyboard events are
 * discarded until a new focus window is set.
 * \n
 * If \a focus is `XCB_POINTER_ROOT` (TODO), focus is on the root window of the
 * screen on which the pointer is on currently.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Changes the input focus and the last-focus-change time. If the specified \a time
 * is earlier than the current last-focus-change time, the request is ignored (to
 * avoid race conditions when running X over the network).
 * 
 * A FocusIn and FocusOut event is generated when focus is changed.
 *
 */
xcb_void_cookie_t xcb_set_input_focus(xcb_connection_t* c /**< */ , ubyte revert_to /**< */ , xcb_window_t focus /**< */ ,
	xcb_timestamp_t time /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_input_focus_cookie_t xcb_get_input_focus(xcb_connection_t* c /**< */ );

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
xcb_get_input_focus_cookie_t xcb_get_input_focus_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_input_focus_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_input_focus_reply_t* xcb_get_input_focus_reply(xcb_connection_t* c /**< */ , xcb_get_input_focus_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_query_keymap_cookie_t xcb_query_keymap(xcb_connection_t* c /**< */ );

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
xcb_query_keymap_cookie_t xcb_query_keymap_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_keymap_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_query_keymap_reply_t* xcb_query_keymap_reply(xcb_connection_t* c /**< */ , xcb_query_keymap_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_open_font_sizeof(const void* _buffer /**< */ );

/**
 * @brief opens a font
 *
 * @param c The connection
 * @param fid The ID with which you will refer to the font, created by `xcb_generate_id`.
 * @param name_len Length (in bytes) of \a name.
 * @param name A pattern describing an X core font.
 * @return A cookie
 *
 * Opens any X core font matching the given \a name (for example "-misc-fixed-*").
 * 
 * Note that X core fonts are deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_open_font_checked(xcb_connection_t* c /**< */ , xcb_font_t fid /**< */ , ushort name_len /**< */ , const char* name /**< */ );

/**
 * @brief opens a font
 *
 * @param c The connection
 * @param fid The ID with which you will refer to the font, created by `xcb_generate_id`.
 * @param name_len Length (in bytes) of \a name.
 * @param name A pattern describing an X core font.
 * @return A cookie
 *
 * Opens any X core font matching the given \a name (for example "-misc-fixed-*").
 * 
 * Note that X core fonts are deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 */
xcb_void_cookie_t xcb_open_font(xcb_connection_t* c /**< */ , xcb_font_t fid /**< */ , ushort name_len /**< */ , const char* name /**< */ );

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
xcb_void_cookie_t xcb_close_font_checked(xcb_connection_t* c /**< */ , xcb_font_t font /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_close_font(xcb_connection_t* c /**< */ , xcb_font_t font /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_fontprop_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_fontprop_t)
 */
void xcb_fontprop_next(xcb_fontprop_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_fontprop_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_fontprop_end(xcb_fontprop_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_charinfo_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_charinfo_t)
 */
void xcb_charinfo_next(xcb_charinfo_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_charinfo_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_charinfo_end(xcb_charinfo_iterator_t i /**< */ );

int xcb_query_font_sizeof(const void* _buffer /**< */ );

/**
 * @brief query font metrics
 *
 * @param c The connection
 * @param font The fontable (Font or Graphics Context) to query.
 * @return A cookie
 *
 * Queries information associated with the font.
 *
 */
xcb_query_font_cookie_t xcb_query_font(xcb_connection_t* c /**< */ , xcb_fontable_t font /**< */ );

/**
 * @brief query font metrics
 *
 * @param c The connection
 * @param font The fontable (Font or Graphics Context) to query.
 * @return A cookie
 *
 * Queries information associated with the font.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_query_font_cookie_t xcb_query_font_unchecked(xcb_connection_t* c /**< */ , xcb_fontable_t font /**< */ );

xcb_fontprop_t* xcb_query_font_properties(const xcb_query_font_reply_t* R /**< */ );

int xcb_query_font_properties_length(const xcb_query_font_reply_t* R /**< */ );

xcb_fontprop_iterator_t xcb_query_font_properties_iterator(const xcb_query_font_reply_t* R /**< */ );

xcb_charinfo_t* xcb_query_font_char_infos(const xcb_query_font_reply_t* R /**< */ );

int xcb_query_font_char_infos_length(const xcb_query_font_reply_t* R /**< */ );

xcb_charinfo_iterator_t xcb_query_font_char_infos_iterator(const xcb_query_font_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_font_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_query_font_reply_t* xcb_query_font_reply(xcb_connection_t* c /**< */ , xcb_query_font_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_query_text_extents_sizeof(const void* _buffer /**< */ , uint string_len /**< */ );

/**
 * @brief get text extents
 *
 * @param c The connection
 * @param font The \a font to calculate text extents in. You can also pass a graphics context.
 * @param string_len The number of characters in \a string.
 * @param string The text to get text extents for.
 * @return A cookie
 *
 * Query text extents from the X11 server. This request returns the bounding box
 * of the specified 16-bit character string in the specified \a font or the font
 * contained in the specified graphics context.
 * 
 * `font_ascent` is set to the maximum of the ascent metrics of all characters in
 * the string. `font_descent` is set to the maximum of the descent metrics.
 * `overall_width` is set to the sum of the character-width metrics of all
 * characters in the string. For each character in the string, let W be the sum of
 * the character-width metrics of all characters preceding it in the string. Let L
 * be the left-side-bearing metric of the character plus W. Let R be the
 * right-side-bearing metric of the character plus W. The lbearing member is set
 * to the minimum L of all characters in the string. The rbearing member is set to
 * the maximum R.
 * 
 * For fonts defined with linear indexing rather than 2-byte matrix indexing, each
 * `xcb_char2b_t` structure is interpreted as a 16-bit number with byte1 as the
 * most significant byte. If the font has no defined default character, undefined
 * characters in the string are taken to have all zero metrics.
 * 
 * Characters with all zero metrics are ignored. If the font has no defined
 * default_char, the undefined characters in the string are also ignored.
 *
 */
xcb_query_text_extents_cookie_t xcb_query_text_extents(xcb_connection_t* c /**< */ , xcb_fontable_t font /**< */ , uint string_len /**< */ ,
	const xcb_char2b_t* string /**< */ );

/**
 * @brief get text extents
 *
 * @param c The connection
 * @param font The \a font to calculate text extents in. You can also pass a graphics context.
 * @param string_len The number of characters in \a string.
 * @param string The text to get text extents for.
 * @return A cookie
 *
 * Query text extents from the X11 server. This request returns the bounding box
 * of the specified 16-bit character string in the specified \a font or the font
 * contained in the specified graphics context.
 * 
 * `font_ascent` is set to the maximum of the ascent metrics of all characters in
 * the string. `font_descent` is set to the maximum of the descent metrics.
 * `overall_width` is set to the sum of the character-width metrics of all
 * characters in the string. For each character in the string, let W be the sum of
 * the character-width metrics of all characters preceding it in the string. Let L
 * be the left-side-bearing metric of the character plus W. Let R be the
 * right-side-bearing metric of the character plus W. The lbearing member is set
 * to the minimum L of all characters in the string. The rbearing member is set to
 * the maximum R.
 * 
 * For fonts defined with linear indexing rather than 2-byte matrix indexing, each
 * `xcb_char2b_t` structure is interpreted as a 16-bit number with byte1 as the
 * most significant byte. If the font has no defined default character, undefined
 * characters in the string are taken to have all zero metrics.
 * 
 * Characters with all zero metrics are ignored. If the font has no defined
 * default_char, the undefined characters in the string are also ignored.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_query_text_extents_cookie_t xcb_query_text_extents_unchecked(xcb_connection_t* c /**< */ , xcb_fontable_t font /**< */ , uint string_len /**< */ ,
	const xcb_char2b_t* string /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_text_extents_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_query_text_extents_reply_t* xcb_query_text_extents_reply(xcb_connection_t* c /**< */ , xcb_query_text_extents_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_str_sizeof(const void* _buffer /**< */ );

char* xcb_str_name(const xcb_str_t* R /**< */ );

int xcb_str_name_length(const xcb_str_t* R /**< */ );

xcb_generic_iterator_t xcb_str_name_end(const xcb_str_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_str_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_str_t)
 */
void xcb_str_next(xcb_str_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_str_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_str_end(xcb_str_iterator_t i /**< */ );

int xcb_list_fonts_sizeof(const void* _buffer /**< */ );

/**
 * @brief get matching font names
 *
 * @param c The connection
 * @param max_names The maximum number of fonts to be returned.
 * @param pattern_len The length (in bytes) of \a pattern.
 * @param pattern A font pattern, for example "-misc-fixed-*".
 * \n
 * The asterisk (*) is a wildcard for any number of characters. The question mark
 * (?) is a wildcard for a single character. Use of uppercase or lowercase does
 * not matter.
 * @return A cookie
 *
 * Gets a list of available font names which match the given \a pattern.
 *
 */
xcb_list_fonts_cookie_t xcb_list_fonts(xcb_connection_t* c /**< */ , ushort max_names /**< */ , ushort pattern_len /**< */ ,
	const char* pattern /**< */ );

/**
 * @brief get matching font names
 *
 * @param c The connection
 * @param max_names The maximum number of fonts to be returned.
 * @param pattern_len The length (in bytes) of \a pattern.
 * @param pattern A font pattern, for example "-misc-fixed-*".
 * \n
 * The asterisk (*) is a wildcard for any number of characters. The question mark
 * (?) is a wildcard for a single character. Use of uppercase or lowercase does
 * not matter.
 * @return A cookie
 *
 * Gets a list of available font names which match the given \a pattern.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_list_fonts_cookie_t xcb_list_fonts_unchecked(xcb_connection_t* c /**< */ , ushort max_names /**< */ ,
	ushort pattern_len /**< */ , const char* pattern /**< */ );

int xcb_list_fonts_names_length(const xcb_list_fonts_reply_t* R /**< */ );

xcb_str_iterator_t xcb_list_fonts_names_iterator(const xcb_list_fonts_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_fonts_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_list_fonts_reply_t* xcb_list_fonts_reply(xcb_connection_t* c /**< */ , xcb_list_fonts_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_list_fonts_with_info_sizeof(const void* _buffer /**< */ );

/**
 * @brief get matching font names and information
 *
 * @param c The connection
 * @param max_names The maximum number of fonts to be returned.
 * @param pattern_len The length (in bytes) of \a pattern.
 * @param pattern A font pattern, for example "-misc-fixed-*".
 * \n
 * The asterisk (*) is a wildcard for any number of characters. The question mark
 * (?) is a wildcard for a single character. Use of uppercase or lowercase does
 * not matter.
 * @return A cookie
 *
 * Gets a list of available font names which match the given \a pattern.
 *
 */
xcb_list_fonts_with_info_cookie_t xcb_list_fonts_with_info(xcb_connection_t* c /**< */ , ushort max_names /**< */ ,
	ushort pattern_len /**< */ , const char* pattern /**< */ );

/**
 * @brief get matching font names and information
 *
 * @param c The connection
 * @param max_names The maximum number of fonts to be returned.
 * @param pattern_len The length (in bytes) of \a pattern.
 * @param pattern A font pattern, for example "-misc-fixed-*".
 * \n
 * The asterisk (*) is a wildcard for any number of characters. The question mark
 * (?) is a wildcard for a single character. Use of uppercase or lowercase does
 * not matter.
 * @return A cookie
 *
 * Gets a list of available font names which match the given \a pattern.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_list_fonts_with_info_cookie_t xcb_list_fonts_with_info_unchecked(xcb_connection_t* c /**< */ , ushort max_names /**< */ ,
	ushort pattern_len /**< */ , const char* pattern /**< */ );

xcb_fontprop_t* xcb_list_fonts_with_info_properties(const xcb_list_fonts_with_info_reply_t* R /**< */ );

int xcb_list_fonts_with_info_properties_length(const xcb_list_fonts_with_info_reply_t* R /**< */ );

xcb_fontprop_iterator_t xcb_list_fonts_with_info_properties_iterator(const xcb_list_fonts_with_info_reply_t* R /**< */ );

char* xcb_list_fonts_with_info_name(const xcb_list_fonts_with_info_reply_t* R /**< */ );

int xcb_list_fonts_with_info_name_length(const xcb_list_fonts_with_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_list_fonts_with_info_name_end(const xcb_list_fonts_with_info_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_fonts_with_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_list_fonts_with_info_reply_t* xcb_list_fonts_with_info_reply(xcb_connection_t* c /**< */ ,
	xcb_list_fonts_with_info_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_set_font_path_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_set_font_path_checked(xcb_connection_t* c /**< */ , ushort font_qty /**< */ , const xcb_str_t* font /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_set_font_path(xcb_connection_t* c /**< */ , ushort font_qty /**< */ , const xcb_str_t* font /**< */ );

int xcb_get_font_path_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_font_path_cookie_t xcb_get_font_path(xcb_connection_t* c /**< */ );

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
xcb_get_font_path_cookie_t xcb_get_font_path_unchecked(xcb_connection_t* c /**< */ );

int xcb_get_font_path_path_length(const xcb_get_font_path_reply_t* R /**< */ );

xcb_str_iterator_t xcb_get_font_path_path_iterator(const xcb_get_font_path_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_font_path_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_font_path_reply_t* xcb_get_font_path_reply(xcb_connection_t* c /**< */ , xcb_get_font_path_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 * @brief Creates a pixmap
 *
 * @param c The connection
 * @param depth TODO
 * @param pid The ID with which you will refer to the new pixmap, created by
 * `xcb_generate_id`.
 * @param drawable Drawable to get the screen from.
 * @param width The width of the new pixmap.
 * @param height The height of the new pixmap.
 * @return A cookie
 *
 * Creates a pixmap. The pixmap can only be used on the same screen as \a drawable
 * is on and only with drawables of the same \a depth.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_create_pixmap_checked(xcb_connection_t* c /**< */ , ubyte depth /**< */ , xcb_pixmap_t pid /**< */ ,
	xcb_drawable_t drawable /**< */ , ushort width /**< */ , ushort height /**< */ );

/**
 * @brief Creates a pixmap
 *
 * @param c The connection
 * @param depth TODO
 * @param pid The ID with which you will refer to the new pixmap, created by
 * `xcb_generate_id`.
 * @param drawable Drawable to get the screen from.
 * @param width The width of the new pixmap.
 * @param height The height of the new pixmap.
 * @return A cookie
 *
 * Creates a pixmap. The pixmap can only be used on the same screen as \a drawable
 * is on and only with drawables of the same \a depth.
 *
 */
xcb_void_cookie_t xcb_create_pixmap(xcb_connection_t* c /**< */ , ubyte depth /**< */ , xcb_pixmap_t pid /**< */ , xcb_drawable_t drawable /**< */ ,
	ushort width /**< */ , ushort height /**< */ );

/**
 * @brief Destroys a pixmap
 *
 * @param c The connection
 * @param pixmap The pixmap to destroy.
 * @return A cookie
 *
 * Deletes the association between the pixmap ID and the pixmap. The pixmap
 * storage will be freed when there are no more references to it.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_free_pixmap_checked(xcb_connection_t* c /**< */ , xcb_pixmap_t pixmap /**< */ );

/**
 * @brief Destroys a pixmap
 *
 * @param c The connection
 * @param pixmap The pixmap to destroy.
 * @return A cookie
 *
 * Deletes the association between the pixmap ID and the pixmap. The pixmap
 * storage will be freed when there are no more references to it.
 *
 */
xcb_void_cookie_t xcb_free_pixmap(xcb_connection_t* c /**< */ , xcb_pixmap_t pixmap /**< */ );

int xcb_create_gc_sizeof(const void* _buffer /**< */ );

/**
 * @brief Creates a graphics context
 *
 * @param c The connection
 * @param cid The ID with which you will refer to the graphics context, created by
 * `xcb_generate_id`.
 * @param drawable Drawable to get the root/depth from.
 * @return A cookie
 *
 * Creates a graphics context. The graphics context can be used with any drawable
 * that has the same root and depth as the specified drawable.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_create_gc_checked(xcb_connection_t* c /**< */ , xcb_gcontext_t cid /**< */ , xcb_drawable_t drawable /**< */ ,
	uint value_mask /**< */ , const uint* value_list /**< */ );

/**
 * @brief Creates a graphics context
 *
 * @param c The connection
 * @param cid The ID with which you will refer to the graphics context, created by
 * `xcb_generate_id`.
 * @param drawable Drawable to get the root/depth from.
 * @return A cookie
 *
 * Creates a graphics context. The graphics context can be used with any drawable
 * that has the same root and depth as the specified drawable.
 *
 */
xcb_void_cookie_t xcb_create_gc(xcb_connection_t* c /**< */ , xcb_gcontext_t cid /**< */ , xcb_drawable_t drawable /**< */ , uint value_mask /**< */ ,
	const uint* value_list /**< */ );

int xcb_change_gc_sizeof(const void* _buffer /**< */ );

/**
 * @brief change graphics context components
 *
 * @param c The connection
 * @param gc The graphics context to change.
 * @param value_mask A bitmask of #xcb_gc_t values.
 * @param value_mask \n
 * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the components specified by \a value_mask for the specified graphics context.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_change_gc_checked(xcb_connection_t* c /**< */ , xcb_gcontext_t gc /**< */ , uint value_mask /**< */ ,
	const uint* value_list /**< */ );

/**
 * @brief change graphics context components
 *
 * @param c The connection
 * @param gc The graphics context to change.
 * @param value_mask A bitmask of #xcb_gc_t values.
 * @param value_mask \n
 * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the components specified by \a value_mask for the specified graphics context.
 *
 */
xcb_void_cookie_t xcb_change_gc(xcb_connection_t* c /**< */ , xcb_gcontext_t gc /**< */ , uint value_mask /**< */ , const uint* value_list /**< */ );

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
xcb_void_cookie_t xcb_copy_gc_checked(xcb_connection_t* c /**< */ , xcb_gcontext_t src_gc /**< */ , xcb_gcontext_t dst_gc /**< */ ,
	uint value_mask /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_copy_gc(xcb_connection_t* c /**< */ , xcb_gcontext_t src_gc /**< */ , xcb_gcontext_t dst_gc /**< */ ,
	uint value_mask /**< */ );

int xcb_set_dashes_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_set_dashes_checked(xcb_connection_t* c /**< */ , xcb_gcontext_t gc /**< */ , ushort dash_offset /**< */ ,
	ushort dashes_len /**< */ , const ubyte* dashes /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_set_dashes(xcb_connection_t* c /**< */ , xcb_gcontext_t gc /**< */ , ushort dash_offset /**< */ ,
	ushort dashes_len /**< */ , const ubyte* dashes /**< */ );

int xcb_set_clip_rectangles_sizeof(const void* _buffer /**< */ , uint rectangles_len /**< */ );

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
xcb_void_cookie_t xcb_set_clip_rectangles_checked(xcb_connection_t* c /**< */ , ubyte ordering /**< */ , xcb_gcontext_t gc /**< */ , short clip_x_origin /**< */ ,
	short clip_y_origin /**< */ , uint rectangles_len /**< */ , const xcb_rectangle_t* rectangles /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_set_clip_rectangles(xcb_connection_t* c /**< */ , ubyte ordering /**< */ , xcb_gcontext_t gc /**< */ , short clip_x_origin /**< */ ,
	short clip_y_origin /**< */ , uint rectangles_len /**< */ , const xcb_rectangle_t* rectangles /**< */ );

/**
 * @brief Destroys a graphics context
 *
 * @param c The connection
 * @param gc The graphics context to destroy.
 * @return A cookie
 *
 * Destroys the specified \a gc and all associated storage.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_free_gc_checked(xcb_connection_t* c /**< */ , xcb_gcontext_t gc /**< */ );

/**
 * @brief Destroys a graphics context
 *
 * @param c The connection
 * @param gc The graphics context to destroy.
 * @return A cookie
 *
 * Destroys the specified \a gc and all associated storage.
 *
 */
xcb_void_cookie_t xcb_free_gc(xcb_connection_t* c /**< */ , xcb_gcontext_t gc /**< */ );

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
xcb_void_cookie_t xcb_clear_area_checked(xcb_connection_t* c /**< */ , ubyte exposures /**< */ , xcb_window_t window /**< */ , short x /**< */ , short y /**< */ ,
	ushort width /**< */ , ushort height /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_clear_area(xcb_connection_t* c /**< */ , ubyte exposures /**< */ , xcb_window_t window /**< */ , short x /**< */ ,
	short y /**< */ , ushort width /**< */ , ushort height /**< */ );

/**
 * @brief copy areas
 *
 * @param c The connection
 * @param src_drawable The source drawable (Window or Pixmap).
 * @param dst_drawable The destination drawable (Window or Pixmap).
 * @param gc The graphics context to use.
 * @param src_x The source X coordinate.
 * @param src_y The source Y coordinate.
 * @param dst_x The destination X coordinate.
 * @param dst_y The destination Y coordinate.
 * @param width The width of the area to copy (in pixels).
 * @param height The height of the area to copy (in pixels).
 * @return A cookie
 *
 * Copies the specified rectangle from \a src_drawable to \a dst_drawable.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_copy_area_checked(xcb_connection_t* c /**< */ , xcb_drawable_t src_drawable /**< */ , xcb_drawable_t dst_drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , short src_x /**< */ , short src_y /**< */ , short dst_x /**< */ , short dst_y /**< */ ,
	ushort width /**< */ , ushort height /**< */ );

/**
 * @brief copy areas
 *
 * @param c The connection
 * @param src_drawable The source drawable (Window or Pixmap).
 * @param dst_drawable The destination drawable (Window or Pixmap).
 * @param gc The graphics context to use.
 * @param src_x The source X coordinate.
 * @param src_y The source Y coordinate.
 * @param dst_x The destination X coordinate.
 * @param dst_y The destination Y coordinate.
 * @param width The width of the area to copy (in pixels).
 * @param height The height of the area to copy (in pixels).
 * @return A cookie
 *
 * Copies the specified rectangle from \a src_drawable to \a dst_drawable.
 *
 */
xcb_void_cookie_t xcb_copy_area(xcb_connection_t* c /**< */ , xcb_drawable_t src_drawable /**< */ , xcb_drawable_t dst_drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , short src_x /**< */ , short src_y /**< */ , short dst_x /**< */ , short dst_y /**< */ ,
	ushort width /**< */ , ushort height /**< */ );

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
xcb_void_cookie_t xcb_copy_plane_checked(xcb_connection_t* c /**< */ , xcb_drawable_t src_drawable /**< */ , xcb_drawable_t dst_drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , short src_x /**< */ , short src_y /**< */ , short dst_x /**< */ , short dst_y /**< */ ,
	ushort width /**< */ , ushort height /**< */ , uint bit_plane /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_copy_plane(xcb_connection_t* c /**< */ , xcb_drawable_t src_drawable /**< */ , xcb_drawable_t dst_drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , short src_x /**< */ , short src_y /**< */ , short dst_x /**< */ , short dst_y /**< */ ,
	ushort width /**< */ , ushort height /**< */ , uint bit_plane /**< */ );

int xcb_poly_point_sizeof(const void* _buffer /**< */ , uint points_len /**< */ );

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
xcb_void_cookie_t xcb_poly_point_checked(xcb_connection_t* c /**< */ , ubyte coordinate_mode /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , uint points_len /**< */ , const xcb_point_t* points /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_poly_point(xcb_connection_t* c /**< */ , ubyte coordinate_mode /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	uint points_len /**< */ , const xcb_point_t* points /**< */ );

int xcb_poly_line_sizeof(const void* _buffer /**< */ , uint points_len /**< */ );

/**
 * @brief draw lines
 *
 * @param c The connection
 * @param coordinate_mode A bitmask of #xcb_coord_mode_t values.
 * @param coordinate_mode \n
 * @param drawable The drawable to draw the line(s) on.
 * @param gc The graphics context to use.
 * @param points_len The number of `xcb_point_t` structures in \a points.
 * @param points An array of points.
 * @return A cookie
 *
 * Draws \a points_len-1 lines between each pair of points (point[i], point[i+1])
 * in the \a points array. The lines are drawn in the order listed in the array.
 * They join correctly at all intermediate points, and if the first and last
 * points coincide, the first and last lines also join correctly. For any given
 * line, a pixel is not drawn more than once. If thin (zero line-width) lines
 * intersect, the intersecting pixels are drawn multiple times. If wide lines
 * intersect, the intersecting pixels are drawn only once, as though the entire
 * request were a single, filled shape.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_poly_line_checked(xcb_connection_t* c /**< */ , ubyte coordinate_mode /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_gcontext_t gc /**< */ , uint points_len /**< */ , const xcb_point_t* points /**< */ );

/**
 * @brief draw lines
 *
 * @param c The connection
 * @param coordinate_mode A bitmask of #xcb_coord_mode_t values.
 * @param coordinate_mode \n
 * @param drawable The drawable to draw the line(s) on.
 * @param gc The graphics context to use.
 * @param points_len The number of `xcb_point_t` structures in \a points.
 * @param points An array of points.
 * @return A cookie
 *
 * Draws \a points_len-1 lines between each pair of points (point[i], point[i+1])
 * in the \a points array. The lines are drawn in the order listed in the array.
 * They join correctly at all intermediate points, and if the first and last
 * points coincide, the first and last lines also join correctly. For any given
 * line, a pixel is not drawn more than once. If thin (zero line-width) lines
 * intersect, the intersecting pixels are drawn multiple times. If wide lines
 * intersect, the intersecting pixels are drawn only once, as though the entire
 * request were a single, filled shape.
 *
 */
xcb_void_cookie_t xcb_poly_line(xcb_connection_t* c /**< */ , ubyte coordinate_mode /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	uint points_len /**< */ , const xcb_point_t* points /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_segment_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_segment_t)
 */
void xcb_segment_next(xcb_segment_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_segment_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_segment_end(xcb_segment_iterator_t i /**< */ );

int xcb_poly_segment_sizeof(const void* _buffer /**< */ , uint segments_len /**< */ );

/**
 * @brief draw lines
 *
 * @param c The connection
 * @param drawable A drawable (Window or Pixmap) to draw on.
 * @param gc The graphics context to use.
 * \n
 * TODO: document which attributes of a gc are used
 * @param segments_len The number of `xcb_segment_t` structures in \a segments.
 * @param segments An array of `xcb_segment_t` structures.
 * @return A cookie
 *
 * Draws multiple, unconnected lines. For each segment, a line is drawn between
 * (x1, y1) and (x2, y2). The lines are drawn in the order listed in the array of
 * `xcb_segment_t` structures and does not perform joining at coincident
 * endpoints. For any given line, a pixel is not drawn more than once. If lines
 * intersect, the intersecting pixels are drawn multiple times.
 * 
 * TODO: include the xcb_segment_t data structure
 * 
 * TODO: an example
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_poly_segment_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , uint segments_len /**< */ ,
	const xcb_segment_t* segments /**< */ );

/**
 * @brief draw lines
 *
 * @param c The connection
 * @param drawable A drawable (Window or Pixmap) to draw on.
 * @param gc The graphics context to use.
 * \n
 * TODO: document which attributes of a gc are used
 * @param segments_len The number of `xcb_segment_t` structures in \a segments.
 * @param segments An array of `xcb_segment_t` structures.
 * @return A cookie
 *
 * Draws multiple, unconnected lines. For each segment, a line is drawn between
 * (x1, y1) and (x2, y2). The lines are drawn in the order listed in the array of
 * `xcb_segment_t` structures and does not perform joining at coincident
 * endpoints. For any given line, a pixel is not drawn more than once. If lines
 * intersect, the intersecting pixels are drawn multiple times.
 * 
 * TODO: include the xcb_segment_t data structure
 * 
 * TODO: an example
 *
 */
xcb_void_cookie_t xcb_poly_segment(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	uint segments_len /**< */ , const xcb_segment_t* segments /**< */ );

int xcb_poly_rectangle_sizeof(const void* _buffer /**< */ , uint rectangles_len /**< */ );

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
xcb_void_cookie_t xcb_poly_rectangle_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	uint rectangles_len /**< */ , const xcb_rectangle_t* rectangles /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_poly_rectangle(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , uint rectangles_len /**< */ ,
	const xcb_rectangle_t* rectangles /**< */ );

int xcb_poly_arc_sizeof(const void* _buffer /**< */ , uint arcs_len /**< */ );

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
xcb_void_cookie_t xcb_poly_arc_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	uint arcs_len /**< */ , const xcb_arc_t* arcs /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_poly_arc(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	uint arcs_len /**< */ , const xcb_arc_t* arcs /**< */ );

int xcb_fill_poly_sizeof(const void* _buffer /**< */ , uint points_len /**< */ );

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
xcb_void_cookie_t xcb_fill_poly_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , ubyte shape /**< */ ,
	ubyte coordinate_mode /**< */ , uint points_len /**< */ , const xcb_point_t* points /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_fill_poly(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , ubyte shape /**< */ ,
	ubyte coordinate_mode /**< */ , uint points_len /**< */ , const xcb_point_t* points /**< */ );

int xcb_poly_fill_rectangle_sizeof(const void* _buffer /**< */ , uint rectangles_len /**< */ );

/**
 * @brief Fills rectangles
 *
 * @param c The connection
 * @param drawable The drawable (Window or Pixmap) to draw on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: function, plane-mask,
 * fill-style, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * \n
 * The following graphics context mode-dependent components are used:
 * foreground, background, tile, stipple, tile-stipple-x-origin, and
 * tile-stipple-y-origin.
 * @param rectangles_len The number of `xcb_rectangle_t` structures in \a rectangles.
 * @param rectangles The rectangles to fill.
 * @return A cookie
 *
 * Fills the specified rectangle(s) in the order listed in the array. For any
 * given rectangle, each pixel is not drawn more than once. If rectangles
 * intersect, the intersecting pixels are drawn multiple times.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_poly_fill_rectangle_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	uint rectangles_len /**< */ , const xcb_rectangle_t* rectangles /**< */ );

/**
 * @brief Fills rectangles
 *
 * @param c The connection
 * @param drawable The drawable (Window or Pixmap) to draw on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: function, plane-mask,
 * fill-style, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * \n
 * The following graphics context mode-dependent components are used:
 * foreground, background, tile, stipple, tile-stipple-x-origin, and
 * tile-stipple-y-origin.
 * @param rectangles_len The number of `xcb_rectangle_t` structures in \a rectangles.
 * @param rectangles The rectangles to fill.
 * @return A cookie
 *
 * Fills the specified rectangle(s) in the order listed in the array. For any
 * given rectangle, each pixel is not drawn more than once. If rectangles
 * intersect, the intersecting pixels are drawn multiple times.
 *
 */
xcb_void_cookie_t xcb_poly_fill_rectangle(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	uint rectangles_len /**< */ , const xcb_rectangle_t* rectangles /**< */ );

int xcb_poly_fill_arc_sizeof(const void* _buffer /**< */ , uint arcs_len /**< */ );

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
xcb_void_cookie_t xcb_poly_fill_arc_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	uint arcs_len /**< */ , const xcb_arc_t* arcs /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_poly_fill_arc(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	uint arcs_len /**< */ , const xcb_arc_t* arcs /**< */ );

int xcb_put_image_sizeof(const void* _buffer /**< */ , uint data_len /**< */ );

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
xcb_void_cookie_t xcb_put_image_checked(xcb_connection_t* c /**< */ , ubyte format /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	ushort width /**< */ , ushort height /**< */ , short dst_x /**< */ , short dst_y /**< */ , ubyte left_pad /**< */ , ubyte depth /**< */ ,
	uint data_len /**< */ , const ubyte* data /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_put_image(xcb_connection_t* c /**< */ , ubyte format /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , ushort width /**< */ ,
	ushort height /**< */ , short dst_x /**< */ , short dst_y /**< */ , ubyte left_pad /**< */ , ubyte depth /**< */ ,
	uint data_len /**< */ , const ubyte* data /**< */ );

int xcb_get_image_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_image_cookie_t xcb_get_image(xcb_connection_t* c /**< */ , ubyte format /**< */ , xcb_drawable_t drawable /**< */ , short x /**< */ , short y /**< */ , ushort width /**< */ ,
	ushort height /**< */ , uint plane_mask /**< */ );

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
xcb_get_image_cookie_t xcb_get_image_unchecked(xcb_connection_t* c /**< */ , ubyte format /**< */ , xcb_drawable_t drawable /**< */ , short x /**< */ , short y /**< */ ,
	ushort width /**< */ , ushort height /**< */ , uint plane_mask /**< */ );

ubyte* xcb_get_image_data(const xcb_get_image_reply_t* R /**< */ );

int xcb_get_image_data_length(const xcb_get_image_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_get_image_data_end(const xcb_get_image_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_image_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_image_reply_t* xcb_get_image_reply(xcb_connection_t* c /**< */ , xcb_get_image_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_poly_text_8_sizeof(const void* _buffer /**< */ , uint items_len /**< */ );

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
xcb_void_cookie_t xcb_poly_text_8_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , short x /**< */ , short y /**< */ ,
	uint items_len /**< */ , const ubyte* items /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_poly_text_8(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , short x /**< */ , short y /**< */ ,
	uint items_len /**< */ , const ubyte* items /**< */ );

int xcb_poly_text_16_sizeof(const void* _buffer /**< */ , uint items_len /**< */ );

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
xcb_void_cookie_t xcb_poly_text_16_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , short x /**< */ , short y /**< */ ,
	uint items_len /**< */ , const ubyte* items /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_poly_text_16(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , short x /**< */ , short y /**< */ ,
	uint items_len /**< */ , const ubyte* items /**< */ );

int xcb_image_text_8_sizeof(const void* _buffer /**< */ );

/**
 * @brief Draws text
 *
 * @param c The connection
 * @param string_len The length of the \a string. Note that this parameter limited by 255 due to
 * using 8 bits!
 * @param drawable The drawable (Window or Pixmap) to draw text on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: plane-mask, foreground,
 * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * @param x The x coordinate of the first character, relative to the origin of \a drawable.
 * @param y The y coordinate of the first character, relative to the origin of \a drawable.
 * @param string The string to draw. Only the first 255 characters are relevant due to the data
 * type of \a string_len.
 * @return A cookie
 *
 * Fills the destination rectangle with the background pixel from \a gc, then
 * paints the text with the foreground pixel from \a gc. The upper-left corner of
 * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
 * the height is font-ascent + font-descent. The overall-width, font-ascent and
 * font-descent are as returned by `xcb_query_text_extents` (TODO).
 * 
 * Note that using X core fonts is deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_image_text_8_checked(xcb_connection_t* c /**< */ , ubyte string_len /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	short x /**< */ , short y /**< */ , const char* string /**< */ );

/**
 * @brief Draws text
 *
 * @param c The connection
 * @param string_len The length of the \a string. Note that this parameter limited by 255 due to
 * using 8 bits!
 * @param drawable The drawable (Window or Pixmap) to draw text on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: plane-mask, foreground,
 * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * @param x The x coordinate of the first character, relative to the origin of \a drawable.
 * @param y The y coordinate of the first character, relative to the origin of \a drawable.
 * @param string The string to draw. Only the first 255 characters are relevant due to the data
 * type of \a string_len.
 * @return A cookie
 *
 * Fills the destination rectangle with the background pixel from \a gc, then
 * paints the text with the foreground pixel from \a gc. The upper-left corner of
 * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
 * the height is font-ascent + font-descent. The overall-width, font-ascent and
 * font-descent are as returned by `xcb_query_text_extents` (TODO).
 * 
 * Note that using X core fonts is deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 */
xcb_void_cookie_t xcb_image_text_8(xcb_connection_t* c /**< */ , ubyte string_len /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , short x /**< */ ,
	short y /**< */ , const char* string /**< */ );

int xcb_image_text_16_sizeof(const void* _buffer /**< */ );

/**
 * @brief Draws text
 *
 * @param c The connection
 * @param string_len The length of the \a string in characters. Note that this parameter limited by
 * 255 due to using 8 bits!
 * @param drawable The drawable (Window or Pixmap) to draw text on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: plane-mask, foreground,
 * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * @param x The x coordinate of the first character, relative to the origin of \a drawable.
 * @param y The y coordinate of the first character, relative to the origin of \a drawable.
 * @param string The string to draw. Only the first 255 characters are relevant due to the data
 * type of \a string_len. Every character uses 2 bytes (hence the 16 in this
 * request's name).
 * @return A cookie
 *
 * Fills the destination rectangle with the background pixel from \a gc, then
 * paints the text with the foreground pixel from \a gc. The upper-left corner of
 * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
 * the height is font-ascent + font-descent. The overall-width, font-ascent and
 * font-descent are as returned by `xcb_query_text_extents` (TODO).
 * 
 * Note that using X core fonts is deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_image_text_16_checked(xcb_connection_t* c /**< */ , ubyte string_len /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ ,
	short x /**< */ , short y /**< */ , const xcb_char2b_t* string /**< */ );

/**
 * @brief Draws text
 *
 * @param c The connection
 * @param string_len The length of the \a string in characters. Note that this parameter limited by
 * 255 due to using 8 bits!
 * @param drawable The drawable (Window or Pixmap) to draw text on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: plane-mask, foreground,
 * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * @param x The x coordinate of the first character, relative to the origin of \a drawable.
 * @param y The y coordinate of the first character, relative to the origin of \a drawable.
 * @param string The string to draw. Only the first 255 characters are relevant due to the data
 * type of \a string_len. Every character uses 2 bytes (hence the 16 in this
 * request's name).
 * @return A cookie
 *
 * Fills the destination rectangle with the background pixel from \a gc, then
 * paints the text with the foreground pixel from \a gc. The upper-left corner of
 * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
 * the height is font-ascent + font-descent. The overall-width, font-ascent and
 * font-descent are as returned by `xcb_query_text_extents` (TODO).
 * 
 * Note that using X core fonts is deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 */
xcb_void_cookie_t xcb_image_text_16(xcb_connection_t* c /**< */ , ubyte string_len /**< */ , xcb_drawable_t drawable /**< */ , xcb_gcontext_t gc /**< */ , short x /**< */ ,
	short y /**< */ , const xcb_char2b_t* string /**< */ );

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
xcb_void_cookie_t xcb_create_colormap_checked(xcb_connection_t* c /**< */ , ubyte alloc /**< */ , xcb_colormap_t mid /**< */ ,
	xcb_window_t window /**< */ , xcb_visualid_t visual /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_create_colormap(xcb_connection_t* c /**< */ , ubyte alloc /**< */ , xcb_colormap_t mid /**< */ ,
	xcb_window_t window /**< */ , xcb_visualid_t visual /**< */ );

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
xcb_void_cookie_t xcb_free_colormap_checked(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_free_colormap(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ );

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
xcb_void_cookie_t xcb_copy_colormap_and_free_checked(xcb_connection_t* c /**< */ , xcb_colormap_t mid /**< */ , xcb_colormap_t src_cmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_copy_colormap_and_free(xcb_connection_t* c /**< */ , xcb_colormap_t mid /**< */ , xcb_colormap_t src_cmap /**< */ );

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
xcb_void_cookie_t xcb_install_colormap_checked(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_install_colormap(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ );

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
xcb_void_cookie_t xcb_uninstall_colormap_checked(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_uninstall_colormap(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ );

int xcb_list_installed_colormaps_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_list_installed_colormaps_cookie_t xcb_list_installed_colormaps(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_list_installed_colormaps_cookie_t xcb_list_installed_colormaps_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

xcb_colormap_t* xcb_list_installed_colormaps_cmaps(const xcb_list_installed_colormaps_reply_t* R /**< */ );

int xcb_list_installed_colormaps_cmaps_length(const xcb_list_installed_colormaps_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_list_installed_colormaps_cmaps_end(const xcb_list_installed_colormaps_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_installed_colormaps_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_list_installed_colormaps_reply_t* xcb_list_installed_colormaps_reply(xcb_connection_t* c /**< */ ,
	xcb_list_installed_colormaps_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @brief Allocate a color
 *
 * @param c The connection
 * @param cmap TODO
 * @param red The red value of your color.
 * @param green The green value of your color.
 * @param blue The blue value of your color.
 * @return A cookie
 *
 * Allocates a read-only colormap entry corresponding to the closest RGB value
 * supported by the hardware. If you are using TrueColor, you can take a shortcut
 * and directly calculate the color pixel value to avoid the round trip. But, for
 * example, on 16-bit color setups (VNC), you can easily get the closest supported
 * RGB value to the RGB value you are specifying.
 *
 */
xcb_alloc_color_cookie_t xcb_alloc_color(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ , ushort red /**< */ ,
	ushort green /**< */ , ushort blue /**< */ );

/**
 * @brief Allocate a color
 *
 * @param c The connection
 * @param cmap TODO
 * @param red The red value of your color.
 * @param green The green value of your color.
 * @param blue The blue value of your color.
 * @return A cookie
 *
 * Allocates a read-only colormap entry corresponding to the closest RGB value
 * supported by the hardware. If you are using TrueColor, you can take a shortcut
 * and directly calculate the color pixel value to avoid the round trip. But, for
 * example, on 16-bit color setups (VNC), you can easily get the closest supported
 * RGB value to the RGB value you are specifying.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_alloc_color_cookie_t xcb_alloc_color_unchecked(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ ,
	ushort red /**< */ , ushort green /**< */ , ushort blue /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_alloc_color_reply_t* xcb_alloc_color_reply(xcb_connection_t* c /**< */ , xcb_alloc_color_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_alloc_named_color_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_alloc_named_color_cookie_t xcb_alloc_named_color(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ ,
	ushort name_len /**< */ , const char* name /**< */ );

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
xcb_alloc_named_color_cookie_t xcb_alloc_named_color_unchecked(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ ,
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
 * xcb_alloc_named_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_alloc_named_color_reply_t* xcb_alloc_named_color_reply(xcb_connection_t* c /**< */ ,
	xcb_alloc_named_color_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_alloc_color_cells_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_alloc_color_cells_cookie_t xcb_alloc_color_cells(xcb_connection_t* c /**< */ , ubyte contiguous /**< */ , xcb_colormap_t cmap /**< */ ,
	ushort colors /**< */ , ushort planes /**< */ );

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
xcb_alloc_color_cells_cookie_t xcb_alloc_color_cells_unchecked(xcb_connection_t* c /**< */ , ubyte contiguous /**< */ , xcb_colormap_t cmap /**< */ ,
	ushort colors /**< */ , ushort planes /**< */ );

uint* xcb_alloc_color_cells_pixels(const xcb_alloc_color_cells_reply_t* R /**< */ );

int xcb_alloc_color_cells_pixels_length(const xcb_alloc_color_cells_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_alloc_color_cells_pixels_end(const xcb_alloc_color_cells_reply_t* R /**< */ );

uint* xcb_alloc_color_cells_masks(const xcb_alloc_color_cells_reply_t* R /**< */ );

int xcb_alloc_color_cells_masks_length(const xcb_alloc_color_cells_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_alloc_color_cells_masks_end(const xcb_alloc_color_cells_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_cells_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_alloc_color_cells_reply_t* xcb_alloc_color_cells_reply(xcb_connection_t* c /**< */ ,
	xcb_alloc_color_cells_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_alloc_color_planes_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_alloc_color_planes_cookie_t xcb_alloc_color_planes(xcb_connection_t* c /**< */ , ubyte contiguous /**< */ , xcb_colormap_t cmap /**< */ ,
	ushort colors /**< */ , ushort reds /**< */ , ushort greens /**< */ , ushort blues /**< */ );

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
xcb_alloc_color_planes_cookie_t xcb_alloc_color_planes_unchecked(xcb_connection_t* c /**< */ , ubyte contiguous /**< */ , xcb_colormap_t cmap /**< */ ,
	ushort colors /**< */ , ushort reds /**< */ , ushort greens /**< */ , ushort blues /**< */ );

uint* xcb_alloc_color_planes_pixels(const xcb_alloc_color_planes_reply_t* R /**< */ );

int xcb_alloc_color_planes_pixels_length(const xcb_alloc_color_planes_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_alloc_color_planes_pixels_end(const xcb_alloc_color_planes_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_planes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_alloc_color_planes_reply_t* xcb_alloc_color_planes_reply(xcb_connection_t* c /**< */ , xcb_alloc_color_planes_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_free_colors_sizeof(const void* _buffer /**< */ , uint pixels_len /**< */ );

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
xcb_void_cookie_t xcb_free_colors_checked(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ , uint plane_mask /**< */ ,
	uint pixels_len /**< */ , const uint* pixels /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_free_colors(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ , uint plane_mask /**< */ ,
	uint pixels_len /**< */ , const uint* pixels /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_coloritem_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_coloritem_t)
 */
void xcb_coloritem_next(xcb_coloritem_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_coloritem_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_coloritem_end(xcb_coloritem_iterator_t i /**< */ );

int xcb_store_colors_sizeof(const void* _buffer /**< */ , uint items_len /**< */ );

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
xcb_void_cookie_t xcb_store_colors_checked(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ , uint items_len /**< */ ,
	const xcb_coloritem_t* items /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_store_colors(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ , uint items_len /**< */ ,
	const xcb_coloritem_t* items /**< */ );

int xcb_store_named_color_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_store_named_color_checked(xcb_connection_t* c /**< */ , ubyte flags /**< */ , xcb_colormap_t cmap /**< */ , uint pixel /**< */ ,
	ushort name_len /**< */ , const char* name /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_store_named_color(xcb_connection_t* c /**< */ , ubyte flags /**< */ , xcb_colormap_t cmap /**< */ , uint pixel /**< */ ,
	ushort name_len /**< */ , const char* name /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_rgb_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_rgb_t)
 */
void xcb_rgb_next(xcb_rgb_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_rgb_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_rgb_end(xcb_rgb_iterator_t i /**< */ );

int xcb_query_colors_sizeof(const void* _buffer /**< */ , uint pixels_len /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_query_colors_cookie_t xcb_query_colors(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ , uint pixels_len /**< */ ,
	const uint* pixels /**< */ );

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
xcb_query_colors_cookie_t xcb_query_colors_unchecked(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ ,
	uint pixels_len /**< */ , const uint* pixels /**< */ );

xcb_rgb_t* xcb_query_colors_colors(const xcb_query_colors_reply_t* R /**< */ );

int xcb_query_colors_colors_length(const xcb_query_colors_reply_t* R /**< */ );

xcb_rgb_iterator_t xcb_query_colors_colors_iterator(const xcb_query_colors_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_colors_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_query_colors_reply_t* xcb_query_colors_reply(xcb_connection_t* c /**< */ , xcb_query_colors_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_lookup_color_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_lookup_color_cookie_t xcb_lookup_color(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ , ushort name_len /**< */ ,
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
xcb_lookup_color_cookie_t xcb_lookup_color_unchecked(xcb_connection_t* c /**< */ , xcb_colormap_t cmap /**< */ ,
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
 * xcb_lookup_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_lookup_color_reply_t* xcb_lookup_color_reply(xcb_connection_t* c /**< */ , xcb_lookup_color_cookie_t cookie /**< */ ,
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
xcb_void_cookie_t xcb_create_cursor_checked(xcb_connection_t* c /**< */ , xcb_cursor_t cid /**< */ , xcb_pixmap_t source /**< */ , xcb_pixmap_t mask /**< */ ,
	ushort fore_red /**< */ , ushort fore_green /**< */ , ushort fore_blue /**< */ , ushort back_red /**< */ , ushort back_green /**< */ ,
	ushort back_blue /**< */ , ushort x /**< */ , ushort y /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_create_cursor(xcb_connection_t* c /**< */ , xcb_cursor_t cid /**< */ , xcb_pixmap_t source /**< */ , xcb_pixmap_t mask /**< */ ,
	ushort fore_red /**< */ , ushort fore_green /**< */ , ushort fore_blue /**< */ , ushort back_red /**< */ , ushort back_green /**< */ ,
	ushort back_blue /**< */ , ushort x /**< */ , ushort y /**< */ );

/**
 * @brief create cursor
 *
 * @param c The connection
 * @param cid The ID with which you will refer to the cursor, created by `xcb_generate_id`.
 * @param source_font In which font to look for the cursor glyph.
 * @param mask_font In which font to look for the mask glyph.
 * @param source_char The glyph of \a source_font to use.
 * @param mask_char The glyph of \a mask_font to use as a mask: Pixels which are set to 1 define
 * which source pixels are displayed. All pixels which are set to 0 are not
 * displayed.
 * @param fore_red The red value of the foreground color.
 * @param fore_green The green value of the foreground color.
 * @param fore_blue The blue value of the foreground color.
 * @param back_red The red value of the background color.
 * @param back_green The green value of the background color.
 * @param back_blue The blue value of the background color.
 * @return A cookie
 *
 * Creates a cursor from a font glyph. X provides a set of standard cursor shapes
 * in a special font named cursor. Applications are encouraged to use this
 * interface for their cursors because the font can be customized for the
 * individual display type.
 * 
 * All pixels which are set to 1 in the source will use the foreground color (as
 * specified by \a fore_red, \a fore_green and \a fore_blue). All pixels set to 0
 * will use the background color (as specified by \a back_red, \a back_green and
 * \a back_blue).
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_create_glyph_cursor_checked(xcb_connection_t* c /**< */ , xcb_cursor_t cid /**< */ , xcb_font_t source_font /**< */ ,
	xcb_font_t mask_font /**< */ , ushort source_char /**< */ , ushort mask_char /**< */ , ushort fore_red /**< */ , ushort fore_green /**< */ , ushort fore_blue /**< */ ,
	ushort back_red /**< */ , ushort back_green /**< */ , ushort back_blue /**< */ );

/**
 * @brief create cursor
 *
 * @param c The connection
 * @param cid The ID with which you will refer to the cursor, created by `xcb_generate_id`.
 * @param source_font In which font to look for the cursor glyph.
 * @param mask_font In which font to look for the mask glyph.
 * @param source_char The glyph of \a source_font to use.
 * @param mask_char The glyph of \a mask_font to use as a mask: Pixels which are set to 1 define
 * which source pixels are displayed. All pixels which are set to 0 are not
 * displayed.
 * @param fore_red The red value of the foreground color.
 * @param fore_green The green value of the foreground color.
 * @param fore_blue The blue value of the foreground color.
 * @param back_red The red value of the background color.
 * @param back_green The green value of the background color.
 * @param back_blue The blue value of the background color.
 * @return A cookie
 *
 * Creates a cursor from a font glyph. X provides a set of standard cursor shapes
 * in a special font named cursor. Applications are encouraged to use this
 * interface for their cursors because the font can be customized for the
 * individual display type.
 * 
 * All pixels which are set to 1 in the source will use the foreground color (as
 * specified by \a fore_red, \a fore_green and \a fore_blue). All pixels set to 0
 * will use the background color (as specified by \a back_red, \a back_green and
 * \a back_blue).
 *
 */
xcb_void_cookie_t xcb_create_glyph_cursor(xcb_connection_t* c /**< */ , xcb_cursor_t cid /**< */ , xcb_font_t source_font /**< */ , xcb_font_t mask_font /**< */ ,
	ushort source_char /**< */ , ushort mask_char /**< */ , ushort fore_red /**< */ , ushort fore_green /**< */ , ushort fore_blue /**< */ , ushort back_red /**< */ ,
	ushort back_green /**< */ , ushort back_blue /**< */ );

/**
 * @brief Deletes a cursor
 *
 * @param c The connection
 * @param cursor The cursor to destroy.
 * @return A cookie
 *
 * Deletes the association between the cursor resource ID and the specified
 * cursor. The cursor is freed when no other resource references it.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_free_cursor_checked(xcb_connection_t* c /**< */ , xcb_cursor_t cursor /**< */ );

/**
 * @brief Deletes a cursor
 *
 * @param c The connection
 * @param cursor The cursor to destroy.
 * @return A cookie
 *
 * Deletes the association between the cursor resource ID and the specified
 * cursor. The cursor is freed when no other resource references it.
 *
 */
xcb_void_cookie_t xcb_free_cursor(xcb_connection_t* c /**< */ , xcb_cursor_t cursor /**< */ );

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
xcb_void_cookie_t xcb_recolor_cursor_checked(xcb_connection_t* c /**< */ , xcb_cursor_t cursor /**< */ , ushort fore_red /**< */ , ushort fore_green /**< */ ,
	ushort fore_blue /**< */ , ushort back_red /**< */ , ushort back_green /**< */ , ushort back_blue /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_recolor_cursor(xcb_connection_t* c /**< */ , xcb_cursor_t cursor /**< */ , ushort fore_red /**< */ , ushort fore_green /**< */ ,
	ushort fore_blue /**< */ , ushort back_red /**< */ , ushort back_green /**< */ , ushort back_blue /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_query_best_size_cookie_t xcb_query_best_size(xcb_connection_t* c /**< */ , ubyte class_ /**< */ ,
	xcb_drawable_t drawable /**< */ , ushort width /**< */ , ushort height /**< */ );

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
xcb_query_best_size_cookie_t xcb_query_best_size_unchecked(xcb_connection_t* c /**< */ , ubyte class_ /**< */ ,
	xcb_drawable_t drawable /**< */ , ushort width /**< */ , ushort height /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_best_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_query_best_size_reply_t* xcb_query_best_size_reply(xcb_connection_t* c /**< */ , xcb_query_best_size_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_query_extension_sizeof(const void* _buffer /**< */ );

/**
 * @brief check if extension is present
 *
 * @param c The connection
 * @param name_len The length of \a name in bytes.
 * @param name The name of the extension to query, for example "RANDR". This is case
 * sensitive!
 * @return A cookie
 *
 * Determines if the specified extension is present on this X11 server.
 * 
 * Every extension has a unique `major_opcode` to identify requests, the minor
 * opcodes and request formats are extension-specific. If the extension provides
 * events and errors, the `first_event` and `first_error` fields in the reply are
 * set accordingly.
 * 
 * There should rarely be a need to use this request directly, XCB provides the
 * `xcb_get_extension_data` function instead.
 *
 */
xcb_query_extension_cookie_t xcb_query_extension(xcb_connection_t* c /**< */ , ushort name_len /**< */ , const char* name /**< */ );

/**
 * @brief check if extension is present
 *
 * @param c The connection
 * @param name_len The length of \a name in bytes.
 * @param name The name of the extension to query, for example "RANDR". This is case
 * sensitive!
 * @return A cookie
 *
 * Determines if the specified extension is present on this X11 server.
 * 
 * Every extension has a unique `major_opcode` to identify requests, the minor
 * opcodes and request formats are extension-specific. If the extension provides
 * events and errors, the `first_event` and `first_error` fields in the reply are
 * set accordingly.
 * 
 * There should rarely be a need to use this request directly, XCB provides the
 * `xcb_get_extension_data` function instead.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
xcb_query_extension_cookie_t xcb_query_extension_unchecked(xcb_connection_t* c /**< */ , ushort name_len /**< */ , const char* name /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_extension_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_query_extension_reply_t* xcb_query_extension_reply(xcb_connection_t* c /**< */ , xcb_query_extension_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_list_extensions_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_list_extensions_cookie_t xcb_list_extensions(xcb_connection_t* c /**< */ );

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
xcb_list_extensions_cookie_t xcb_list_extensions_unchecked(xcb_connection_t* c /**< */ );

int xcb_list_extensions_names_length(const xcb_list_extensions_reply_t* R /**< */ );

xcb_str_iterator_t xcb_list_extensions_names_iterator(const xcb_list_extensions_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_extensions_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_list_extensions_reply_t* xcb_list_extensions_reply(xcb_connection_t* c /**< */ , xcb_list_extensions_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_change_keyboard_mapping_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_change_keyboard_mapping_checked(xcb_connection_t* c /**< */ , ubyte keycode_count /**< */ , xcb_keycode_t first_keycode /**< */ ,
	ubyte keysyms_per_keycode /**< */ , const xcb_keysym_t* keysyms /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_change_keyboard_mapping(xcb_connection_t* c /**< */ , ubyte keycode_count /**< */ , xcb_keycode_t first_keycode /**< */ ,
	ubyte keysyms_per_keycode /**< */ , const xcb_keysym_t* keysyms /**< */ );

int xcb_get_keyboard_mapping_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_keyboard_mapping_cookie_t xcb_get_keyboard_mapping(xcb_connection_t* c /**< */ , xcb_keycode_t first_keycode /**< */ ,
	ubyte count /**< */ );

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
xcb_get_keyboard_mapping_cookie_t xcb_get_keyboard_mapping_unchecked(xcb_connection_t* c /**< */ , xcb_keycode_t first_keycode /**< */ ,
	ubyte count /**< */ );

xcb_keysym_t* xcb_get_keyboard_mapping_keysyms(const xcb_get_keyboard_mapping_reply_t* R /**< */ );

int xcb_get_keyboard_mapping_keysyms_length(const xcb_get_keyboard_mapping_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_get_keyboard_mapping_keysyms_end(const xcb_get_keyboard_mapping_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_keyboard_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_keyboard_mapping_reply_t* xcb_get_keyboard_mapping_reply(xcb_connection_t* c /**< */ ,
	xcb_get_keyboard_mapping_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_change_keyboard_control_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_change_keyboard_control_checked(xcb_connection_t* c /**< */ , uint value_mask /**< */ , const uint* value_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_change_keyboard_control(xcb_connection_t* c /**< */ , uint value_mask /**< */ , const uint* value_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_keyboard_control_cookie_t xcb_get_keyboard_control(xcb_connection_t* c /**< */ );

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
xcb_get_keyboard_control_cookie_t xcb_get_keyboard_control_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_keyboard_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_keyboard_control_reply_t* xcb_get_keyboard_control_reply(xcb_connection_t* c /**< */ ,
	xcb_get_keyboard_control_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_bell_checked(xcb_connection_t* c /**< */ , byte percent /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_bell(xcb_connection_t* c /**< */ , byte percent /**< */ );

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
xcb_void_cookie_t xcb_change_pointer_control_checked(xcb_connection_t* c /**< */ , short acceleration_numerator /**< */ ,
	short acceleration_denominator /**< */ , short threshold /**< */ , ubyte do_acceleration /**< */ , ubyte do_threshold /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_change_pointer_control(xcb_connection_t* c /**< */ , short acceleration_numerator /**< */ ,
	short acceleration_denominator /**< */ , short threshold /**< */ , ubyte do_acceleration /**< */ , ubyte do_threshold /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_pointer_control_cookie_t xcb_get_pointer_control(xcb_connection_t* c /**< */ );

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
xcb_get_pointer_control_cookie_t xcb_get_pointer_control_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_pointer_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_pointer_control_reply_t* xcb_get_pointer_control_reply(xcb_connection_t* c /**< */ ,
	xcb_get_pointer_control_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_set_screen_saver_checked(xcb_connection_t* c /**< */ , short timeout /**< */ , short interval /**< */ ,
	ubyte prefer_blanking /**< */ , ubyte allow_exposures /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_set_screen_saver(xcb_connection_t* c /**< */ , short timeout /**< */ , short interval /**< */ ,
	ubyte prefer_blanking /**< */ , ubyte allow_exposures /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_screen_saver_cookie_t xcb_get_screen_saver(xcb_connection_t* c /**< */ );

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
xcb_get_screen_saver_cookie_t xcb_get_screen_saver_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_screen_saver_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_screen_saver_reply_t* xcb_get_screen_saver_reply(xcb_connection_t* c /**< */ ,
	xcb_get_screen_saver_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_change_hosts_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_change_hosts_checked(xcb_connection_t* c /**< */ , ubyte mode /**< */ , ubyte family /**< */ ,
	ushort address_len /**< */ , const ubyte* address /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_change_hosts(xcb_connection_t* c /**< */ , ubyte mode /**< */ , ubyte family /**< */ ,
	ushort address_len /**< */ , const ubyte* address /**< */ );

int xcb_host_sizeof(const void* _buffer /**< */ );

ubyte* xcb_host_address(const xcb_host_t* R /**< */ );

int xcb_host_address_length(const xcb_host_t* R /**< */ );

xcb_generic_iterator_t xcb_host_address_end(const xcb_host_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_host_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_host_t)
 */
void xcb_host_next(xcb_host_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_host_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_host_end(xcb_host_iterator_t i /**< */ );

int xcb_list_hosts_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_list_hosts_cookie_t xcb_list_hosts(xcb_connection_t* c /**< */ );

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
xcb_list_hosts_cookie_t xcb_list_hosts_unchecked(xcb_connection_t* c /**< */ );

int xcb_list_hosts_hosts_length(const xcb_list_hosts_reply_t* R /**< */ );

xcb_host_iterator_t xcb_list_hosts_hosts_iterator(const xcb_list_hosts_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_hosts_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_list_hosts_reply_t* xcb_list_hosts_reply(xcb_connection_t* c /**< */ , xcb_list_hosts_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_set_access_control_checked(xcb_connection_t* c /**< */ , ubyte mode /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_set_access_control(xcb_connection_t* c /**< */ , ubyte mode /**< */ );

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
xcb_void_cookie_t xcb_set_close_down_mode_checked(xcb_connection_t* c /**< */ , ubyte mode /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_set_close_down_mode(xcb_connection_t* c /**< */ , ubyte mode /**< */ );

/**
 * @brief kills a client
 *
 * @param c The connection
 * @param resource Any resource belonging to the client (for example a Window), used to identify
 * the client connection.
 * \n
 * The special value of `XCB_KILL_ALL_TEMPORARY`, the resources of all clients
 * that have terminated in `RetainTemporary` (TODO) are destroyed.
 * @return A cookie
 *
 * Forces a close down of the client that created the specified \a resource.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
xcb_void_cookie_t xcb_kill_client_checked(xcb_connection_t* c /**< */ , uint resource /**< */ );

/**
 * @brief kills a client
 *
 * @param c The connection
 * @param resource Any resource belonging to the client (for example a Window), used to identify
 * the client connection.
 * \n
 * The special value of `XCB_KILL_ALL_TEMPORARY`, the resources of all clients
 * that have terminated in `RetainTemporary` (TODO) are destroyed.
 * @return A cookie
 *
 * Forces a close down of the client that created the specified \a resource.
 *
 */
xcb_void_cookie_t xcb_kill_client(xcb_connection_t* c /**< */ , uint resource /**< */ );

int xcb_rotate_properties_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_rotate_properties_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort atoms_len /**< */ ,
	short delta /**< */ , const xcb_atom_t* atoms /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_rotate_properties(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ushort atoms_len /**< */ ,
	short delta /**< */ , const xcb_atom_t* atoms /**< */ );

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
xcb_void_cookie_t xcb_force_screen_saver_checked(xcb_connection_t* c /**< */ , ubyte mode /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_force_screen_saver(xcb_connection_t* c /**< */ , ubyte mode /**< */ );

int xcb_set_pointer_mapping_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_set_pointer_mapping_cookie_t xcb_set_pointer_mapping(xcb_connection_t* c /**< */ , ubyte map_len /**< */ , const ubyte* map /**< */ );

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
xcb_set_pointer_mapping_cookie_t xcb_set_pointer_mapping_unchecked(xcb_connection_t* c /**< */ , ubyte map_len /**< */ , const ubyte* map /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_set_pointer_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_set_pointer_mapping_reply_t* xcb_set_pointer_mapping_reply(xcb_connection_t* c /**< */ ,
	xcb_set_pointer_mapping_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_get_pointer_mapping_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_pointer_mapping_cookie_t xcb_get_pointer_mapping(xcb_connection_t* c /**< */ );

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
xcb_get_pointer_mapping_cookie_t xcb_get_pointer_mapping_unchecked(xcb_connection_t* c /**< */ );

ubyte* xcb_get_pointer_mapping_map(const xcb_get_pointer_mapping_reply_t* R /**< */ );

int xcb_get_pointer_mapping_map_length(const xcb_get_pointer_mapping_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_get_pointer_mapping_map_end(const xcb_get_pointer_mapping_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_pointer_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_pointer_mapping_reply_t* xcb_get_pointer_mapping_reply(xcb_connection_t* c /**< */ ,
	xcb_get_pointer_mapping_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_set_modifier_mapping_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_set_modifier_mapping_cookie_t xcb_set_modifier_mapping(xcb_connection_t* c /**< */ , ubyte keycodes_per_modifier /**< */ ,
	const xcb_keycode_t* keycodes /**< */ );

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
xcb_set_modifier_mapping_cookie_t xcb_set_modifier_mapping_unchecked(xcb_connection_t* c /**< */ , ubyte keycodes_per_modifier /**< */ ,
	const xcb_keycode_t* keycodes /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_set_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_set_modifier_mapping_reply_t* xcb_set_modifier_mapping_reply(xcb_connection_t* c /**< */ ,
	xcb_set_modifier_mapping_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_get_modifier_mapping_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_get_modifier_mapping_cookie_t xcb_get_modifier_mapping(xcb_connection_t* c /**< */ );

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
xcb_get_modifier_mapping_cookie_t xcb_get_modifier_mapping_unchecked(xcb_connection_t* c /**< */ );

xcb_keycode_t* xcb_get_modifier_mapping_keycodes(const xcb_get_modifier_mapping_reply_t* R /**< */ );

int xcb_get_modifier_mapping_keycodes_length(const xcb_get_modifier_mapping_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_get_modifier_mapping_keycodes_end(const xcb_get_modifier_mapping_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_get_modifier_mapping_reply_t* xcb_get_modifier_mapping_reply(xcb_connection_t* c /**< */ ,
	xcb_get_modifier_mapping_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_no_operation_checked(xcb_connection_t* c /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_no_operation(xcb_connection_t* c /**< */ );

/**
 * @}
 */
