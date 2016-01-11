/*
 * This file generated automatically from xkb.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_xkb_API XCB xkb API
 * @brief xkb XCB Protocol Implementation.
 * @{
 **/

module xcb.xkb;

import xcb.xcb;
import xcb.xproto;

extern (C):

enum int XCB_XKB_MAJOR_VERSION = 1;
enum int XCB_XKB_MINOR_VERSION = 0;

extern (C) __gshared extern xcb_extension_t xcb_xkb_id;

enum xcb_xkb_const_t {
	XCB_XKB_CONST_MAX_LEGAL_KEY_CODE = 255,
	XCB_XKB_CONST_PER_KEY_BIT_ARRAY_SIZE = 32,
	XCB_XKB_CONST_KEY_NAME_LENGTH = 4
}

alias XCB_XKB_CONST_MAX_LEGAL_KEY_CODE = xcb_xkb_const_t.XCB_XKB_CONST_MAX_LEGAL_KEY_CODE;
alias XCB_XKB_CONST_PER_KEY_BIT_ARRAY_SIZE = xcb_xkb_const_t.XCB_XKB_CONST_PER_KEY_BIT_ARRAY_SIZE;
alias XCB_XKB_CONST_KEY_NAME_LENGTH = xcb_xkb_const_t.XCB_XKB_CONST_KEY_NAME_LENGTH;

enum xcb_xkb_event_type_t {
	XCB_XKB_EVENT_TYPE_NEW_KEYBOARD_NOTIFY = 1,
	XCB_XKB_EVENT_TYPE_MAP_NOTIFY = 2,
	XCB_XKB_EVENT_TYPE_STATE_NOTIFY = 4,
	XCB_XKB_EVENT_TYPE_CONTROLS_NOTIFY = 8,
	XCB_XKB_EVENT_TYPE_INDICATOR_STATE_NOTIFY = 16,
	XCB_XKB_EVENT_TYPE_INDICATOR_MAP_NOTIFY = 32,
	XCB_XKB_EVENT_TYPE_NAMES_NOTIFY = 64,
	XCB_XKB_EVENT_TYPE_COMPAT_MAP_NOTIFY = 128,
	XCB_XKB_EVENT_TYPE_BELL_NOTIFY = 256,
	XCB_XKB_EVENT_TYPE_ACTION_MESSAGE = 512,
	XCB_XKB_EVENT_TYPE_ACCESS_X_NOTIFY = 1024,
	XCB_XKB_EVENT_TYPE_EXTENSION_DEVICE_NOTIFY = 2048
}

alias XCB_XKB_EVENT_TYPE_NEW_KEYBOARD_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_NEW_KEYBOARD_NOTIFY;
alias XCB_XKB_EVENT_TYPE_MAP_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_MAP_NOTIFY;
alias XCB_XKB_EVENT_TYPE_STATE_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_STATE_NOTIFY;
alias XCB_XKB_EVENT_TYPE_CONTROLS_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_CONTROLS_NOTIFY;
alias XCB_XKB_EVENT_TYPE_INDICATOR_STATE_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_INDICATOR_STATE_NOTIFY;
alias XCB_XKB_EVENT_TYPE_INDICATOR_MAP_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_INDICATOR_MAP_NOTIFY;
alias XCB_XKB_EVENT_TYPE_NAMES_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_NAMES_NOTIFY;
alias XCB_XKB_EVENT_TYPE_COMPAT_MAP_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_COMPAT_MAP_NOTIFY;
alias XCB_XKB_EVENT_TYPE_BELL_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_BELL_NOTIFY;
alias XCB_XKB_EVENT_TYPE_ACTION_MESSAGE = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_ACTION_MESSAGE;
alias XCB_XKB_EVENT_TYPE_ACCESS_X_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_ACCESS_X_NOTIFY;
alias XCB_XKB_EVENT_TYPE_EXTENSION_DEVICE_NOTIFY = xcb_xkb_event_type_t.XCB_XKB_EVENT_TYPE_EXTENSION_DEVICE_NOTIFY;

enum xcb_xkb_nkn_detail_t {
	XCB_XKB_NKN_DETAIL_KEYCODES = 1,
	XCB_XKB_NKN_DETAIL_GEOMETRY = 2,
	XCB_XKB_NKN_DETAIL_DEVICE_ID = 4
}

alias XCB_XKB_NKN_DETAIL_KEYCODES = xcb_xkb_nkn_detail_t.XCB_XKB_NKN_DETAIL_KEYCODES;
alias XCB_XKB_NKN_DETAIL_GEOMETRY = xcb_xkb_nkn_detail_t.XCB_XKB_NKN_DETAIL_GEOMETRY;
alias XCB_XKB_NKN_DETAIL_DEVICE_ID = xcb_xkb_nkn_detail_t.XCB_XKB_NKN_DETAIL_DEVICE_ID;

enum xcb_xkb_axn_detail_t {
	XCB_XKB_AXN_DETAIL_SK_PRESS = 1,
	XCB_XKB_AXN_DETAIL_SK_ACCEPT = 2,
	XCB_XKB_AXN_DETAIL_SK_REJECT = 4,
	XCB_XKB_AXN_DETAIL_SK_RELEASE = 8,
	XCB_XKB_AXN_DETAIL_BK_ACCEPT = 16,
	XCB_XKB_AXN_DETAIL_BK_REJECT = 32,
	XCB_XKB_AXN_DETAIL_AXK_WARNING = 64
}

alias XCB_XKB_AXN_DETAIL_SK_PRESS = xcb_xkb_axn_detail_t.XCB_XKB_AXN_DETAIL_SK_PRESS;
alias XCB_XKB_AXN_DETAIL_SK_ACCEPT = xcb_xkb_axn_detail_t.XCB_XKB_AXN_DETAIL_SK_ACCEPT;
alias XCB_XKB_AXN_DETAIL_SK_REJECT = xcb_xkb_axn_detail_t.XCB_XKB_AXN_DETAIL_SK_REJECT;
alias XCB_XKB_AXN_DETAIL_SK_RELEASE = xcb_xkb_axn_detail_t.XCB_XKB_AXN_DETAIL_SK_RELEASE;
alias XCB_XKB_AXN_DETAIL_BK_ACCEPT = xcb_xkb_axn_detail_t.XCB_XKB_AXN_DETAIL_BK_ACCEPT;
alias XCB_XKB_AXN_DETAIL_BK_REJECT = xcb_xkb_axn_detail_t.XCB_XKB_AXN_DETAIL_BK_REJECT;
alias XCB_XKB_AXN_DETAIL_AXK_WARNING = xcb_xkb_axn_detail_t.XCB_XKB_AXN_DETAIL_AXK_WARNING;

enum xcb_xkb_map_part_t {
	XCB_XKB_MAP_PART_KEY_TYPES = 1,
	XCB_XKB_MAP_PART_KEY_SYMS = 2,
	XCB_XKB_MAP_PART_MODIFIER_MAP = 4,
	XCB_XKB_MAP_PART_EXPLICIT_COMPONENTS = 8,
	XCB_XKB_MAP_PART_KEY_ACTIONS = 16,
	XCB_XKB_MAP_PART_KEY_BEHAVIORS = 32,
	XCB_XKB_MAP_PART_VIRTUAL_MODS = 64,
	XCB_XKB_MAP_PART_VIRTUAL_MOD_MAP = 128
}

alias XCB_XKB_MAP_PART_KEY_TYPES = xcb_xkb_map_part_t.XCB_XKB_MAP_PART_KEY_TYPES;
alias XCB_XKB_MAP_PART_KEY_SYMS = xcb_xkb_map_part_t.XCB_XKB_MAP_PART_KEY_SYMS;
alias XCB_XKB_MAP_PART_MODIFIER_MAP = xcb_xkb_map_part_t.XCB_XKB_MAP_PART_MODIFIER_MAP;
alias XCB_XKB_MAP_PART_EXPLICIT_COMPONENTS = xcb_xkb_map_part_t.XCB_XKB_MAP_PART_EXPLICIT_COMPONENTS;
alias XCB_XKB_MAP_PART_KEY_ACTIONS = xcb_xkb_map_part_t.XCB_XKB_MAP_PART_KEY_ACTIONS;
alias XCB_XKB_MAP_PART_KEY_BEHAVIORS = xcb_xkb_map_part_t.XCB_XKB_MAP_PART_KEY_BEHAVIORS;
alias XCB_XKB_MAP_PART_VIRTUAL_MODS = xcb_xkb_map_part_t.XCB_XKB_MAP_PART_VIRTUAL_MODS;
alias XCB_XKB_MAP_PART_VIRTUAL_MOD_MAP = xcb_xkb_map_part_t.XCB_XKB_MAP_PART_VIRTUAL_MOD_MAP;

enum xcb_xkb_set_map_flags_t {
	XCB_XKB_SET_MAP_FLAGS_RESIZE_TYPES = 1,
	XCB_XKB_SET_MAP_FLAGS_RECOMPUTE_ACTIONS = 2
}

alias XCB_XKB_SET_MAP_FLAGS_RESIZE_TYPES = xcb_xkb_set_map_flags_t.XCB_XKB_SET_MAP_FLAGS_RESIZE_TYPES;
alias XCB_XKB_SET_MAP_FLAGS_RECOMPUTE_ACTIONS = xcb_xkb_set_map_flags_t.XCB_XKB_SET_MAP_FLAGS_RECOMPUTE_ACTIONS;

enum xcb_xkb_state_part_t {
	XCB_XKB_STATE_PART_MODIFIER_STATE = 1,
	XCB_XKB_STATE_PART_MODIFIER_BASE = 2,
	XCB_XKB_STATE_PART_MODIFIER_LATCH = 4,
	XCB_XKB_STATE_PART_MODIFIER_LOCK = 8,
	XCB_XKB_STATE_PART_GROUP_STATE = 16,
	XCB_XKB_STATE_PART_GROUP_BASE = 32,
	XCB_XKB_STATE_PART_GROUP_LATCH = 64,
	XCB_XKB_STATE_PART_GROUP_LOCK = 128,
	XCB_XKB_STATE_PART_COMPAT_STATE = 256,
	XCB_XKB_STATE_PART_GRAB_MODS = 512,
	XCB_XKB_STATE_PART_COMPAT_GRAB_MODS = 1024,
	XCB_XKB_STATE_PART_LOOKUP_MODS = 2048,
	XCB_XKB_STATE_PART_COMPAT_LOOKUP_MODS = 4096,
	XCB_XKB_STATE_PART_POINTER_BUTTONS = 8192
}

alias XCB_XKB_STATE_PART_MODIFIER_STATE = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_MODIFIER_STATE;
alias XCB_XKB_STATE_PART_MODIFIER_BASE = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_MODIFIER_BASE;
alias XCB_XKB_STATE_PART_MODIFIER_LATCH = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_MODIFIER_LATCH;
alias XCB_XKB_STATE_PART_MODIFIER_LOCK = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_MODIFIER_LOCK;
alias XCB_XKB_STATE_PART_GROUP_STATE = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_GROUP_STATE;
alias XCB_XKB_STATE_PART_GROUP_BASE = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_GROUP_BASE;
alias XCB_XKB_STATE_PART_GROUP_LATCH = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_GROUP_LATCH;
alias XCB_XKB_STATE_PART_GROUP_LOCK = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_GROUP_LOCK;
alias XCB_XKB_STATE_PART_COMPAT_STATE = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_COMPAT_STATE;
alias XCB_XKB_STATE_PART_GRAB_MODS = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_GRAB_MODS;
alias XCB_XKB_STATE_PART_COMPAT_GRAB_MODS = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_COMPAT_GRAB_MODS;
alias XCB_XKB_STATE_PART_LOOKUP_MODS = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_LOOKUP_MODS;
alias XCB_XKB_STATE_PART_COMPAT_LOOKUP_MODS = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_COMPAT_LOOKUP_MODS;
alias XCB_XKB_STATE_PART_POINTER_BUTTONS = xcb_xkb_state_part_t.XCB_XKB_STATE_PART_POINTER_BUTTONS;

enum xcb_xkb_bool_ctrl_t {
	XCB_XKB_BOOL_CTRL_REPEAT_KEYS = 1,
	XCB_XKB_BOOL_CTRL_SLOW_KEYS = 2,
	XCB_XKB_BOOL_CTRL_BOUNCE_KEYS = 4,
	XCB_XKB_BOOL_CTRL_STICKY_KEYS = 8,
	XCB_XKB_BOOL_CTRL_MOUSE_KEYS = 16,
	XCB_XKB_BOOL_CTRL_MOUSE_KEYS_ACCEL = 32,
	XCB_XKB_BOOL_CTRL_ACCESS_X_KEYS = 64,
	XCB_XKB_BOOL_CTRL_ACCESS_X_TIMEOUT_MASK = 128,
	XCB_XKB_BOOL_CTRL_ACCESS_X_FEEDBACK_MASK = 256,
	XCB_XKB_BOOL_CTRL_AUDIBLE_BELL_MASK = 512,
	XCB_XKB_BOOL_CTRL_OVERLAY_1_MASK = 1024,
	XCB_XKB_BOOL_CTRL_OVERLAY_2_MASK = 2048,
	XCB_XKB_BOOL_CTRL_IGNORE_GROUP_LOCK_MASK = 4096
}

alias XCB_XKB_BOOL_CTRL_REPEAT_KEYS = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_REPEAT_KEYS;
alias XCB_XKB_BOOL_CTRL_SLOW_KEYS = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_SLOW_KEYS;
alias XCB_XKB_BOOL_CTRL_BOUNCE_KEYS = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_BOUNCE_KEYS;
alias XCB_XKB_BOOL_CTRL_STICKY_KEYS = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_STICKY_KEYS;
alias XCB_XKB_BOOL_CTRL_MOUSE_KEYS = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_MOUSE_KEYS;
alias XCB_XKB_BOOL_CTRL_MOUSE_KEYS_ACCEL = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_MOUSE_KEYS_ACCEL;
alias XCB_XKB_BOOL_CTRL_ACCESS_X_KEYS = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_ACCESS_X_KEYS;
alias XCB_XKB_BOOL_CTRL_ACCESS_X_TIMEOUT_MASK = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_ACCESS_X_TIMEOUT_MASK;
alias XCB_XKB_BOOL_CTRL_ACCESS_X_FEEDBACK_MASK = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_ACCESS_X_FEEDBACK_MASK;
alias XCB_XKB_BOOL_CTRL_AUDIBLE_BELL_MASK = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_AUDIBLE_BELL_MASK;
alias XCB_XKB_BOOL_CTRL_OVERLAY_1_MASK = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_OVERLAY_1_MASK;
alias XCB_XKB_BOOL_CTRL_OVERLAY_2_MASK = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_OVERLAY_2_MASK;
alias XCB_XKB_BOOL_CTRL_IGNORE_GROUP_LOCK_MASK = xcb_xkb_bool_ctrl_t.XCB_XKB_BOOL_CTRL_IGNORE_GROUP_LOCK_MASK;

enum xcb_xkb_control_t : uint {
	XCB_XKB_CONTROL_GROUPS_WRAP = 134217728,
	XCB_XKB_CONTROL_INTERNAL_MODS = 268435456,
	XCB_XKB_CONTROL_IGNORE_LOCK_MODS = 536870912,
	XCB_XKB_CONTROL_PER_KEY_REPEAT = 1073741824,
	XCB_XKB_CONTROL_CONTROLS_ENABLED = 2147483648
}

alias XCB_XKB_CONTROL_GROUPS_WRAP = xcb_xkb_control_t.XCB_XKB_CONTROL_GROUPS_WRAP;
alias XCB_XKB_CONTROL_INTERNAL_MODS = xcb_xkb_control_t.XCB_XKB_CONTROL_INTERNAL_MODS;
alias XCB_XKB_CONTROL_IGNORE_LOCK_MODS = xcb_xkb_control_t.XCB_XKB_CONTROL_IGNORE_LOCK_MODS;
alias XCB_XKB_CONTROL_PER_KEY_REPEAT = xcb_xkb_control_t.XCB_XKB_CONTROL_PER_KEY_REPEAT;
alias XCB_XKB_CONTROL_CONTROLS_ENABLED = xcb_xkb_control_t.XCB_XKB_CONTROL_CONTROLS_ENABLED;

enum xcb_xkb_ax_option_t {
	XCB_XKB_AX_OPTION_SK_PRESS_FB = 1,
	XCB_XKB_AX_OPTION_SK_ACCEPT_FB = 2,
	XCB_XKB_AX_OPTION_FEATURE_FB = 4,
	XCB_XKB_AX_OPTION_SLOW_WARN_FB = 8,
	XCB_XKB_AX_OPTION_INDICATOR_FB = 16,
	XCB_XKB_AX_OPTION_STICKY_KEYS_FB = 32,
	XCB_XKB_AX_OPTION_TWO_KEYS = 64,
	XCB_XKB_AX_OPTION_LATCH_TO_LOCK = 128,
	XCB_XKB_AX_OPTION_SK_RELEASE_FB = 256,
	XCB_XKB_AX_OPTION_SK_REJECT_FB = 512,
	XCB_XKB_AX_OPTION_BK_REJECT_FB = 1024,
	XCB_XKB_AX_OPTION_DUMB_BELL = 2048
}

alias XCB_XKB_AX_OPTION_SK_PRESS_FB = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_SK_PRESS_FB;
alias XCB_XKB_AX_OPTION_SK_ACCEPT_FB = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_SK_ACCEPT_FB;
alias XCB_XKB_AX_OPTION_FEATURE_FB = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_FEATURE_FB;
alias XCB_XKB_AX_OPTION_SLOW_WARN_FB = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_SLOW_WARN_FB;
alias XCB_XKB_AX_OPTION_INDICATOR_FB = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_INDICATOR_FB;
alias XCB_XKB_AX_OPTION_STICKY_KEYS_FB = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_STICKY_KEYS_FB;
alias XCB_XKB_AX_OPTION_TWO_KEYS = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_TWO_KEYS;
alias XCB_XKB_AX_OPTION_LATCH_TO_LOCK = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_LATCH_TO_LOCK;
alias XCB_XKB_AX_OPTION_SK_RELEASE_FB = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_SK_RELEASE_FB;
alias XCB_XKB_AX_OPTION_SK_REJECT_FB = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_SK_REJECT_FB;
alias XCB_XKB_AX_OPTION_BK_REJECT_FB = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_BK_REJECT_FB;
alias XCB_XKB_AX_OPTION_DUMB_BELL = xcb_xkb_ax_option_t.XCB_XKB_AX_OPTION_DUMB_BELL;

alias xcb_xkb_device_spec_t = ushort;

/**
 * @brief xcb_xkb_device_spec_iterator_t
 **/
struct xcb_xkb_device_spec_iterator_t {
	xcb_xkb_device_spec_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_led_class_result_t {
	XCB_XKB_LED_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0,
	XCB_XKB_LED_CLASS_RESULT_LED_FEEDBACK_CLASS = 4
}

alias XCB_XKB_LED_CLASS_RESULT_KBD_FEEDBACK_CLASS = xcb_xkb_led_class_result_t.XCB_XKB_LED_CLASS_RESULT_KBD_FEEDBACK_CLASS;
alias XCB_XKB_LED_CLASS_RESULT_LED_FEEDBACK_CLASS = xcb_xkb_led_class_result_t.XCB_XKB_LED_CLASS_RESULT_LED_FEEDBACK_CLASS;

enum xcb_xkb_led_class_t {
	XCB_XKB_LED_CLASS_KBD_FEEDBACK_CLASS = 0,
	XCB_XKB_LED_CLASS_LED_FEEDBACK_CLASS = 4,
	XCB_XKB_LED_CLASS_DFLT_XI_CLASS = 768,
	XCB_XKB_LED_CLASS_ALL_XI_CLASSES = 1280
}

alias XCB_XKB_LED_CLASS_KBD_FEEDBACK_CLASS = xcb_xkb_led_class_t.XCB_XKB_LED_CLASS_KBD_FEEDBACK_CLASS;
alias XCB_XKB_LED_CLASS_LED_FEEDBACK_CLASS = xcb_xkb_led_class_t.XCB_XKB_LED_CLASS_LED_FEEDBACK_CLASS;
alias XCB_XKB_LED_CLASS_DFLT_XI_CLASS = xcb_xkb_led_class_t.XCB_XKB_LED_CLASS_DFLT_XI_CLASS;
alias XCB_XKB_LED_CLASS_ALL_XI_CLASSES = xcb_xkb_led_class_t.XCB_XKB_LED_CLASS_ALL_XI_CLASSES;

alias xcb_xkb_led_class_spec_t = ushort;

/**
 * @brief xcb_xkb_led_class_spec_iterator_t
 **/
struct xcb_xkb_led_class_spec_iterator_t {
	xcb_xkb_led_class_spec_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_bell_class_result_t {
	XCB_XKB_BELL_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0,
	XCB_XKB_BELL_CLASS_RESULT_BELL_FEEDBACK_CLASS = 5
}

alias XCB_XKB_BELL_CLASS_RESULT_KBD_FEEDBACK_CLASS = xcb_xkb_bell_class_result_t.XCB_XKB_BELL_CLASS_RESULT_KBD_FEEDBACK_CLASS;
alias XCB_XKB_BELL_CLASS_RESULT_BELL_FEEDBACK_CLASS = xcb_xkb_bell_class_result_t.XCB_XKB_BELL_CLASS_RESULT_BELL_FEEDBACK_CLASS;

enum xcb_xkb_bell_class_t {
	XCB_XKB_BELL_CLASS_KBD_FEEDBACK_CLASS = 0,
	XCB_XKB_BELL_CLASS_BELL_FEEDBACK_CLASS = 5,
	XCB_XKB_BELL_CLASS_DFLT_XI_CLASS = 768
}

alias XCB_XKB_BELL_CLASS_KBD_FEEDBACK_CLASS = xcb_xkb_bell_class_t.XCB_XKB_BELL_CLASS_KBD_FEEDBACK_CLASS;
alias XCB_XKB_BELL_CLASS_BELL_FEEDBACK_CLASS = xcb_xkb_bell_class_t.XCB_XKB_BELL_CLASS_BELL_FEEDBACK_CLASS;
alias XCB_XKB_BELL_CLASS_DFLT_XI_CLASS = xcb_xkb_bell_class_t.XCB_XKB_BELL_CLASS_DFLT_XI_CLASS;

alias xcb_xkb_bell_class_spec_t = ushort;

/**
 * @brief xcb_xkb_bell_class_spec_iterator_t
 **/
struct xcb_xkb_bell_class_spec_iterator_t {
	xcb_xkb_bell_class_spec_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_id_t {
	XCB_XKB_ID_USE_CORE_KBD = 256,
	XCB_XKB_ID_USE_CORE_PTR = 512,
	XCB_XKB_ID_DFLT_XI_CLASS = 768,
	XCB_XKB_ID_DFLT_XI_ID = 1024,
	XCB_XKB_ID_ALL_XI_CLASS = 1280,
	XCB_XKB_ID_ALL_XI_ID = 1536,
	XCB_XKB_ID_XI_NONE = 65280
}

alias XCB_XKB_ID_USE_CORE_KBD = xcb_xkb_id_t.XCB_XKB_ID_USE_CORE_KBD;
alias XCB_XKB_ID_USE_CORE_PTR = xcb_xkb_id_t.XCB_XKB_ID_USE_CORE_PTR;
alias XCB_XKB_ID_DFLT_XI_CLASS = xcb_xkb_id_t.XCB_XKB_ID_DFLT_XI_CLASS;
alias XCB_XKB_ID_DFLT_XI_ID = xcb_xkb_id_t.XCB_XKB_ID_DFLT_XI_ID;
alias XCB_XKB_ID_ALL_XI_CLASS = xcb_xkb_id_t.XCB_XKB_ID_ALL_XI_CLASS;
alias XCB_XKB_ID_ALL_XI_ID = xcb_xkb_id_t.XCB_XKB_ID_ALL_XI_ID;
alias XCB_XKB_ID_XI_NONE = xcb_xkb_id_t.XCB_XKB_ID_XI_NONE;

alias xcb_xkb_id_spec_t = ushort;

/**
 * @brief xcb_xkb_id_spec_iterator_t
 **/
struct xcb_xkb_id_spec_iterator_t {
	xcb_xkb_id_spec_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_group_t {
	XCB_XKB_GROUP_1 = 0,
	XCB_XKB_GROUP_2 = 1,
	XCB_XKB_GROUP_3 = 2,
	XCB_XKB_GROUP_4 = 3
}

alias XCB_XKB_GROUP_1 = xcb_xkb_group_t.XCB_XKB_GROUP_1;
alias XCB_XKB_GROUP_2 = xcb_xkb_group_t.XCB_XKB_GROUP_2;
alias XCB_XKB_GROUP_3 = xcb_xkb_group_t.XCB_XKB_GROUP_3;
alias XCB_XKB_GROUP_4 = xcb_xkb_group_t.XCB_XKB_GROUP_4;

enum xcb_xkb_groups_t {
	XCB_XKB_GROUPS_ANY = 254,
	XCB_XKB_GROUPS_ALL = 255
}

alias XCB_XKB_GROUPS_ANY = xcb_xkb_groups_t.XCB_XKB_GROUPS_ANY;
alias XCB_XKB_GROUPS_ALL = xcb_xkb_groups_t.XCB_XKB_GROUPS_ALL;

enum xcb_xkb_set_of_group_t {
	XCB_XKB_SET_OF_GROUP_GROUP_1 = 1,
	XCB_XKB_SET_OF_GROUP_GROUP_2 = 2,
	XCB_XKB_SET_OF_GROUP_GROUP_3 = 4,
	XCB_XKB_SET_OF_GROUP_GROUP_4 = 8
}

alias XCB_XKB_SET_OF_GROUP_GROUP_1 = xcb_xkb_set_of_group_t.XCB_XKB_SET_OF_GROUP_GROUP_1;
alias XCB_XKB_SET_OF_GROUP_GROUP_2 = xcb_xkb_set_of_group_t.XCB_XKB_SET_OF_GROUP_GROUP_2;
alias XCB_XKB_SET_OF_GROUP_GROUP_3 = xcb_xkb_set_of_group_t.XCB_XKB_SET_OF_GROUP_GROUP_3;
alias XCB_XKB_SET_OF_GROUP_GROUP_4 = xcb_xkb_set_of_group_t.XCB_XKB_SET_OF_GROUP_GROUP_4;

enum xcb_xkb_set_of_groups_t {
	XCB_XKB_SET_OF_GROUPS_ANY = 128
}

alias XCB_XKB_SET_OF_GROUPS_ANY = xcb_xkb_set_of_groups_t.XCB_XKB_SET_OF_GROUPS_ANY;

enum xcb_xkb_groups_wrap_t {
	XCB_XKB_GROUPS_WRAP_WRAP_INTO_RANGE = 0,
	XCB_XKB_GROUPS_WRAP_CLAMP_INTO_RANGE = 64,
	XCB_XKB_GROUPS_WRAP_REDIRECT_INTO_RANGE = 128
}

alias XCB_XKB_GROUPS_WRAP_WRAP_INTO_RANGE = xcb_xkb_groups_wrap_t.XCB_XKB_GROUPS_WRAP_WRAP_INTO_RANGE;
alias XCB_XKB_GROUPS_WRAP_CLAMP_INTO_RANGE = xcb_xkb_groups_wrap_t.XCB_XKB_GROUPS_WRAP_CLAMP_INTO_RANGE;
alias XCB_XKB_GROUPS_WRAP_REDIRECT_INTO_RANGE = xcb_xkb_groups_wrap_t.XCB_XKB_GROUPS_WRAP_REDIRECT_INTO_RANGE;

enum xcb_xkb_v_mods_high_t {
	XCB_XKB_V_MODS_HIGH_15 = 128,
	XCB_XKB_V_MODS_HIGH_14 = 64,
	XCB_XKB_V_MODS_HIGH_13 = 32,
	XCB_XKB_V_MODS_HIGH_12 = 16,
	XCB_XKB_V_MODS_HIGH_11 = 8,
	XCB_XKB_V_MODS_HIGH_10 = 4,
	XCB_XKB_V_MODS_HIGH_9 = 2,
	XCB_XKB_V_MODS_HIGH_8 = 1
}

alias XCB_XKB_V_MODS_HIGH_15 = xcb_xkb_v_mods_high_t.XCB_XKB_V_MODS_HIGH_15;
alias XCB_XKB_V_MODS_HIGH_14 = xcb_xkb_v_mods_high_t.XCB_XKB_V_MODS_HIGH_14;
alias XCB_XKB_V_MODS_HIGH_13 = xcb_xkb_v_mods_high_t.XCB_XKB_V_MODS_HIGH_13;
alias XCB_XKB_V_MODS_HIGH_12 = xcb_xkb_v_mods_high_t.XCB_XKB_V_MODS_HIGH_12;
alias XCB_XKB_V_MODS_HIGH_11 = xcb_xkb_v_mods_high_t.XCB_XKB_V_MODS_HIGH_11;
alias XCB_XKB_V_MODS_HIGH_10 = xcb_xkb_v_mods_high_t.XCB_XKB_V_MODS_HIGH_10;
alias XCB_XKB_V_MODS_HIGH_9 = xcb_xkb_v_mods_high_t.XCB_XKB_V_MODS_HIGH_9;
alias XCB_XKB_V_MODS_HIGH_8 = xcb_xkb_v_mods_high_t.XCB_XKB_V_MODS_HIGH_8;

enum xcb_xkb_v_mods_low_t {
	XCB_XKB_V_MODS_LOW_7 = 128,
	XCB_XKB_V_MODS_LOW_6 = 64,
	XCB_XKB_V_MODS_LOW_5 = 32,
	XCB_XKB_V_MODS_LOW_4 = 16,
	XCB_XKB_V_MODS_LOW_3 = 8,
	XCB_XKB_V_MODS_LOW_2 = 4,
	XCB_XKB_V_MODS_LOW_1 = 2,
	XCB_XKB_V_MODS_LOW_0 = 1
}

alias XCB_XKB_V_MODS_LOW_7 = xcb_xkb_v_mods_low_t.XCB_XKB_V_MODS_LOW_7;
alias XCB_XKB_V_MODS_LOW_6 = xcb_xkb_v_mods_low_t.XCB_XKB_V_MODS_LOW_6;
alias XCB_XKB_V_MODS_LOW_5 = xcb_xkb_v_mods_low_t.XCB_XKB_V_MODS_LOW_5;
alias XCB_XKB_V_MODS_LOW_4 = xcb_xkb_v_mods_low_t.XCB_XKB_V_MODS_LOW_4;
alias XCB_XKB_V_MODS_LOW_3 = xcb_xkb_v_mods_low_t.XCB_XKB_V_MODS_LOW_3;
alias XCB_XKB_V_MODS_LOW_2 = xcb_xkb_v_mods_low_t.XCB_XKB_V_MODS_LOW_2;
alias XCB_XKB_V_MODS_LOW_1 = xcb_xkb_v_mods_low_t.XCB_XKB_V_MODS_LOW_1;
alias XCB_XKB_V_MODS_LOW_0 = xcb_xkb_v_mods_low_t.XCB_XKB_V_MODS_LOW_0;

enum xcb_xkb_v_mod_t {
	XCB_XKB_V_MOD_15 = 32768,
	XCB_XKB_V_MOD_14 = 16384,
	XCB_XKB_V_MOD_13 = 8192,
	XCB_XKB_V_MOD_12 = 4096,
	XCB_XKB_V_MOD_11 = 2048,
	XCB_XKB_V_MOD_10 = 1024,
	XCB_XKB_V_MOD_9 = 512,
	XCB_XKB_V_MOD_8 = 256,
	XCB_XKB_V_MOD_7 = 128,
	XCB_XKB_V_MOD_6 = 64,
	XCB_XKB_V_MOD_5 = 32,
	XCB_XKB_V_MOD_4 = 16,
	XCB_XKB_V_MOD_3 = 8,
	XCB_XKB_V_MOD_2 = 4,
	XCB_XKB_V_MOD_1 = 2,
	XCB_XKB_V_MOD_0 = 1
}

alias XCB_XKB_V_MOD_15 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_15;
alias XCB_XKB_V_MOD_14 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_14;
alias XCB_XKB_V_MOD_13 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_13;
alias XCB_XKB_V_MOD_12 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_12;
alias XCB_XKB_V_MOD_11 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_11;
alias XCB_XKB_V_MOD_10 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_10;
alias XCB_XKB_V_MOD_9 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_9;
alias XCB_XKB_V_MOD_8 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_8;
alias XCB_XKB_V_MOD_7 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_7;
alias XCB_XKB_V_MOD_6 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_6;
alias XCB_XKB_V_MOD_5 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_5;
alias XCB_XKB_V_MOD_4 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_4;
alias XCB_XKB_V_MOD_3 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_3;
alias XCB_XKB_V_MOD_2 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_2;
alias XCB_XKB_V_MOD_1 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_1;
alias XCB_XKB_V_MOD_0 = xcb_xkb_v_mod_t.XCB_XKB_V_MOD_0;

enum xcb_xkb_explicit_t {
	XCB_XKB_EXPLICIT_V_MOD_MAP = 128,
	XCB_XKB_EXPLICIT_BEHAVIOR = 64,
	XCB_XKB_EXPLICIT_AUTO_REPEAT = 32,
	XCB_XKB_EXPLICIT_INTERPRET = 16,
	XCB_XKB_EXPLICIT_KEY_TYPE_4 = 8,
	XCB_XKB_EXPLICIT_KEY_TYPE_3 = 4,
	XCB_XKB_EXPLICIT_KEY_TYPE_2 = 2,
	XCB_XKB_EXPLICIT_KEY_TYPE_1 = 1
}

alias XCB_XKB_EXPLICIT_V_MOD_MAP = xcb_xkb_explicit_t.XCB_XKB_EXPLICIT_V_MOD_MAP;
alias XCB_XKB_EXPLICIT_BEHAVIOR = xcb_xkb_explicit_t.XCB_XKB_EXPLICIT_BEHAVIOR;
alias XCB_XKB_EXPLICIT_AUTO_REPEAT = xcb_xkb_explicit_t.XCB_XKB_EXPLICIT_AUTO_REPEAT;
alias XCB_XKB_EXPLICIT_INTERPRET = xcb_xkb_explicit_t.XCB_XKB_EXPLICIT_INTERPRET;
alias XCB_XKB_EXPLICIT_KEY_TYPE_4 = xcb_xkb_explicit_t.XCB_XKB_EXPLICIT_KEY_TYPE_4;
alias XCB_XKB_EXPLICIT_KEY_TYPE_3 = xcb_xkb_explicit_t.XCB_XKB_EXPLICIT_KEY_TYPE_3;
alias XCB_XKB_EXPLICIT_KEY_TYPE_2 = xcb_xkb_explicit_t.XCB_XKB_EXPLICIT_KEY_TYPE_2;
alias XCB_XKB_EXPLICIT_KEY_TYPE_1 = xcb_xkb_explicit_t.XCB_XKB_EXPLICIT_KEY_TYPE_1;

enum xcb_xkb_sym_interpret_match_t {
	XCB_XKB_SYM_INTERPRET_MATCH_NONE_OF = 0,
	XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF_OR_NONE = 1,
	XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF = 2,
	XCB_XKB_SYM_INTERPRET_MATCH_ALL_OF = 3,
	XCB_XKB_SYM_INTERPRET_MATCH_EXACTLY = 4
}

alias XCB_XKB_SYM_INTERPRET_MATCH_NONE_OF = xcb_xkb_sym_interpret_match_t.XCB_XKB_SYM_INTERPRET_MATCH_NONE_OF;
alias XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF_OR_NONE = xcb_xkb_sym_interpret_match_t.XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF_OR_NONE;
alias XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF = xcb_xkb_sym_interpret_match_t.XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF;
alias XCB_XKB_SYM_INTERPRET_MATCH_ALL_OF = xcb_xkb_sym_interpret_match_t.XCB_XKB_SYM_INTERPRET_MATCH_ALL_OF;
alias XCB_XKB_SYM_INTERPRET_MATCH_EXACTLY = xcb_xkb_sym_interpret_match_t.XCB_XKB_SYM_INTERPRET_MATCH_EXACTLY;

enum xcb_xkb_sym_interp_match_t {
	XCB_XKB_SYM_INTERP_MATCH_LEVEL_ONE_ONLY = 128,
	XCB_XKB_SYM_INTERP_MATCH_OP_MASK = 127
}

alias XCB_XKB_SYM_INTERP_MATCH_LEVEL_ONE_ONLY = xcb_xkb_sym_interp_match_t.XCB_XKB_SYM_INTERP_MATCH_LEVEL_ONE_ONLY;
alias XCB_XKB_SYM_INTERP_MATCH_OP_MASK = xcb_xkb_sym_interp_match_t.XCB_XKB_SYM_INTERP_MATCH_OP_MASK;

enum xcb_xkb_im_flag_t {
	XCB_XKB_IM_FLAG_NO_EXPLICIT = 128,
	XCB_XKB_IM_FLAG_NO_AUTOMATIC = 64,
	XCB_XKB_IM_FLAG_LED_DRIVES_KB = 32
}

alias XCB_XKB_IM_FLAG_NO_EXPLICIT = xcb_xkb_im_flag_t.XCB_XKB_IM_FLAG_NO_EXPLICIT;
alias XCB_XKB_IM_FLAG_NO_AUTOMATIC = xcb_xkb_im_flag_t.XCB_XKB_IM_FLAG_NO_AUTOMATIC;
alias XCB_XKB_IM_FLAG_LED_DRIVES_KB = xcb_xkb_im_flag_t.XCB_XKB_IM_FLAG_LED_DRIVES_KB;

enum xcb_xkb_im_mods_which_t {
	XCB_XKB_IM_MODS_WHICH_USE_COMPAT = 16,
	XCB_XKB_IM_MODS_WHICH_USE_EFFECTIVE = 8,
	XCB_XKB_IM_MODS_WHICH_USE_LOCKED = 4,
	XCB_XKB_IM_MODS_WHICH_USE_LATCHED = 2,
	XCB_XKB_IM_MODS_WHICH_USE_BASE = 1
}

alias XCB_XKB_IM_MODS_WHICH_USE_COMPAT = xcb_xkb_im_mods_which_t.XCB_XKB_IM_MODS_WHICH_USE_COMPAT;
alias XCB_XKB_IM_MODS_WHICH_USE_EFFECTIVE = xcb_xkb_im_mods_which_t.XCB_XKB_IM_MODS_WHICH_USE_EFFECTIVE;
alias XCB_XKB_IM_MODS_WHICH_USE_LOCKED = xcb_xkb_im_mods_which_t.XCB_XKB_IM_MODS_WHICH_USE_LOCKED;
alias XCB_XKB_IM_MODS_WHICH_USE_LATCHED = xcb_xkb_im_mods_which_t.XCB_XKB_IM_MODS_WHICH_USE_LATCHED;
alias XCB_XKB_IM_MODS_WHICH_USE_BASE = xcb_xkb_im_mods_which_t.XCB_XKB_IM_MODS_WHICH_USE_BASE;

enum xcb_xkb_im_groups_which_t {
	XCB_XKB_IM_GROUPS_WHICH_USE_COMPAT = 16,
	XCB_XKB_IM_GROUPS_WHICH_USE_EFFECTIVE = 8,
	XCB_XKB_IM_GROUPS_WHICH_USE_LOCKED = 4,
	XCB_XKB_IM_GROUPS_WHICH_USE_LATCHED = 2,
	XCB_XKB_IM_GROUPS_WHICH_USE_BASE = 1
}

alias XCB_XKB_IM_GROUPS_WHICH_USE_COMPAT = xcb_xkb_im_groups_which_t.XCB_XKB_IM_GROUPS_WHICH_USE_COMPAT;
alias XCB_XKB_IM_GROUPS_WHICH_USE_EFFECTIVE = xcb_xkb_im_groups_which_t.XCB_XKB_IM_GROUPS_WHICH_USE_EFFECTIVE;
alias XCB_XKB_IM_GROUPS_WHICH_USE_LOCKED = xcb_xkb_im_groups_which_t.XCB_XKB_IM_GROUPS_WHICH_USE_LOCKED;
alias XCB_XKB_IM_GROUPS_WHICH_USE_LATCHED = xcb_xkb_im_groups_which_t.XCB_XKB_IM_GROUPS_WHICH_USE_LATCHED;
alias XCB_XKB_IM_GROUPS_WHICH_USE_BASE = xcb_xkb_im_groups_which_t.XCB_XKB_IM_GROUPS_WHICH_USE_BASE;

/**
 * @brief xcb_xkb_indicator_map_t
 **/
struct xcb_xkb_indicator_map_t {
	ubyte flags; /**<  */
	ubyte whichGroups; /**<  */
	ubyte groups; /**<  */
	ubyte whichMods; /**<  */
	ubyte mods; /**<  */
	ubyte realMods; /**<  */
	ushort vmods; /**<  */
	uint ctrls; /**<  */
}

/**
 * @brief xcb_xkb_indicator_map_iterator_t
 **/
struct xcb_xkb_indicator_map_iterator_t {
	xcb_xkb_indicator_map_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_cm_detail_t {
	XCB_XKB_CM_DETAIL_SYM_INTERP = 1,
	XCB_XKB_CM_DETAIL_GROUP_COMPAT = 2
}

alias XCB_XKB_CM_DETAIL_SYM_INTERP = xcb_xkb_cm_detail_t.XCB_XKB_CM_DETAIL_SYM_INTERP;
alias XCB_XKB_CM_DETAIL_GROUP_COMPAT = xcb_xkb_cm_detail_t.XCB_XKB_CM_DETAIL_GROUP_COMPAT;

enum xcb_xkb_name_detail_t {
	XCB_XKB_NAME_DETAIL_KEYCODES = 1,
	XCB_XKB_NAME_DETAIL_GEOMETRY = 2,
	XCB_XKB_NAME_DETAIL_SYMBOLS = 4,
	XCB_XKB_NAME_DETAIL_PHYS_SYMBOLS = 8,
	XCB_XKB_NAME_DETAIL_TYPES = 16,
	XCB_XKB_NAME_DETAIL_COMPAT = 32,
	XCB_XKB_NAME_DETAIL_KEY_TYPE_NAMES = 64,
	XCB_XKB_NAME_DETAIL_KT_LEVEL_NAMES = 128,
	XCB_XKB_NAME_DETAIL_INDICATOR_NAMES = 256,
	XCB_XKB_NAME_DETAIL_KEY_NAMES = 512,
	XCB_XKB_NAME_DETAIL_KEY_ALIASES = 1024,
	XCB_XKB_NAME_DETAIL_VIRTUAL_MOD_NAMES = 2048,
	XCB_XKB_NAME_DETAIL_GROUP_NAMES = 4096,
	XCB_XKB_NAME_DETAIL_RG_NAMES = 8192
}

alias XCB_XKB_NAME_DETAIL_KEYCODES = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_KEYCODES;
alias XCB_XKB_NAME_DETAIL_GEOMETRY = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_GEOMETRY;
alias XCB_XKB_NAME_DETAIL_SYMBOLS = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_SYMBOLS;
alias XCB_XKB_NAME_DETAIL_PHYS_SYMBOLS = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_PHYS_SYMBOLS;
alias XCB_XKB_NAME_DETAIL_TYPES = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_TYPES;
alias XCB_XKB_NAME_DETAIL_COMPAT = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_COMPAT;
alias XCB_XKB_NAME_DETAIL_KEY_TYPE_NAMES = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_KEY_TYPE_NAMES;
alias XCB_XKB_NAME_DETAIL_KT_LEVEL_NAMES = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_KT_LEVEL_NAMES;
alias XCB_XKB_NAME_DETAIL_INDICATOR_NAMES = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_INDICATOR_NAMES;
alias XCB_XKB_NAME_DETAIL_KEY_NAMES = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_KEY_NAMES;
alias XCB_XKB_NAME_DETAIL_KEY_ALIASES = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_KEY_ALIASES;
alias XCB_XKB_NAME_DETAIL_VIRTUAL_MOD_NAMES = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_VIRTUAL_MOD_NAMES;
alias XCB_XKB_NAME_DETAIL_GROUP_NAMES = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_GROUP_NAMES;
alias XCB_XKB_NAME_DETAIL_RG_NAMES = xcb_xkb_name_detail_t.XCB_XKB_NAME_DETAIL_RG_NAMES;

enum xcb_xkb_gbn_detail_t {
	XCB_XKB_GBN_DETAIL_TYPES = 1,
	XCB_XKB_GBN_DETAIL_COMPAT_MAP = 2,
	XCB_XKB_GBN_DETAIL_CLIENT_SYMBOLS = 4,
	XCB_XKB_GBN_DETAIL_SERVER_SYMBOLS = 8,
	XCB_XKB_GBN_DETAIL_INDICATOR_MAPS = 16,
	XCB_XKB_GBN_DETAIL_KEY_NAMES = 32,
	XCB_XKB_GBN_DETAIL_GEOMETRY = 64,
	XCB_XKB_GBN_DETAIL_OTHER_NAMES = 128
}

alias XCB_XKB_GBN_DETAIL_TYPES = xcb_xkb_gbn_detail_t.XCB_XKB_GBN_DETAIL_TYPES;
alias XCB_XKB_GBN_DETAIL_COMPAT_MAP = xcb_xkb_gbn_detail_t.XCB_XKB_GBN_DETAIL_COMPAT_MAP;
alias XCB_XKB_GBN_DETAIL_CLIENT_SYMBOLS = xcb_xkb_gbn_detail_t.XCB_XKB_GBN_DETAIL_CLIENT_SYMBOLS;
alias XCB_XKB_GBN_DETAIL_SERVER_SYMBOLS = xcb_xkb_gbn_detail_t.XCB_XKB_GBN_DETAIL_SERVER_SYMBOLS;
alias XCB_XKB_GBN_DETAIL_INDICATOR_MAPS = xcb_xkb_gbn_detail_t.XCB_XKB_GBN_DETAIL_INDICATOR_MAPS;
alias XCB_XKB_GBN_DETAIL_KEY_NAMES = xcb_xkb_gbn_detail_t.XCB_XKB_GBN_DETAIL_KEY_NAMES;
alias XCB_XKB_GBN_DETAIL_GEOMETRY = xcb_xkb_gbn_detail_t.XCB_XKB_GBN_DETAIL_GEOMETRY;
alias XCB_XKB_GBN_DETAIL_OTHER_NAMES = xcb_xkb_gbn_detail_t.XCB_XKB_GBN_DETAIL_OTHER_NAMES;

enum xcb_xkb_xi_feature_t {
	XCB_XKB_XI_FEATURE_KEYBOARDS = 1,
	XCB_XKB_XI_FEATURE_BUTTON_ACTIONS = 2,
	XCB_XKB_XI_FEATURE_INDICATOR_NAMES = 4,
	XCB_XKB_XI_FEATURE_INDICATOR_MAPS = 8,
	XCB_XKB_XI_FEATURE_INDICATOR_STATE = 16
}

alias XCB_XKB_XI_FEATURE_KEYBOARDS = xcb_xkb_xi_feature_t.XCB_XKB_XI_FEATURE_KEYBOARDS;
alias XCB_XKB_XI_FEATURE_BUTTON_ACTIONS = xcb_xkb_xi_feature_t.XCB_XKB_XI_FEATURE_BUTTON_ACTIONS;
alias XCB_XKB_XI_FEATURE_INDICATOR_NAMES = xcb_xkb_xi_feature_t.XCB_XKB_XI_FEATURE_INDICATOR_NAMES;
alias XCB_XKB_XI_FEATURE_INDICATOR_MAPS = xcb_xkb_xi_feature_t.XCB_XKB_XI_FEATURE_INDICATOR_MAPS;
alias XCB_XKB_XI_FEATURE_INDICATOR_STATE = xcb_xkb_xi_feature_t.XCB_XKB_XI_FEATURE_INDICATOR_STATE;

enum xcb_xkb_per_client_flag_t {
	XCB_XKB_PER_CLIENT_FLAG_DETECTABLE_AUTO_REPEAT = 1,
	XCB_XKB_PER_CLIENT_FLAG_GRABS_USE_XKB_STATE = 2,
	XCB_XKB_PER_CLIENT_FLAG_AUTO_RESET_CONTROLS = 4,
	XCB_XKB_PER_CLIENT_FLAG_LOOKUP_STATE_WHEN_GRABBED = 8,
	XCB_XKB_PER_CLIENT_FLAG_SEND_EVENT_USES_XKB_STATE = 16
}

alias XCB_XKB_PER_CLIENT_FLAG_DETECTABLE_AUTO_REPEAT = xcb_xkb_per_client_flag_t.XCB_XKB_PER_CLIENT_FLAG_DETECTABLE_AUTO_REPEAT;
alias XCB_XKB_PER_CLIENT_FLAG_GRABS_USE_XKB_STATE = xcb_xkb_per_client_flag_t.XCB_XKB_PER_CLIENT_FLAG_GRABS_USE_XKB_STATE;
alias XCB_XKB_PER_CLIENT_FLAG_AUTO_RESET_CONTROLS = xcb_xkb_per_client_flag_t.XCB_XKB_PER_CLIENT_FLAG_AUTO_RESET_CONTROLS;
alias XCB_XKB_PER_CLIENT_FLAG_LOOKUP_STATE_WHEN_GRABBED = xcb_xkb_per_client_flag_t.XCB_XKB_PER_CLIENT_FLAG_LOOKUP_STATE_WHEN_GRABBED;
alias XCB_XKB_PER_CLIENT_FLAG_SEND_EVENT_USES_XKB_STATE = xcb_xkb_per_client_flag_t.XCB_XKB_PER_CLIENT_FLAG_SEND_EVENT_USES_XKB_STATE;

/**
 * @brief xcb_xkb_mod_def_t
 **/
struct xcb_xkb_mod_def_t {
	ubyte mask; /**<  */
	ubyte realMods; /**<  */
	ushort vmods; /**<  */
}

/**
 * @brief xcb_xkb_mod_def_iterator_t
 **/
struct xcb_xkb_mod_def_iterator_t {
	xcb_xkb_mod_def_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_key_name_t
 **/
struct xcb_xkb_key_name_t {
	char[4] name; /**<  */
}

/**
 * @brief xcb_xkb_key_name_iterator_t
 **/
struct xcb_xkb_key_name_iterator_t {
	xcb_xkb_key_name_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_key_alias_t
 **/
struct xcb_xkb_key_alias_t {
	char[4] real_; /**<  */
	char[4] alias_; /**<  */
}

/**
 * @brief xcb_xkb_key_alias_iterator_t
 **/
struct xcb_xkb_key_alias_iterator_t {
	xcb_xkb_key_alias_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_counted_string_16_t
 **/
struct xcb_xkb_counted_string_16_t {
	ushort length; /**<  */
}

/**
 * @brief xcb_xkb_counted_string_16_iterator_t
 **/
struct xcb_xkb_counted_string_16_iterator_t {
	xcb_xkb_counted_string_16_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_kt_map_entry_t
 **/
struct xcb_xkb_kt_map_entry_t {
	ubyte active; /**<  */
	ubyte mods_mask; /**<  */
	ubyte level; /**<  */
	ubyte mods_mods; /**<  */
	ushort mods_vmods; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_kt_map_entry_iterator_t
 **/
struct xcb_xkb_kt_map_entry_iterator_t {
	xcb_xkb_kt_map_entry_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_key_type_t
 **/
struct xcb_xkb_key_type_t {
	ubyte mods_mask; /**<  */
	ubyte mods_mods; /**<  */
	ushort mods_vmods; /**<  */
	ubyte numLevels; /**<  */
	ubyte nMapEntries; /**<  */
	ubyte hasPreserve; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_key_type_iterator_t
 **/
struct xcb_xkb_key_type_iterator_t {
	xcb_xkb_key_type_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_key_sym_map_t
 **/
struct xcb_xkb_key_sym_map_t {
	ubyte[4] kt_index; /**<  */
	ubyte groupInfo; /**<  */
	ubyte width; /**<  */
	ushort nSyms; /**<  */
}

/**
 * @brief xcb_xkb_key_sym_map_iterator_t
 **/
struct xcb_xkb_key_sym_map_iterator_t {
	xcb_xkb_key_sym_map_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_common_behavior_t
 **/
struct xcb_xkb_common_behavior_t {
	ubyte type; /**<  */
	ubyte data; /**<  */
}

/**
 * @brief xcb_xkb_common_behavior_iterator_t
 **/
struct xcb_xkb_common_behavior_iterator_t {
	xcb_xkb_common_behavior_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_default_behavior_t
 **/
struct xcb_xkb_default_behavior_t {
	ubyte type; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_default_behavior_iterator_t
 **/
struct xcb_xkb_default_behavior_iterator_t {
	xcb_xkb_default_behavior_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_lock_behavior_t
 **/
struct xcb_xkb_lock_behavior_t {
	ubyte type; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_lock_behavior_iterator_t
 **/
struct xcb_xkb_lock_behavior_iterator_t {
	xcb_xkb_lock_behavior_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_radio_group_behavior_t
 **/
struct xcb_xkb_radio_group_behavior_t {
	ubyte type; /**<  */
	ubyte group; /**<  */
}

/**
 * @brief xcb_xkb_radio_group_behavior_iterator_t
 **/
struct xcb_xkb_radio_group_behavior_iterator_t {
	xcb_xkb_radio_group_behavior_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_overlay_behavior_t
 **/
struct xcb_xkb_overlay_behavior_t {
	ubyte type; /**<  */
	xcb_keycode_t key; /**<  */
}

/**
 * @brief xcb_xkb_overlay_behavior_iterator_t
 **/
struct xcb_xkb_overlay_behavior_iterator_t {
	xcb_xkb_overlay_behavior_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_permament_lock_behavior_t
 **/
struct xcb_xkb_permament_lock_behavior_t {
	ubyte type; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_permament_lock_behavior_iterator_t
 **/
struct xcb_xkb_permament_lock_behavior_iterator_t {
	xcb_xkb_permament_lock_behavior_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_permament_radio_group_behavior_t
 **/
struct xcb_xkb_permament_radio_group_behavior_t {
	ubyte type; /**<  */
	ubyte group; /**<  */
}

/**
 * @brief xcb_xkb_permament_radio_group_behavior_iterator_t
 **/
struct xcb_xkb_permament_radio_group_behavior_iterator_t {
	xcb_xkb_permament_radio_group_behavior_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_permament_overlay_behavior_t
 **/
struct xcb_xkb_permament_overlay_behavior_t {
	ubyte type; /**<  */
	xcb_keycode_t key; /**<  */
}

/**
 * @brief xcb_xkb_permament_overlay_behavior_iterator_t
 **/
struct xcb_xkb_permament_overlay_behavior_iterator_t {
	xcb_xkb_permament_overlay_behavior_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_behavior_t
 **/
union xcb_xkb_behavior_t {
	xcb_xkb_common_behavior_t common; /**<  */
	xcb_xkb_default_behavior_t default_; /**<  */
	xcb_xkb_lock_behavior_t lock; /**<  */
	xcb_xkb_radio_group_behavior_t radioGroup; /**<  */
	xcb_xkb_overlay_behavior_t overlay1; /**<  */
	xcb_xkb_overlay_behavior_t overlay2; /**<  */
	xcb_xkb_permament_lock_behavior_t permamentLock; /**<  */
	xcb_xkb_permament_radio_group_behavior_t permamentRadioGroup; /**<  */
	xcb_xkb_permament_overlay_behavior_t permamentOverlay1; /**<  */
	xcb_xkb_permament_overlay_behavior_t permamentOverlay2; /**<  */
	ubyte type; /**<  */
}

/**
 * @brief xcb_xkb_behavior_iterator_t
 **/
struct xcb_xkb_behavior_iterator_t {
	xcb_xkb_behavior_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_behavior_type_t {
	XCB_XKB_BEHAVIOR_TYPE_DEFAULT = 0,
	XCB_XKB_BEHAVIOR_TYPE_LOCK = 1,
	XCB_XKB_BEHAVIOR_TYPE_RADIO_GROUP = 2,
	XCB_XKB_BEHAVIOR_TYPE_OVERLAY_1 = 3,
	XCB_XKB_BEHAVIOR_TYPE_OVERLAY_2 = 4,
	XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_LOCK = 129,
	XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_RADIO_GROUP = 130,
	XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_1 = 131,
	XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_2 = 132
}

alias XCB_XKB_BEHAVIOR_TYPE_DEFAULT = xcb_xkb_behavior_type_t.XCB_XKB_BEHAVIOR_TYPE_DEFAULT;
alias XCB_XKB_BEHAVIOR_TYPE_LOCK = xcb_xkb_behavior_type_t.XCB_XKB_BEHAVIOR_TYPE_LOCK;
alias XCB_XKB_BEHAVIOR_TYPE_RADIO_GROUP = xcb_xkb_behavior_type_t.XCB_XKB_BEHAVIOR_TYPE_RADIO_GROUP;
alias XCB_XKB_BEHAVIOR_TYPE_OVERLAY_1 = xcb_xkb_behavior_type_t.XCB_XKB_BEHAVIOR_TYPE_OVERLAY_1;
alias XCB_XKB_BEHAVIOR_TYPE_OVERLAY_2 = xcb_xkb_behavior_type_t.XCB_XKB_BEHAVIOR_TYPE_OVERLAY_2;
alias XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_LOCK = xcb_xkb_behavior_type_t.XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_LOCK;
alias XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_RADIO_GROUP = xcb_xkb_behavior_type_t.XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_RADIO_GROUP;
alias XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_1 = xcb_xkb_behavior_type_t.XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_1;
alias XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_2 = xcb_xkb_behavior_type_t.XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_2;

/**
 * @brief xcb_xkb_set_behavior_t
 **/
struct xcb_xkb_set_behavior_t {
	xcb_keycode_t keycode; /**<  */
	xcb_xkb_behavior_t behavior; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_set_behavior_iterator_t
 **/
struct xcb_xkb_set_behavior_iterator_t {
	xcb_xkb_set_behavior_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_set_explicit_t
 **/
struct xcb_xkb_set_explicit_t {
	xcb_keycode_t keycode; /**<  */
	ubyte explicit; /**<  */
}

/**
 * @brief xcb_xkb_set_explicit_iterator_t
 **/
struct xcb_xkb_set_explicit_iterator_t {
	xcb_xkb_set_explicit_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_key_mod_map_t
 **/
struct xcb_xkb_key_mod_map_t {
	xcb_keycode_t keycode; /**<  */
	ubyte mods; /**<  */
}

/**
 * @brief xcb_xkb_key_mod_map_iterator_t
 **/
struct xcb_xkb_key_mod_map_iterator_t {
	xcb_xkb_key_mod_map_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_key_v_mod_map_t
 **/
struct xcb_xkb_key_v_mod_map_t {
	xcb_keycode_t keycode; /**<  */
	ubyte pad0; /**<  */
	ushort vmods; /**<  */
}

/**
 * @brief xcb_xkb_key_v_mod_map_iterator_t
 **/
struct xcb_xkb_key_v_mod_map_iterator_t {
	xcb_xkb_key_v_mod_map_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_kt_set_map_entry_t
 **/
struct xcb_xkb_kt_set_map_entry_t {
	ubyte level; /**<  */
	ubyte realMods; /**<  */
	ushort virtualMods; /**<  */
}

/**
 * @brief xcb_xkb_kt_set_map_entry_iterator_t
 **/
struct xcb_xkb_kt_set_map_entry_iterator_t {
	xcb_xkb_kt_set_map_entry_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_set_key_type_t
 **/
struct xcb_xkb_set_key_type_t {
	ubyte mask; /**<  */
	ubyte realMods; /**<  */
	ushort virtualMods; /**<  */
	ubyte numLevels; /**<  */
	ubyte nMapEntries; /**<  */
	ubyte preserve; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_set_key_type_iterator_t
 **/
struct xcb_xkb_set_key_type_iterator_t {
	xcb_xkb_set_key_type_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_xkb_string8_t = char;

/**
 * @brief xcb_xkb_string8_iterator_t
 **/
struct xcb_xkb_string8_iterator_t {
	xcb_xkb_string8_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_outline_t
 **/
struct xcb_xkb_outline_t {
	ubyte nPoints; /**<  */
	ubyte cornerRadius; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_outline_iterator_t
 **/
struct xcb_xkb_outline_iterator_t {
	xcb_xkb_outline_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_shape_t
 **/
struct xcb_xkb_shape_t {
	xcb_atom_t name; /**<  */
	ubyte nOutlines; /**<  */
	ubyte primaryNdx; /**<  */
	ubyte approxNdx; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_shape_iterator_t
 **/
struct xcb_xkb_shape_iterator_t {
	xcb_xkb_shape_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_key_t
 **/
struct xcb_xkb_key_t {
	xcb_xkb_string8_t[4] name; /**<  */
	short gap; /**<  */
	ubyte shapeNdx; /**<  */
	ubyte colorNdx; /**<  */
}

/**
 * @brief xcb_xkb_key_iterator_t
 **/
struct xcb_xkb_key_iterator_t {
	xcb_xkb_key_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_overlay_key_t
 **/
struct xcb_xkb_overlay_key_t {
	xcb_xkb_string8_t[4] over; /**<  */
	xcb_xkb_string8_t[4] under; /**<  */
}

/**
 * @brief xcb_xkb_overlay_key_iterator_t
 **/
struct xcb_xkb_overlay_key_iterator_t {
	xcb_xkb_overlay_key_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_overlay_row_t
 **/
struct xcb_xkb_overlay_row_t {
	ubyte rowUnder; /**<  */
	ubyte nKeys; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_overlay_row_iterator_t
 **/
struct xcb_xkb_overlay_row_iterator_t {
	xcb_xkb_overlay_row_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_overlay_t
 **/
struct xcb_xkb_overlay_t {
	xcb_atom_t name; /**<  */
	ubyte nRows; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_xkb_overlay_iterator_t
 **/
struct xcb_xkb_overlay_iterator_t {
	xcb_xkb_overlay_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_row_t
 **/
struct xcb_xkb_row_t {
	short top; /**<  */
	short left; /**<  */
	ubyte nKeys; /**<  */
	ubyte vertical; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_row_iterator_t
 **/
struct xcb_xkb_row_iterator_t {
	xcb_xkb_row_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_doodad_type_t {
	XCB_XKB_DOODAD_TYPE_OUTLINE = 1,
	XCB_XKB_DOODAD_TYPE_SOLID = 2,
	XCB_XKB_DOODAD_TYPE_TEXT = 3,
	XCB_XKB_DOODAD_TYPE_INDICATOR = 4,
	XCB_XKB_DOODAD_TYPE_LOGO = 5
}

alias XCB_XKB_DOODAD_TYPE_OUTLINE = xcb_xkb_doodad_type_t.XCB_XKB_DOODAD_TYPE_OUTLINE;
alias XCB_XKB_DOODAD_TYPE_SOLID = xcb_xkb_doodad_type_t.XCB_XKB_DOODAD_TYPE_SOLID;
alias XCB_XKB_DOODAD_TYPE_TEXT = xcb_xkb_doodad_type_t.XCB_XKB_DOODAD_TYPE_TEXT;
alias XCB_XKB_DOODAD_TYPE_INDICATOR = xcb_xkb_doodad_type_t.XCB_XKB_DOODAD_TYPE_INDICATOR;
alias XCB_XKB_DOODAD_TYPE_LOGO = xcb_xkb_doodad_type_t.XCB_XKB_DOODAD_TYPE_LOGO;

/**
 * @brief xcb_xkb_listing_t
 **/
struct xcb_xkb_listing_t {
	ushort flags; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_xkb_listing_iterator_t
 **/
struct xcb_xkb_listing_iterator_t {
	xcb_xkb_listing_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_device_led_info_t
 **/
struct xcb_xkb_device_led_info_t {
	xcb_xkb_led_class_spec_t ledClass; /**<  */
	xcb_xkb_id_spec_t ledID; /**<  */
	uint namesPresent; /**<  */
	uint mapsPresent; /**<  */
	uint physIndicators; /**<  */
	uint state; /**<  */
}

/**
 * @brief xcb_xkb_device_led_info_iterator_t
 **/
struct xcb_xkb_device_led_info_iterator_t {
	xcb_xkb_device_led_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_error_t {
	XCB_XKB_ERROR_BAD_DEVICE = 255,
	XCB_XKB_ERROR_BAD_CLASS = 254,
	XCB_XKB_ERROR_BAD_ID = 253
}

alias XCB_XKB_ERROR_BAD_DEVICE = xcb_xkb_error_t.XCB_XKB_ERROR_BAD_DEVICE;
alias XCB_XKB_ERROR_BAD_CLASS = xcb_xkb_error_t.XCB_XKB_ERROR_BAD_CLASS;
alias XCB_XKB_ERROR_BAD_ID = xcb_xkb_error_t.XCB_XKB_ERROR_BAD_ID;

/** Opcode for xcb_xkb_keyboard. */
enum XCB_XKB_KEYBOARD = 0;

/**
 * @brief xcb_xkb_keyboard_error_t
 **/
struct xcb_xkb_keyboard_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
	uint value; /**<  */
	ushort minorOpcode; /**<  */
	ubyte majorOpcode; /**<  */
	ubyte[21] pad0; /**<  */
}

enum xcb_xkb_sa_t {
	XCB_XKB_SA_CLEAR_LOCKS = 1,
	XCB_XKB_SA_LATCH_TO_LOCK = 2,
	XCB_XKB_SA_USE_MOD_MAP_MODS = 4,
	XCB_XKB_SA_GROUP_ABSOLUTE = 4
}

alias XCB_XKB_SA_CLEAR_LOCKS = xcb_xkb_sa_t.XCB_XKB_SA_CLEAR_LOCKS;
alias XCB_XKB_SA_LATCH_TO_LOCK = xcb_xkb_sa_t.XCB_XKB_SA_LATCH_TO_LOCK;
alias XCB_XKB_SA_USE_MOD_MAP_MODS = xcb_xkb_sa_t.XCB_XKB_SA_USE_MOD_MAP_MODS;
alias XCB_XKB_SA_GROUP_ABSOLUTE = xcb_xkb_sa_t.XCB_XKB_SA_GROUP_ABSOLUTE;

enum xcb_xkb_sa_type_t {
	XCB_XKB_SA_TYPE_NO_ACTION = 0,
	XCB_XKB_SA_TYPE_SET_MODS = 1,
	XCB_XKB_SA_TYPE_LATCH_MODS = 2,
	XCB_XKB_SA_TYPE_LOCK_MODS = 3,
	XCB_XKB_SA_TYPE_SET_GROUP = 4,
	XCB_XKB_SA_TYPE_LATCH_GROUP = 5,
	XCB_XKB_SA_TYPE_LOCK_GROUP = 6,
	XCB_XKB_SA_TYPE_MOVE_PTR = 7,
	XCB_XKB_SA_TYPE_PTR_BTN = 8,
	XCB_XKB_SA_TYPE_LOCK_PTR_BTN = 9,
	XCB_XKB_SA_TYPE_SET_PTR_DFLT = 10,
	XCB_XKB_SA_TYPE_ISO_LOCK = 11,
	XCB_XKB_SA_TYPE_TERMINATE = 12,
	XCB_XKB_SA_TYPE_SWITCH_SCREEN = 13,
	XCB_XKB_SA_TYPE_SET_CONTROLS = 14,
	XCB_XKB_SA_TYPE_LOCK_CONTROLS = 15,
	XCB_XKB_SA_TYPE_ACTION_MESSAGE = 16,
	XCB_XKB_SA_TYPE_REDIRECT_KEY = 17,
	XCB_XKB_SA_TYPE_DEVICE_BTN = 18,
	XCB_XKB_SA_TYPE_LOCK_DEVICE_BTN = 19,
	XCB_XKB_SA_TYPE_DEVICE_VALUATOR = 20
}

alias XCB_XKB_SA_TYPE_NO_ACTION = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_NO_ACTION;
alias XCB_XKB_SA_TYPE_SET_MODS = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_SET_MODS;
alias XCB_XKB_SA_TYPE_LATCH_MODS = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_LATCH_MODS;
alias XCB_XKB_SA_TYPE_LOCK_MODS = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_LOCK_MODS;
alias XCB_XKB_SA_TYPE_SET_GROUP = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_SET_GROUP;
alias XCB_XKB_SA_TYPE_LATCH_GROUP = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_LATCH_GROUP;
alias XCB_XKB_SA_TYPE_LOCK_GROUP = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_LOCK_GROUP;
alias XCB_XKB_SA_TYPE_MOVE_PTR = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_MOVE_PTR;
alias XCB_XKB_SA_TYPE_PTR_BTN = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_PTR_BTN;
alias XCB_XKB_SA_TYPE_LOCK_PTR_BTN = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_LOCK_PTR_BTN;
alias XCB_XKB_SA_TYPE_SET_PTR_DFLT = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_SET_PTR_DFLT;
alias XCB_XKB_SA_TYPE_ISO_LOCK = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_ISO_LOCK;
alias XCB_XKB_SA_TYPE_TERMINATE = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_TERMINATE;
alias XCB_XKB_SA_TYPE_SWITCH_SCREEN = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_SWITCH_SCREEN;
alias XCB_XKB_SA_TYPE_SET_CONTROLS = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_SET_CONTROLS;
alias XCB_XKB_SA_TYPE_LOCK_CONTROLS = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_LOCK_CONTROLS;
alias XCB_XKB_SA_TYPE_ACTION_MESSAGE = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_ACTION_MESSAGE;
alias XCB_XKB_SA_TYPE_REDIRECT_KEY = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_REDIRECT_KEY;
alias XCB_XKB_SA_TYPE_DEVICE_BTN = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_DEVICE_BTN;
alias XCB_XKB_SA_TYPE_LOCK_DEVICE_BTN = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_LOCK_DEVICE_BTN;
alias XCB_XKB_SA_TYPE_DEVICE_VALUATOR = xcb_xkb_sa_type_t.XCB_XKB_SA_TYPE_DEVICE_VALUATOR;

/**
 * @brief xcb_xkb_sa_no_action_t
 **/
struct xcb_xkb_sa_no_action_t {
	ubyte type; /**<  */
	ubyte[7] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_no_action_iterator_t
 **/
struct xcb_xkb_sa_no_action_iterator_t {
	xcb_xkb_sa_no_action_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_mods_t
 **/
struct xcb_xkb_sa_set_mods_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	ubyte mask; /**<  */
	ubyte realMods; /**<  */
	ubyte vmodsHigh; /**<  */
	ubyte vmodsLow; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_mods_iterator_t
 **/
struct xcb_xkb_sa_set_mods_iterator_t {
	xcb_xkb_sa_set_mods_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_latch_mods_t
 **/
struct xcb_xkb_sa_latch_mods_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	ubyte mask; /**<  */
	ubyte realMods; /**<  */
	ubyte vmodsHigh; /**<  */
	ubyte vmodsLow; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_latch_mods_iterator_t
 **/
struct xcb_xkb_sa_latch_mods_iterator_t {
	xcb_xkb_sa_latch_mods_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_mods_t
 **/
struct xcb_xkb_sa_lock_mods_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	ubyte mask; /**<  */
	ubyte realMods; /**<  */
	ubyte vmodsHigh; /**<  */
	ubyte vmodsLow; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_mods_iterator_t
 **/
struct xcb_xkb_sa_lock_mods_iterator_t {
	xcb_xkb_sa_lock_mods_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_group_t
 **/
struct xcb_xkb_sa_set_group_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	byte group; /**<  */
	ubyte[5] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_group_iterator_t
 **/
struct xcb_xkb_sa_set_group_iterator_t {
	xcb_xkb_sa_set_group_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_latch_group_t
 **/
struct xcb_xkb_sa_latch_group_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	byte group; /**<  */
	ubyte[5] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_latch_group_iterator_t
 **/
struct xcb_xkb_sa_latch_group_iterator_t {
	xcb_xkb_sa_latch_group_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_group_t
 **/
struct xcb_xkb_sa_lock_group_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	byte group; /**<  */
	ubyte[5] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_group_iterator_t
 **/
struct xcb_xkb_sa_lock_group_iterator_t {
	xcb_xkb_sa_lock_group_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_sa_move_ptr_flag_t {
	XCB_XKB_SA_MOVE_PTR_FLAG_NO_ACCELERATION = 1,
	XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_X = 2,
	XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_Y = 4
}

alias XCB_XKB_SA_MOVE_PTR_FLAG_NO_ACCELERATION = xcb_xkb_sa_move_ptr_flag_t.XCB_XKB_SA_MOVE_PTR_FLAG_NO_ACCELERATION;
alias XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_X = xcb_xkb_sa_move_ptr_flag_t.XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_X;
alias XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_Y = xcb_xkb_sa_move_ptr_flag_t.XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_Y;

/**
 * @brief xcb_xkb_sa_move_ptr_t
 **/
struct xcb_xkb_sa_move_ptr_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	byte xHigh; /**<  */
	ubyte xLow; /**<  */
	byte yHigh; /**<  */
	ubyte yLow; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_move_ptr_iterator_t
 **/
struct xcb_xkb_sa_move_ptr_iterator_t {
	xcb_xkb_sa_move_ptr_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_ptr_btn_t
 **/
struct xcb_xkb_sa_ptr_btn_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	ubyte count; /**<  */
	ubyte button; /**<  */
	ubyte[4] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_ptr_btn_iterator_t
 **/
struct xcb_xkb_sa_ptr_btn_iterator_t {
	xcb_xkb_sa_ptr_btn_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_ptr_btn_t
 **/
struct xcb_xkb_sa_lock_ptr_btn_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	ubyte pad0; /**<  */
	ubyte button; /**<  */
	ubyte[4] pad1; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_ptr_btn_iterator_t
 **/
struct xcb_xkb_sa_lock_ptr_btn_iterator_t {
	xcb_xkb_sa_lock_ptr_btn_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_sa_set_ptr_dflt_flag_t {
	XCB_XKB_SA_SET_PTR_DFLT_FLAG_DFLT_BTN_ABSOLUTE = 4,
	XCB_XKB_SA_SET_PTR_DFLT_FLAG_AFFECT_DFLT_BUTTON = 1
}

alias XCB_XKB_SA_SET_PTR_DFLT_FLAG_DFLT_BTN_ABSOLUTE = xcb_xkb_sa_set_ptr_dflt_flag_t.XCB_XKB_SA_SET_PTR_DFLT_FLAG_DFLT_BTN_ABSOLUTE;
alias XCB_XKB_SA_SET_PTR_DFLT_FLAG_AFFECT_DFLT_BUTTON = xcb_xkb_sa_set_ptr_dflt_flag_t.XCB_XKB_SA_SET_PTR_DFLT_FLAG_AFFECT_DFLT_BUTTON;

/**
 * @brief xcb_xkb_sa_set_ptr_dflt_t
 **/
struct xcb_xkb_sa_set_ptr_dflt_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	ubyte affect; /**<  */
	byte value; /**<  */
	ubyte[4] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_ptr_dflt_iterator_t
 **/
struct xcb_xkb_sa_set_ptr_dflt_iterator_t {
	xcb_xkb_sa_set_ptr_dflt_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_sa_iso_lock_flag_t {
	XCB_XKB_SA_ISO_LOCK_FLAG_NO_LOCK = 1,
	XCB_XKB_SA_ISO_LOCK_FLAG_NO_UNLOCK = 2,
	XCB_XKB_SA_ISO_LOCK_FLAG_USE_MOD_MAP_MODS = 4,
	XCB_XKB_SA_ISO_LOCK_FLAG_GROUP_ABSOLUTE = 4,
	XCB_XKB_SA_ISO_LOCK_FLAG_ISO_DFLT_IS_GROUP = 8
}

alias XCB_XKB_SA_ISO_LOCK_FLAG_NO_LOCK = xcb_xkb_sa_iso_lock_flag_t.XCB_XKB_SA_ISO_LOCK_FLAG_NO_LOCK;
alias XCB_XKB_SA_ISO_LOCK_FLAG_NO_UNLOCK = xcb_xkb_sa_iso_lock_flag_t.XCB_XKB_SA_ISO_LOCK_FLAG_NO_UNLOCK;
alias XCB_XKB_SA_ISO_LOCK_FLAG_USE_MOD_MAP_MODS = xcb_xkb_sa_iso_lock_flag_t.XCB_XKB_SA_ISO_LOCK_FLAG_USE_MOD_MAP_MODS;
alias XCB_XKB_SA_ISO_LOCK_FLAG_GROUP_ABSOLUTE = xcb_xkb_sa_iso_lock_flag_t.XCB_XKB_SA_ISO_LOCK_FLAG_GROUP_ABSOLUTE;
alias XCB_XKB_SA_ISO_LOCK_FLAG_ISO_DFLT_IS_GROUP = xcb_xkb_sa_iso_lock_flag_t.XCB_XKB_SA_ISO_LOCK_FLAG_ISO_DFLT_IS_GROUP;

enum xcb_xkb_sa_iso_lock_no_affect_t {
	XCB_XKB_SA_ISO_LOCK_NO_AFFECT_CTRLS = 8,
	XCB_XKB_SA_ISO_LOCK_NO_AFFECT_PTR = 16,
	XCB_XKB_SA_ISO_LOCK_NO_AFFECT_GROUP = 32,
	XCB_XKB_SA_ISO_LOCK_NO_AFFECT_MODS = 64
}

alias XCB_XKB_SA_ISO_LOCK_NO_AFFECT_CTRLS = xcb_xkb_sa_iso_lock_no_affect_t.XCB_XKB_SA_ISO_LOCK_NO_AFFECT_CTRLS;
alias XCB_XKB_SA_ISO_LOCK_NO_AFFECT_PTR = xcb_xkb_sa_iso_lock_no_affect_t.XCB_XKB_SA_ISO_LOCK_NO_AFFECT_PTR;
alias XCB_XKB_SA_ISO_LOCK_NO_AFFECT_GROUP = xcb_xkb_sa_iso_lock_no_affect_t.XCB_XKB_SA_ISO_LOCK_NO_AFFECT_GROUP;
alias XCB_XKB_SA_ISO_LOCK_NO_AFFECT_MODS = xcb_xkb_sa_iso_lock_no_affect_t.XCB_XKB_SA_ISO_LOCK_NO_AFFECT_MODS;

/**
 * @brief xcb_xkb_sa_iso_lock_t
 **/
struct xcb_xkb_sa_iso_lock_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	ubyte mask; /**<  */
	ubyte realMods; /**<  */
	byte group; /**<  */
	ubyte affect; /**<  */
	ubyte vmodsHigh; /**<  */
	ubyte vmodsLow; /**<  */
}

/**
 * @brief xcb_xkb_sa_iso_lock_iterator_t
 **/
struct xcb_xkb_sa_iso_lock_iterator_t {
	xcb_xkb_sa_iso_lock_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_terminate_t
 **/
struct xcb_xkb_sa_terminate_t {
	ubyte type; /**<  */
	ubyte[7] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_terminate_iterator_t
 **/
struct xcb_xkb_sa_terminate_iterator_t {
	xcb_xkb_sa_terminate_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_switch_screen_flag_t {
	XCB_XKB_SWITCH_SCREEN_FLAG_APPLICATION = 1,
	XCB_XKB_SWITCH_SCREEN_FLAG_ABSOLUTE = 4
}

alias XCB_XKB_SWITCH_SCREEN_FLAG_APPLICATION = xcb_xkb_switch_screen_flag_t.XCB_XKB_SWITCH_SCREEN_FLAG_APPLICATION;
alias XCB_XKB_SWITCH_SCREEN_FLAG_ABSOLUTE = xcb_xkb_switch_screen_flag_t.XCB_XKB_SWITCH_SCREEN_FLAG_ABSOLUTE;

/**
 * @brief xcb_xkb_sa_switch_screen_t
 **/
struct xcb_xkb_sa_switch_screen_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	byte newScreen; /**<  */
	ubyte[5] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_switch_screen_iterator_t
 **/
struct xcb_xkb_sa_switch_screen_iterator_t {
	xcb_xkb_sa_switch_screen_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_bool_ctrls_high_t {
	XCB_XKB_BOOL_CTRLS_HIGH_ACCESS_X_FEEDBACK = 1,
	XCB_XKB_BOOL_CTRLS_HIGH_AUDIBLE_BELL = 2,
	XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_1 = 4,
	XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_2 = 8,
	XCB_XKB_BOOL_CTRLS_HIGH_IGNORE_GROUP_LOCK = 16
}

alias XCB_XKB_BOOL_CTRLS_HIGH_ACCESS_X_FEEDBACK = xcb_xkb_bool_ctrls_high_t.XCB_XKB_BOOL_CTRLS_HIGH_ACCESS_X_FEEDBACK;
alias XCB_XKB_BOOL_CTRLS_HIGH_AUDIBLE_BELL = xcb_xkb_bool_ctrls_high_t.XCB_XKB_BOOL_CTRLS_HIGH_AUDIBLE_BELL;
alias XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_1 = xcb_xkb_bool_ctrls_high_t.XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_1;
alias XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_2 = xcb_xkb_bool_ctrls_high_t.XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_2;
alias XCB_XKB_BOOL_CTRLS_HIGH_IGNORE_GROUP_LOCK = xcb_xkb_bool_ctrls_high_t.XCB_XKB_BOOL_CTRLS_HIGH_IGNORE_GROUP_LOCK;

enum xcb_xkb_bool_ctrls_low_t {
	XCB_XKB_BOOL_CTRLS_LOW_REPEAT_KEYS = 1,
	XCB_XKB_BOOL_CTRLS_LOW_SLOW_KEYS = 2,
	XCB_XKB_BOOL_CTRLS_LOW_BOUNCE_KEYS = 4,
	XCB_XKB_BOOL_CTRLS_LOW_STICKY_KEYS = 8,
	XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS = 16,
	XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS_ACCEL = 32,
	XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_KEYS = 64,
	XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_TIMEOUT = 128
}

alias XCB_XKB_BOOL_CTRLS_LOW_REPEAT_KEYS = xcb_xkb_bool_ctrls_low_t.XCB_XKB_BOOL_CTRLS_LOW_REPEAT_KEYS;
alias XCB_XKB_BOOL_CTRLS_LOW_SLOW_KEYS = xcb_xkb_bool_ctrls_low_t.XCB_XKB_BOOL_CTRLS_LOW_SLOW_KEYS;
alias XCB_XKB_BOOL_CTRLS_LOW_BOUNCE_KEYS = xcb_xkb_bool_ctrls_low_t.XCB_XKB_BOOL_CTRLS_LOW_BOUNCE_KEYS;
alias XCB_XKB_BOOL_CTRLS_LOW_STICKY_KEYS = xcb_xkb_bool_ctrls_low_t.XCB_XKB_BOOL_CTRLS_LOW_STICKY_KEYS;
alias XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS = xcb_xkb_bool_ctrls_low_t.XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS;
alias XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS_ACCEL = xcb_xkb_bool_ctrls_low_t.XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS_ACCEL;
alias XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_KEYS = xcb_xkb_bool_ctrls_low_t.XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_KEYS;
alias XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_TIMEOUT = xcb_xkb_bool_ctrls_low_t.XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_TIMEOUT;

/**
 * @brief xcb_xkb_sa_set_controls_t
 **/
struct xcb_xkb_sa_set_controls_t {
	ubyte type; /**<  */
	ubyte[3] pad0; /**<  */
	ubyte boolCtrlsHigh; /**<  */
	ubyte boolCtrlsLow; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_controls_iterator_t
 **/
struct xcb_xkb_sa_set_controls_iterator_t {
	xcb_xkb_sa_set_controls_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_controls_t
 **/
struct xcb_xkb_sa_lock_controls_t {
	ubyte type; /**<  */
	ubyte[3] pad0; /**<  */
	ubyte boolCtrlsHigh; /**<  */
	ubyte boolCtrlsLow; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_controls_iterator_t
 **/
struct xcb_xkb_sa_lock_controls_iterator_t {
	xcb_xkb_sa_lock_controls_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_action_message_flag_t {
	XCB_XKB_ACTION_MESSAGE_FLAG_ON_PRESS = 1,
	XCB_XKB_ACTION_MESSAGE_FLAG_ON_RELEASE = 2,
	XCB_XKB_ACTION_MESSAGE_FLAG_GEN_KEY_EVENT = 4
}

alias XCB_XKB_ACTION_MESSAGE_FLAG_ON_PRESS = xcb_xkb_action_message_flag_t.XCB_XKB_ACTION_MESSAGE_FLAG_ON_PRESS;
alias XCB_XKB_ACTION_MESSAGE_FLAG_ON_RELEASE = xcb_xkb_action_message_flag_t.XCB_XKB_ACTION_MESSAGE_FLAG_ON_RELEASE;
alias XCB_XKB_ACTION_MESSAGE_FLAG_GEN_KEY_EVENT = xcb_xkb_action_message_flag_t.XCB_XKB_ACTION_MESSAGE_FLAG_GEN_KEY_EVENT;

/**
 * @brief xcb_xkb_sa_action_message_t
 **/
struct xcb_xkb_sa_action_message_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	ubyte[6] message; /**<  */
}

/**
 * @brief xcb_xkb_sa_action_message_iterator_t
 **/
struct xcb_xkb_sa_action_message_iterator_t {
	xcb_xkb_sa_action_message_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_redirect_key_t
 **/
struct xcb_xkb_sa_redirect_key_t {
	ubyte type; /**<  */
	xcb_keycode_t newkey; /**<  */
	ubyte mask; /**<  */
	ubyte realModifiers; /**<  */
	ubyte vmodsMaskHigh; /**<  */
	ubyte vmodsMaskLow; /**<  */
	ubyte vmodsHigh; /**<  */
	ubyte vmodsLow; /**<  */
}

/**
 * @brief xcb_xkb_sa_redirect_key_iterator_t
 **/
struct xcb_xkb_sa_redirect_key_iterator_t {
	xcb_xkb_sa_redirect_key_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sa_device_btn_t
 **/
struct xcb_xkb_sa_device_btn_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	ubyte count; /**<  */
	ubyte button; /**<  */
	ubyte device; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_xkb_sa_device_btn_iterator_t
 **/
struct xcb_xkb_sa_device_btn_iterator_t {
	xcb_xkb_sa_device_btn_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_lock_device_flags_t {
	XCB_XKB_LOCK_DEVICE_FLAGS_NO_LOCK = 1,
	XCB_XKB_LOCK_DEVICE_FLAGS_NO_UNLOCK = 2
}

alias XCB_XKB_LOCK_DEVICE_FLAGS_NO_LOCK = xcb_xkb_lock_device_flags_t.XCB_XKB_LOCK_DEVICE_FLAGS_NO_LOCK;
alias XCB_XKB_LOCK_DEVICE_FLAGS_NO_UNLOCK = xcb_xkb_lock_device_flags_t.XCB_XKB_LOCK_DEVICE_FLAGS_NO_UNLOCK;

/**
 * @brief xcb_xkb_sa_lock_device_btn_t
 **/
struct xcb_xkb_sa_lock_device_btn_t {
	ubyte type; /**<  */
	ubyte flags; /**<  */
	ubyte pad0; /**<  */
	ubyte button; /**<  */
	ubyte device; /**<  */
	ubyte[3] pad1; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_device_btn_iterator_t
 **/
struct xcb_xkb_sa_lock_device_btn_iterator_t {
	xcb_xkb_sa_lock_device_btn_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_xkb_sa_val_what_t {
	XCB_XKB_SA_VAL_WHAT_IGNORE_VAL = 0,
	XCB_XKB_SA_VAL_WHAT_SET_VAL_MIN = 1,
	XCB_XKB_SA_VAL_WHAT_SET_VAL_CENTER = 2,
	XCB_XKB_SA_VAL_WHAT_SET_VAL_MAX = 3,
	XCB_XKB_SA_VAL_WHAT_SET_VAL_RELATIVE = 4,
	XCB_XKB_SA_VAL_WHAT_SET_VAL_ABSOLUTE = 5
}

alias XCB_XKB_SA_VAL_WHAT_IGNORE_VAL = xcb_xkb_sa_val_what_t.XCB_XKB_SA_VAL_WHAT_IGNORE_VAL;
alias XCB_XKB_SA_VAL_WHAT_SET_VAL_MIN = xcb_xkb_sa_val_what_t.XCB_XKB_SA_VAL_WHAT_SET_VAL_MIN;
alias XCB_XKB_SA_VAL_WHAT_SET_VAL_CENTER = xcb_xkb_sa_val_what_t.XCB_XKB_SA_VAL_WHAT_SET_VAL_CENTER;
alias XCB_XKB_SA_VAL_WHAT_SET_VAL_MAX = xcb_xkb_sa_val_what_t.XCB_XKB_SA_VAL_WHAT_SET_VAL_MAX;
alias XCB_XKB_SA_VAL_WHAT_SET_VAL_RELATIVE = xcb_xkb_sa_val_what_t.XCB_XKB_SA_VAL_WHAT_SET_VAL_RELATIVE;
alias XCB_XKB_SA_VAL_WHAT_SET_VAL_ABSOLUTE = xcb_xkb_sa_val_what_t.XCB_XKB_SA_VAL_WHAT_SET_VAL_ABSOLUTE;

/**
 * @brief xcb_xkb_sa_device_valuator_t
 **/
struct xcb_xkb_sa_device_valuator_t {
	ubyte type; /**<  */
	ubyte device; /**<  */
	ubyte val1what; /**<  */
	ubyte val1index; /**<  */
	ubyte val1value; /**<  */
	ubyte val2what; /**<  */
	ubyte val2index; /**<  */
	ubyte val2value; /**<  */
}

/**
 * @brief xcb_xkb_sa_device_valuator_iterator_t
 **/
struct xcb_xkb_sa_device_valuator_iterator_t {
	xcb_xkb_sa_device_valuator_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_si_action_t
 **/
struct xcb_xkb_si_action_t {
	ubyte type; /**<  */
	ubyte[7] data; /**<  */
}

/**
 * @brief xcb_xkb_si_action_iterator_t
 **/
struct xcb_xkb_si_action_iterator_t {
	xcb_xkb_si_action_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_sym_interpret_t
 **/
struct xcb_xkb_sym_interpret_t {
	xcb_keysym_t sym; /**<  */
	ubyte mods; /**<  */
	ubyte match; /**<  */
	ubyte virtualMod; /**<  */
	ubyte flags; /**<  */
	xcb_xkb_si_action_t action; /**<  */
}

/**
 * @brief xcb_xkb_sym_interpret_iterator_t
 **/
struct xcb_xkb_sym_interpret_iterator_t {
	xcb_xkb_sym_interpret_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_action_t
 **/
union xcb_xkb_action_t {
	xcb_xkb_sa_no_action_t noaction; /**<  */
	xcb_xkb_sa_set_mods_t setmods; /**<  */
	xcb_xkb_sa_latch_mods_t latchmods; /**<  */
	xcb_xkb_sa_lock_mods_t lockmods; /**<  */
	xcb_xkb_sa_set_group_t setgroup; /**<  */
	xcb_xkb_sa_latch_group_t latchgroup; /**<  */
	xcb_xkb_sa_lock_group_t lockgroup; /**<  */
	xcb_xkb_sa_move_ptr_t moveptr; /**<  */
	xcb_xkb_sa_ptr_btn_t ptrbtn; /**<  */
	xcb_xkb_sa_lock_ptr_btn_t lockptrbtn; /**<  */
	xcb_xkb_sa_set_ptr_dflt_t setptrdflt; /**<  */
	xcb_xkb_sa_iso_lock_t isolock; /**<  */
	xcb_xkb_sa_terminate_t terminate; /**<  */
	xcb_xkb_sa_switch_screen_t switchscreen; /**<  */
	xcb_xkb_sa_set_controls_t setcontrols; /**<  */
	xcb_xkb_sa_lock_controls_t lockcontrols; /**<  */
	xcb_xkb_sa_action_message_t message; /**<  */
	xcb_xkb_sa_redirect_key_t redirect; /**<  */
	xcb_xkb_sa_device_btn_t devbtn; /**<  */
	xcb_xkb_sa_lock_device_btn_t lockdevbtn; /**<  */
	xcb_xkb_sa_device_valuator_t devval; /**<  */
	ubyte type; /**<  */
}

/**
 * @brief xcb_xkb_action_iterator_t
 **/
struct xcb_xkb_action_iterator_t {
	xcb_xkb_action_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xkb_use_extension_cookie_t
 **/
struct xcb_xkb_use_extension_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_use_extension. */
enum XCB_XKB_USE_EXTENSION = 0;

/**
 * @brief xcb_xkb_use_extension_request_t
 **/
struct xcb_xkb_use_extension_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort wantedMajor; /**<  */
	ushort wantedMinor; /**<  */
}

/**
 * @brief xcb_xkb_use_extension_reply_t
 **/
struct xcb_xkb_use_extension_reply_t {
	ubyte response_type; /**<  */
	ubyte supported; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort serverMajor; /**<  */
	ushort serverMinor; /**<  */
	ubyte[20] pad0; /**<  */
}

/**
 * @brief xcb_xkb_select_events_details_t
 **/
struct xcb_xkb_select_events_details_t {
	ushort affectNewKeyboard; /**<  */
	ushort newKeyboardDetails; /**<  */
	ushort affectState; /**<  */
	ushort stateDetails; /**<  */
	uint affectCtrls; /**<  */
	uint ctrlDetails; /**<  */
	uint affectIndicatorState; /**<  */
	uint indicatorStateDetails; /**<  */
	uint affectIndicatorMap; /**<  */
	uint indicatorMapDetails; /**<  */
	ushort affectNames; /**<  */
	ushort namesDetails; /**<  */
	ubyte affectCompat; /**<  */
	ubyte compatDetails; /**<  */
	ubyte affectBell; /**<  */
	ubyte bellDetails; /**<  */
	ubyte affectMsgDetails; /**<  */
	ubyte msgDetails; /**<  */
	ushort affectAccessX; /**<  */
	ushort accessXDetails; /**<  */
	ushort affectExtDev; /**<  */
	ushort extdevDetails; /**<  */
}

/** Opcode for xcb_xkb_select_events. */
enum XCB_XKB_SELECT_EVENTS = 1;

/**
 * @brief xcb_xkb_select_events_request_t
 **/
struct xcb_xkb_select_events_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ushort affectWhich; /**<  */
	ushort clear; /**<  */
	ushort selectAll; /**<  */
	ushort affectMap; /**<  */
	ushort map; /**<  */
}

/** Opcode for xcb_xkb_bell. */
enum XCB_XKB_BELL = 3;

/**
 * @brief xcb_xkb_bell_request_t
 **/
struct xcb_xkb_bell_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	xcb_xkb_bell_class_spec_t bellClass; /**<  */
	xcb_xkb_id_spec_t bellID; /**<  */
	byte percent; /**<  */
	ubyte forceSound; /**<  */
	ubyte eventOnly; /**<  */
	ubyte pad0; /**<  */
	short pitch; /**<  */
	short duration; /**<  */
	ubyte[2] pad1; /**<  */
	xcb_atom_t name; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_xkb_get_state_cookie_t
 **/
struct xcb_xkb_get_state_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_state. */
enum XCB_XKB_GET_STATE = 4;

/**
 * @brief xcb_xkb_get_state_request_t
 **/
struct xcb_xkb_get_state_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_get_state_reply_t
 **/
struct xcb_xkb_get_state_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte mods; /**<  */
	ubyte baseMods; /**<  */
	ubyte latchedMods; /**<  */
	ubyte lockedMods; /**<  */
	ubyte group; /**<  */
	ubyte lockedGroup; /**<  */
	short baseGroup; /**<  */
	short latchedGroup; /**<  */
	ubyte compatState; /**<  */
	ubyte grabMods; /**<  */
	ubyte compatGrabMods; /**<  */
	ubyte lookupMods; /**<  */
	ubyte compatLookupMods; /**<  */
	ubyte pad0; /**<  */
	ushort ptrBtnState; /**<  */
	ubyte[6] pad1; /**<  */
}

/** Opcode for xcb_xkb_latch_lock_state. */
enum XCB_XKB_LATCH_LOCK_STATE = 5;

/**
 * @brief xcb_xkb_latch_lock_state_request_t
 **/
struct xcb_xkb_latch_lock_state_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte affectModLocks; /**<  */
	ubyte modLocks; /**<  */
	ubyte lockGroup; /**<  */
	ubyte groupLock; /**<  */
	ubyte affectModLatches; /**<  */
	ubyte pad0; /**<  */
	ubyte pad1; /**<  */
	ubyte latchGroup; /**<  */
	ushort groupLatch; /**<  */
}

/**
 * @brief xcb_xkb_get_controls_cookie_t
 **/
struct xcb_xkb_get_controls_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_controls. */
enum XCB_XKB_GET_CONTROLS = 6;

/**
 * @brief xcb_xkb_get_controls_request_t
 **/
struct xcb_xkb_get_controls_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_get_controls_reply_t
 **/
struct xcb_xkb_get_controls_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte mouseKeysDfltBtn; /**<  */
	ubyte numGroups; /**<  */
	ubyte groupsWrap; /**<  */
	ubyte internalModsMask; /**<  */
	ubyte ignoreLockModsMask; /**<  */
	ubyte internalModsRealMods; /**<  */
	ubyte ignoreLockModsRealMods; /**<  */
	ubyte pad0; /**<  */
	ushort internalModsVmods; /**<  */
	ushort ignoreLockModsVmods; /**<  */
	ushort repeatDelay; /**<  */
	ushort repeatInterval; /**<  */
	ushort slowKeysDelay; /**<  */
	ushort debounceDelay; /**<  */
	ushort mouseKeysDelay; /**<  */
	ushort mouseKeysInterval; /**<  */
	ushort mouseKeysTimeToMax; /**<  */
	ushort mouseKeysMaxSpeed; /**<  */
	short mouseKeysCurve; /**<  */
	ushort accessXOption; /**<  */
	ushort accessXTimeout; /**<  */
	ushort accessXTimeoutOptionsMask; /**<  */
	ushort accessXTimeoutOptionsValues; /**<  */
	ubyte[2] pad1; /**<  */
	uint accessXTimeoutMask; /**<  */
	uint accessXTimeoutValues; /**<  */
	uint enabledControls; /**<  */
	ubyte[32] perKeyRepeat; /**<  */
}

/** Opcode for xcb_xkb_set_controls. */
enum XCB_XKB_SET_CONTROLS = 7;

/**
 * @brief xcb_xkb_set_controls_request_t
 **/
struct xcb_xkb_set_controls_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte affectInternalRealMods; /**<  */
	ubyte internalRealMods; /**<  */
	ubyte affectIgnoreLockRealMods; /**<  */
	ubyte ignoreLockRealMods; /**<  */
	ushort affectInternalVirtualMods; /**<  */
	ushort internalVirtualMods; /**<  */
	ushort affectIgnoreLockVirtualMods; /**<  */
	ushort ignoreLockVirtualMods; /**<  */
	ubyte mouseKeysDfltBtn; /**<  */
	ubyte groupsWrap; /**<  */
	ushort accessXOptions; /**<  */
	ubyte[2] pad0; /**<  */
	uint affectEnabledControls; /**<  */
	uint enabledControls; /**<  */
	uint changeControls; /**<  */
	ushort repeatDelay; /**<  */
	ushort repeatInterval; /**<  */
	ushort slowKeysDelay; /**<  */
	ushort debounceDelay; /**<  */
	ushort mouseKeysDelay; /**<  */
	ushort mouseKeysInterval; /**<  */
	ushort mouseKeysTimeToMax; /**<  */
	ushort mouseKeysMaxSpeed; /**<  */
	short mouseKeysCurve; /**<  */
	ushort accessXTimeout; /**<  */
	uint accessXTimeoutMask; /**<  */
	uint accessXTimeoutValues; /**<  */
	ushort accessXTimeoutOptionsMask; /**<  */
	ushort accessXTimeoutOptionsValues; /**<  */
	ubyte[32] perKeyRepeat; /**<  */
}

/**
 * @brief xcb_xkb_get_map_cookie_t
 **/
struct xcb_xkb_get_map_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_map. */
enum XCB_XKB_GET_MAP = 8;

/**
 * @brief xcb_xkb_get_map_request_t
 **/
struct xcb_xkb_get_map_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ushort full; /**<  */
	ushort partial; /**<  */
	ubyte firstType; /**<  */
	ubyte nTypes; /**<  */
	xcb_keycode_t firstKeySym; /**<  */
	ubyte nKeySyms; /**<  */
	xcb_keycode_t firstKeyAction; /**<  */
	ubyte nKeyActions; /**<  */
	xcb_keycode_t firstKeyBehavior; /**<  */
	ubyte nKeyBehaviors; /**<  */
	ushort virtualMods; /**<  */
	xcb_keycode_t firstKeyExplicit; /**<  */
	ubyte nKeyExplicit; /**<  */
	xcb_keycode_t firstModMapKey; /**<  */
	ubyte nModMapKeys; /**<  */
	xcb_keycode_t firstVModMapKey; /**<  */
	ubyte nVModMapKeys; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_get_map_map_t
 **/
struct xcb_xkb_get_map_map_t {
	xcb_xkb_key_type_t* types_rtrn; /**<  */
	xcb_xkb_key_sym_map_t* syms_rtrn; /**<  */
	ubyte* acts_rtrn_count; /**<  */
	ubyte* pad2; /**<  */
	xcb_xkb_action_t* acts_rtrn_acts; /**<  */
	xcb_xkb_set_behavior_t* behaviors_rtrn; /**<  */
	ubyte* vmods_rtrn; /**<  */
	ubyte* pad3; /**<  */
	xcb_xkb_set_explicit_t* explicit_rtrn; /**<  */
	ubyte* pad4; /**<  */
	xcb_xkb_key_mod_map_t* modmap_rtrn; /**<  */
	ubyte* pad5; /**<  */
	xcb_xkb_key_v_mod_map_t* vmodmap_rtrn; /**<  */
}

/**
 * @brief xcb_xkb_get_map_reply_t
 **/
struct xcb_xkb_get_map_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_keycode_t minKeyCode; /**<  */
	xcb_keycode_t maxKeyCode; /**<  */
	ushort present; /**<  */
	ubyte firstType; /**<  */
	ubyte nTypes; /**<  */
	ubyte totalTypes; /**<  */
	xcb_keycode_t firstKeySym; /**<  */
	ushort totalSyms; /**<  */
	ubyte nKeySyms; /**<  */
	xcb_keycode_t firstKeyAction; /**<  */
	ushort totalActions; /**<  */
	ubyte nKeyActions; /**<  */
	xcb_keycode_t firstKeyBehavior; /**<  */
	ubyte nKeyBehaviors; /**<  */
	ubyte totalKeyBehaviors; /**<  */
	xcb_keycode_t firstKeyExplicit; /**<  */
	ubyte nKeyExplicit; /**<  */
	ubyte totalKeyExplicit; /**<  */
	xcb_keycode_t firstModMapKey; /**<  */
	ubyte nModMapKeys; /**<  */
	ubyte totalModMapKeys; /**<  */
	xcb_keycode_t firstVModMapKey; /**<  */
	ubyte nVModMapKeys; /**<  */
	ubyte totalVModMapKeys; /**<  */
	ubyte pad1; /**<  */
	ushort virtualMods; /**<  */
}

/**
 * @brief xcb_xkb_set_map_values_t
 **/
struct xcb_xkb_set_map_values_t {
	xcb_xkb_set_key_type_t* types; /**<  */
	xcb_xkb_key_sym_map_t* syms; /**<  */
	ubyte* actionsCount; /**<  */
	xcb_xkb_action_t* actions; /**<  */
	xcb_xkb_set_behavior_t* behaviors; /**<  */
	ubyte* vmods; /**<  */
	xcb_xkb_set_explicit_t* explicit; /**<  */
	xcb_xkb_key_mod_map_t* modmap; /**<  */
	xcb_xkb_key_v_mod_map_t* vmodmap; /**<  */
}

/** Opcode for xcb_xkb_set_map. */
enum XCB_XKB_SET_MAP = 9;

/**
 * @brief xcb_xkb_set_map_request_t
 **/
struct xcb_xkb_set_map_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ushort present; /**<  */
	ushort flags; /**<  */
	xcb_keycode_t minKeyCode; /**<  */
	xcb_keycode_t maxKeyCode; /**<  */
	ubyte firstType; /**<  */
	ubyte nTypes; /**<  */
	xcb_keycode_t firstKeySym; /**<  */
	ubyte nKeySyms; /**<  */
	ushort totalSyms; /**<  */
	xcb_keycode_t firstKeyAction; /**<  */
	ubyte nKeyActions; /**<  */
	ushort totalActions; /**<  */
	xcb_keycode_t firstKeyBehavior; /**<  */
	ubyte nKeyBehaviors; /**<  */
	ubyte totalKeyBehaviors; /**<  */
	xcb_keycode_t firstKeyExplicit; /**<  */
	ubyte nKeyExplicit; /**<  */
	ubyte totalKeyExplicit; /**<  */
	xcb_keycode_t firstModMapKey; /**<  */
	ubyte nModMapKeys; /**<  */
	ubyte totalModMapKeys; /**<  */
	xcb_keycode_t firstVModMapKey; /**<  */
	ubyte nVModMapKeys; /**<  */
	ubyte totalVModMapKeys; /**<  */
	ushort virtualMods; /**<  */
}

/**
 * @brief xcb_xkb_get_compat_map_cookie_t
 **/
struct xcb_xkb_get_compat_map_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_compat_map. */
enum XCB_XKB_GET_COMPAT_MAP = 10;

/**
 * @brief xcb_xkb_get_compat_map_request_t
 **/
struct xcb_xkb_get_compat_map_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte groups; /**<  */
	ubyte getAllSI; /**<  */
	ushort firstSI; /**<  */
	ushort nSI; /**<  */
}

/**
 * @brief xcb_xkb_get_compat_map_reply_t
 **/
struct xcb_xkb_get_compat_map_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte groupsRtrn; /**<  */
	ubyte pad0; /**<  */
	ushort firstSIRtrn; /**<  */
	ushort nSIRtrn; /**<  */
	ushort nTotalSI; /**<  */
	ubyte[16] pad1; /**<  */
}

/** Opcode for xcb_xkb_set_compat_map. */
enum XCB_XKB_SET_COMPAT_MAP = 11;

/**
 * @brief xcb_xkb_set_compat_map_request_t
 **/
struct xcb_xkb_set_compat_map_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte pad0; /**<  */
	ubyte recomputeActions; /**<  */
	ubyte truncateSI; /**<  */
	ubyte groups; /**<  */
	ushort firstSI; /**<  */
	ushort nSI; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * @brief xcb_xkb_get_indicator_state_cookie_t
 **/
struct xcb_xkb_get_indicator_state_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_indicator_state. */
enum XCB_XKB_GET_INDICATOR_STATE = 12;

/**
 * @brief xcb_xkb_get_indicator_state_request_t
 **/
struct xcb_xkb_get_indicator_state_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_xkb_get_indicator_state_reply_t
 **/
struct xcb_xkb_get_indicator_state_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint state; /**<  */
	ubyte[20] pad0; /**<  */
}

/**
 * @brief xcb_xkb_get_indicator_map_cookie_t
 **/
struct xcb_xkb_get_indicator_map_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_indicator_map. */
enum XCB_XKB_GET_INDICATOR_MAP = 13;

/**
 * @brief xcb_xkb_get_indicator_map_request_t
 **/
struct xcb_xkb_get_indicator_map_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte[2] pad0; /**<  */
	uint which; /**<  */
}

/**
 * @brief xcb_xkb_get_indicator_map_reply_t
 **/
struct xcb_xkb_get_indicator_map_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint which; /**<  */
	uint realIndicators; /**<  */
	ubyte nIndicators; /**<  */
	ubyte[15] pad0; /**<  */
}

/** Opcode for xcb_xkb_set_indicator_map. */
enum XCB_XKB_SET_INDICATOR_MAP = 14;

/**
 * @brief xcb_xkb_set_indicator_map_request_t
 **/
struct xcb_xkb_set_indicator_map_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte[2] pad0; /**<  */
	uint which; /**<  */
}

/**
 * @brief xcb_xkb_get_named_indicator_cookie_t
 **/
struct xcb_xkb_get_named_indicator_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_named_indicator. */
enum XCB_XKB_GET_NAMED_INDICATOR = 15;

/**
 * @brief xcb_xkb_get_named_indicator_request_t
 **/
struct xcb_xkb_get_named_indicator_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	xcb_xkb_led_class_spec_t ledClass; /**<  */
	xcb_xkb_id_spec_t ledID; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_atom_t indicator; /**<  */
}

/**
 * @brief xcb_xkb_get_named_indicator_reply_t
 **/
struct xcb_xkb_get_named_indicator_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_atom_t indicator; /**<  */
	ubyte found; /**<  */
	ubyte on; /**<  */
	ubyte realIndicator; /**<  */
	ubyte ndx; /**<  */
	ubyte map_flags; /**<  */
	ubyte map_whichGroups; /**<  */
	ubyte map_groups; /**<  */
	ubyte map_whichMods; /**<  */
	ubyte map_mods; /**<  */
	ubyte map_realMods; /**<  */
	ushort map_vmod; /**<  */
	uint map_ctrls; /**<  */
	ubyte supported; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_xkb_set_named_indicator. */
enum XCB_XKB_SET_NAMED_INDICATOR = 16;

/**
 * @brief xcb_xkb_set_named_indicator_request_t
 **/
struct xcb_xkb_set_named_indicator_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	xcb_xkb_led_class_spec_t ledClass; /**<  */
	xcb_xkb_id_spec_t ledID; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_atom_t indicator; /**<  */
	ubyte setState; /**<  */
	ubyte on; /**<  */
	ubyte setMap; /**<  */
	ubyte createMap; /**<  */
	ubyte pad1; /**<  */
	ubyte map_flags; /**<  */
	ubyte map_whichGroups; /**<  */
	ubyte map_groups; /**<  */
	ubyte map_whichMods; /**<  */
	ubyte map_realMods; /**<  */
	ushort map_vmods; /**<  */
	uint map_ctrls; /**<  */
}

/**
 * @brief xcb_xkb_get_names_cookie_t
 **/
struct xcb_xkb_get_names_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_names. */
enum XCB_XKB_GET_NAMES = 17;

/**
 * @brief xcb_xkb_get_names_request_t
 **/
struct xcb_xkb_get_names_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte[2] pad0; /**<  */
	uint which; /**<  */
}

/**
 * @brief xcb_xkb_get_names_value_list_t
 **/
struct xcb_xkb_get_names_value_list_t {
	xcb_atom_t keycodesName; /**<  */
	xcb_atom_t geometryName; /**<  */
	xcb_atom_t symbolsName; /**<  */
	xcb_atom_t physSymbolsName; /**<  */
	xcb_atom_t typesName; /**<  */
	xcb_atom_t compatName; /**<  */
	xcb_atom_t* typeNames; /**<  */
	ubyte* nLevelsPerType; /**<  */
	ubyte* alignment_pad; /**<  */
	xcb_atom_t* ktLevelNames; /**<  */
	xcb_atom_t* indicatorNames; /**<  */
	xcb_atom_t* virtualModNames; /**<  */
	xcb_atom_t* groups; /**<  */
	xcb_xkb_key_name_t* keyNames; /**<  */
	xcb_xkb_key_alias_t* keyAliases; /**<  */
	xcb_atom_t* radioGroupNames; /**<  */
}

/**
 * @brief xcb_xkb_get_names_reply_t
 **/
struct xcb_xkb_get_names_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint which; /**<  */
	xcb_keycode_t minKeyCode; /**<  */
	xcb_keycode_t maxKeyCode; /**<  */
	ubyte nTypes; /**<  */
	ubyte groupNames; /**<  */
	ushort virtualMods; /**<  */
	xcb_keycode_t firstKey; /**<  */
	ubyte nKeys; /**<  */
	uint indicators; /**<  */
	ubyte nRadioGroups; /**<  */
	ubyte nKeyAliases; /**<  */
	ushort nKTLevels; /**<  */
	ubyte[4] pad0; /**<  */
}

/**
 * @brief xcb_xkb_set_names_values_t
 **/
struct xcb_xkb_set_names_values_t {
	xcb_atom_t keycodesName; /**<  */
	xcb_atom_t geometryName; /**<  */
	xcb_atom_t symbolsName; /**<  */
	xcb_atom_t physSymbolsName; /**<  */
	xcb_atom_t typesName; /**<  */
	xcb_atom_t compatName; /**<  */
	xcb_atom_t* typeNames; /**<  */
	ubyte* nLevelsPerType; /**<  */
	xcb_atom_t* ktLevelNames; /**<  */
	xcb_atom_t* indicatorNames; /**<  */
	xcb_atom_t* virtualModNames; /**<  */
	xcb_atom_t* groups; /**<  */
	xcb_xkb_key_name_t* keyNames; /**<  */
	xcb_xkb_key_alias_t* keyAliases; /**<  */
	xcb_atom_t* radioGroupNames; /**<  */
}

/** Opcode for xcb_xkb_set_names. */
enum XCB_XKB_SET_NAMES = 18;

/**
 * @brief xcb_xkb_set_names_request_t
 **/
struct xcb_xkb_set_names_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ushort virtualMods; /**<  */
	uint which; /**<  */
	ubyte firstType; /**<  */
	ubyte nTypes; /**<  */
	ubyte firstKTLevelt; /**<  */
	ubyte nKTLevels; /**<  */
	uint indicators; /**<  */
	ubyte groupNames; /**<  */
	ubyte nRadioGroups; /**<  */
	xcb_keycode_t firstKey; /**<  */
	ubyte nKeys; /**<  */
	ubyte nKeyAliases; /**<  */
	ubyte pad0; /**<  */
	ushort totalKTLevelNames; /**<  */
}

/**
 * @brief xcb_xkb_per_client_flags_cookie_t
 **/
struct xcb_xkb_per_client_flags_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_per_client_flags. */
enum XCB_XKB_PER_CLIENT_FLAGS = 21;

/**
 * @brief xcb_xkb_per_client_flags_request_t
 **/
struct xcb_xkb_per_client_flags_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte[2] pad0; /**<  */
	uint change; /**<  */
	uint value; /**<  */
	uint ctrlsToChange; /**<  */
	uint autoCtrls; /**<  */
	uint autoCtrlsValues; /**<  */
}

/**
 * @brief xcb_xkb_per_client_flags_reply_t
 **/
struct xcb_xkb_per_client_flags_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint supported; /**<  */
	uint value; /**<  */
	uint autoCtrls; /**<  */
	uint autoCtrlsValues; /**<  */
	ubyte[8] pad0; /**<  */
}

/**
 * @brief xcb_xkb_list_components_cookie_t
 **/
struct xcb_xkb_list_components_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_list_components. */
enum XCB_XKB_LIST_COMPONENTS = 22;

/**
 * @brief xcb_xkb_list_components_request_t
 **/
struct xcb_xkb_list_components_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ushort maxNames; /**<  */
}

/**
 * @brief xcb_xkb_list_components_reply_t
 **/
struct xcb_xkb_list_components_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort nKeymaps; /**<  */
	ushort nKeycodes; /**<  */
	ushort nTypes; /**<  */
	ushort nCompatMaps; /**<  */
	ushort nSymbols; /**<  */
	ushort nGeometries; /**<  */
	ushort extra; /**<  */
	ubyte[10] pad0; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_cookie_t
 **/
struct xcb_xkb_get_kbd_by_name_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_kbd_by_name. */
enum XCB_XKB_GET_KBD_BY_NAME = 23;

/**
 * @brief xcb_xkb_get_kbd_by_name_request_t
 **/
struct xcb_xkb_get_kbd_by_name_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ushort need; /**<  */
	ushort want; /**<  */
	ubyte load; /**<  */
	ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_replies_types_map_t
 **/
struct xcb_xkb_get_kbd_by_name_replies_types_map_t {
	xcb_xkb_key_type_t* types_rtrn; /**<  */
	xcb_xkb_key_sym_map_t* syms_rtrn; /**<  */
	ubyte* acts_rtrn_count; /**<  */
	xcb_xkb_action_t* acts_rtrn_acts; /**<  */
	xcb_xkb_set_behavior_t* behaviors_rtrn; /**<  */
	ubyte* vmods_rtrn; /**<  */
	xcb_xkb_set_explicit_t* explicit_rtrn; /**<  */
	xcb_xkb_key_mod_map_t* modmap_rtrn; /**<  */
	xcb_xkb_key_v_mod_map_t* vmodmap_rtrn; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t
 **/
struct xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t {
	xcb_atom_t keycodesName; /**<  */
	xcb_atom_t geometryName; /**<  */
	xcb_atom_t symbolsName; /**<  */
	xcb_atom_t physSymbolsName; /**<  */
	xcb_atom_t typesName; /**<  */
	xcb_atom_t compatName; /**<  */
	xcb_atom_t* typeNames; /**<  */
	ubyte* nLevelsPerType; /**<  */
	xcb_atom_t* ktLevelNames; /**<  */
	xcb_atom_t* indicatorNames; /**<  */
	xcb_atom_t* virtualModNames; /**<  */
	xcb_atom_t* groups; /**<  */
	xcb_xkb_key_name_t* keyNames; /**<  */
	xcb_xkb_key_alias_t* keyAliases; /**<  */
	xcb_atom_t* radioGroupNames; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_replies_t
 **/
struct xcb_xkb_get_kbd_by_name_replies_t {
	struct _types {
		ubyte getmap_type; /**<  */
		ubyte typeDeviceID; /**<  */
		ushort getmap_sequence; /**<  */
		uint getmap_length; /**<  */
		ubyte[2] pad1; /**<  */
		xcb_keycode_t typeMinKeyCode; /**<  */
		xcb_keycode_t typeMaxKeyCode; /**<  */
		ushort present; /**<  */
		ubyte firstType; /**<  */
		ubyte nTypes; /**<  */
		ubyte totalTypes; /**<  */
		xcb_keycode_t firstKeySym; /**<  */
		ushort totalSyms; /**<  */
		ubyte nKeySyms; /**<  */
		xcb_keycode_t firstKeyAction; /**<  */
		ushort totalActions; /**<  */
		ubyte nKeyActions; /**<  */
		xcb_keycode_t firstKeyBehavior; /**<  */
		ubyte nKeyBehaviors; /**<  */
		ubyte totalKeyBehaviors; /**<  */
		xcb_keycode_t firstKeyExplicit; /**<  */
		ubyte nKeyExplicit; /**<  */
		ubyte totalKeyExplicit; /**<  */
		xcb_keycode_t firstModMapKey; /**<  */
		ubyte nModMapKeys; /**<  */
		ubyte totalModMapKeys; /**<  */
		xcb_keycode_t firstVModMapKey; /**<  */
		ubyte nVModMapKeys; /**<  */
		ubyte totalVModMapKeys; /**<  */
		ubyte pad2; /**<  */
		ushort virtualMods; /**<  */
		xcb_xkb_get_kbd_by_name_replies_types_map_t map; /**<  */
	}

	_types types;
	struct _compat_map {
		ubyte compatmap_type; /**<  */
		ubyte compatDeviceID; /**<  */
		ushort compatmap_sequence; /**<  */
		uint compatmap_length; /**<  */
		ubyte groupsRtrn; /**<  */
		ubyte pad3; /**<  */
		ushort firstSIRtrn; /**<  */
		ushort nSIRtrn; /**<  */
		ushort nTotalSI; /**<  */
		ubyte[16] pad4; /**<  */
		xcb_xkb_sym_interpret_t* si_rtrn; /**<  */
		xcb_xkb_mod_def_t* group_rtrn; /**<  */
	}

	_compat_map compat_map;
	struct _indicator_maps {
		ubyte indicatormap_type; /**<  */
		ubyte indicatorDeviceID; /**<  */
		ushort indicatormap_sequence; /**<  */
		uint indicatormap_length; /**<  */
		uint which; /**<  */
		uint realIndicators; /**<  */
		ubyte nIndicators; /**<  */
		ubyte[15] pad5; /**<  */
		xcb_xkb_indicator_map_t* maps; /**<  */
	}

	_indicator_maps indicator_maps;
	struct _key_names {
		ubyte keyname_type; /**<  */
		ubyte keyDeviceID; /**<  */
		ushort keyname_sequence; /**<  */
		uint keyname_length; /**<  */
		uint which; /**<  */
		xcb_keycode_t keyMinKeyCode; /**<  */
		xcb_keycode_t keyMaxKeyCode; /**<  */
		ubyte nTypes; /**<  */
		ubyte groupNames; /**<  */
		ushort virtualMods; /**<  */
		xcb_keycode_t firstKey; /**<  */
		ubyte nKeys; /**<  */
		uint indicators; /**<  */
		ubyte nRadioGroups; /**<  */
		ubyte nKeyAliases; /**<  */
		ushort nKTLevels; /**<  */
		ubyte[4] pad6; /**<  */
		xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t valueList; /**<  */
	}

	_key_names key_names;
	struct _geometry {
		ubyte geometry_type; /**<  */
		ubyte geometryDeviceID; /**<  */
		ushort geometry_sequence; /**<  */
		uint geometry_length; /**<  */
		xcb_atom_t name; /**<  */
		ubyte geometryFound; /**<  */
		ubyte pad7; /**<  */
		ushort widthMM; /**<  */
		ushort heightMM; /**<  */
		ushort nProperties; /**<  */
		ushort nColors; /**<  */
		ushort nShapes; /**<  */
		ushort nSections; /**<  */
		ushort nDoodads; /**<  */
		ushort nKeyAliases; /**<  */
		ubyte baseColorNdx; /**<  */
		ubyte labelColorNdx; /**<  */
		xcb_xkb_counted_string_16_t* labelFont; /**<  */
	}

	_geometry geometry;
}

xcb_xkb_get_kbd_by_name_replies_types_map_t* xcb_xkb_get_kbd_by_name_replies_types_map(const xcb_xkb_get_kbd_by_name_replies_t* R /**< */ );

/**
 * @brief xcb_xkb_get_kbd_by_name_reply_t
 **/
struct xcb_xkb_get_kbd_by_name_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_keycode_t minKeyCode; /**<  */
	xcb_keycode_t maxKeyCode; /**<  */
	ubyte loaded; /**<  */
	ubyte newKeyboard; /**<  */
	ushort found; /**<  */
	ushort reported; /**<  */
	ubyte[16] pad0; /**<  */
}

/**
 * @brief xcb_xkb_get_device_info_cookie_t
 **/
struct xcb_xkb_get_device_info_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_device_info. */
enum XCB_XKB_GET_DEVICE_INFO = 24;

/**
 * @brief xcb_xkb_get_device_info_request_t
 **/
struct xcb_xkb_get_device_info_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ushort wanted; /**<  */
	ubyte allButtons; /**<  */
	ubyte firstButton; /**<  */
	ubyte nButtons; /**<  */
	ubyte pad0; /**<  */
	xcb_xkb_led_class_spec_t ledClass; /**<  */
	xcb_xkb_id_spec_t ledID; /**<  */
}

/**
 * @brief xcb_xkb_get_device_info_reply_t
 **/
struct xcb_xkb_get_device_info_reply_t {
	ubyte response_type; /**<  */
	ubyte deviceID; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort present; /**<  */
	ushort supported; /**<  */
	ushort unsupported; /**<  */
	ushort nDeviceLedFBs; /**<  */
	ubyte firstBtnWanted; /**<  */
	ubyte nBtnsWanted; /**<  */
	ubyte firstBtnRtrn; /**<  */
	ubyte nBtnsRtrn; /**<  */
	ubyte totalBtns; /**<  */
	ubyte hasOwnState; /**<  */
	ushort dfltKbdFB; /**<  */
	ushort dfltLedFB; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_atom_t devType; /**<  */
	ushort nameLen; /**<  */
}

/** Opcode for xcb_xkb_set_device_info. */
enum XCB_XKB_SET_DEVICE_INFO = 25;

/**
 * @brief xcb_xkb_set_device_info_request_t
 **/
struct xcb_xkb_set_device_info_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xkb_device_spec_t deviceSpec; /**<  */
	ubyte firstBtn; /**<  */
	ubyte nBtns; /**<  */
	ushort change; /**<  */
	ushort nDeviceLedFBs; /**<  */
}

/**
 * @brief xcb_xkb_set_debugging_flags_cookie_t
 **/
struct xcb_xkb_set_debugging_flags_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xkb_set_debugging_flags. */
enum XCB_XKB_SET_DEBUGGING_FLAGS = 101;

/**
 * @brief xcb_xkb_set_debugging_flags_request_t
 **/
struct xcb_xkb_set_debugging_flags_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort msgLength; /**<  */
	ubyte[2] pad0; /**<  */
	uint affectFlags; /**<  */
	uint flags; /**<  */
	uint affectCtrls; /**<  */
	uint ctrls; /**<  */
}

/**
 * @brief xcb_xkb_set_debugging_flags_reply_t
 **/
struct xcb_xkb_set_debugging_flags_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint currentFlags; /**<  */
	uint currentCtrls; /**<  */
	uint supportedFlags; /**<  */
	uint supportedCtrls; /**<  */
	ubyte[8] pad1; /**<  */
}

/** Opcode for xcb_xkb_new_keyboard_notify. */
enum XCB_XKB_NEW_KEYBOARD_NOTIFY = 0;

/**
 * @brief xcb_xkb_new_keyboard_notify_event_t
 **/
struct xcb_xkb_new_keyboard_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	ubyte oldDeviceID; /**<  */
	xcb_keycode_t minKeyCode; /**<  */
	xcb_keycode_t maxKeyCode; /**<  */
	xcb_keycode_t oldMinKeyCode; /**<  */
	xcb_keycode_t oldMaxKeyCode; /**<  */
	ubyte requestMajor; /**<  */
	ubyte requestMinor; /**<  */
	ushort changed; /**<  */
	ubyte[14] pad0; /**<  */
}

/** Opcode for xcb_xkb_map_notify. */
enum XCB_XKB_MAP_NOTIFY = 1;

/**
 * @brief xcb_xkb_map_notify_event_t
 **/
struct xcb_xkb_map_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	ubyte ptrBtnActions; /**<  */
	ushort changed; /**<  */
	xcb_keycode_t minKeyCode; /**<  */
	xcb_keycode_t maxKeyCode; /**<  */
	ubyte firstType; /**<  */
	ubyte nTypes; /**<  */
	xcb_keycode_t firstKeySym; /**<  */
	ubyte nKeySyms; /**<  */
	xcb_keycode_t firstKeyAct; /**<  */
	ubyte nKeyActs; /**<  */
	xcb_keycode_t firstKeyBehavior; /**<  */
	ubyte nKeyBehavior; /**<  */
	xcb_keycode_t firstKeyExplicit; /**<  */
	ubyte nKeyExplicit; /**<  */
	xcb_keycode_t firstModMapKey; /**<  */
	ubyte nModMapKeys; /**<  */
	xcb_keycode_t firstVModMapKey; /**<  */
	ubyte nVModMapKeys; /**<  */
	ushort virtualMods; /**<  */
	ubyte[2] pad0; /**<  */
}

/** Opcode for xcb_xkb_state_notify. */
enum XCB_XKB_STATE_NOTIFY = 2;

/**
 * @brief xcb_xkb_state_notify_event_t
 **/
struct xcb_xkb_state_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	ubyte mods; /**<  */
	ubyte baseMods; /**<  */
	ubyte latchedMods; /**<  */
	ubyte lockedMods; /**<  */
	ubyte group; /**<  */
	short baseGroup; /**<  */
	short latchedGroup; /**<  */
	ubyte lockedGroup; /**<  */
	ubyte compatState; /**<  */
	ubyte grabMods; /**<  */
	ubyte compatGrabMods; /**<  */
	ubyte lookupMods; /**<  */
	ubyte compatLoockupMods; /**<  */
	ushort ptrBtnState; /**<  */
	ushort changed; /**<  */
	xcb_keycode_t keycode; /**<  */
	ubyte eventType; /**<  */
	ubyte requestMajor; /**<  */
	ubyte requestMinor; /**<  */
}

/** Opcode for xcb_xkb_controls_notify. */
enum XCB_XKB_CONTROLS_NOTIFY = 3;

/**
 * @brief xcb_xkb_controls_notify_event_t
 **/
struct xcb_xkb_controls_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	ubyte numGroups; /**<  */
	ubyte[2] pad0; /**<  */
	uint changedControls; /**<  */
	uint enabledControls; /**<  */
	uint enabledControlChanges; /**<  */
	xcb_keycode_t keycode; /**<  */
	ubyte eventType; /**<  */
	ubyte requestMajor; /**<  */
	ubyte requestMinor; /**<  */
	ubyte[4] pad1; /**<  */
}

/** Opcode for xcb_xkb_indicator_state_notify. */
enum XCB_XKB_INDICATOR_STATE_NOTIFY = 4;

/**
 * @brief xcb_xkb_indicator_state_notify_event_t
 **/
struct xcb_xkb_indicator_state_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	ubyte[3] pad0; /**<  */
	uint state; /**<  */
	uint stateChanged; /**<  */
	ubyte[12] pad1; /**<  */
}

/** Opcode for xcb_xkb_indicator_map_notify. */
enum XCB_XKB_INDICATOR_MAP_NOTIFY = 5;

/**
 * @brief xcb_xkb_indicator_map_notify_event_t
 **/
struct xcb_xkb_indicator_map_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	ubyte[3] pad0; /**<  */
	uint state; /**<  */
	uint mapChanged; /**<  */
	ubyte[12] pad1; /**<  */
}

/** Opcode for xcb_xkb_names_notify. */
enum XCB_XKB_NAMES_NOTIFY = 6;

/**
 * @brief xcb_xkb_names_notify_event_t
 **/
struct xcb_xkb_names_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	ubyte pad0; /**<  */
	ushort changed; /**<  */
	ubyte firstType; /**<  */
	ubyte nTypes; /**<  */
	ubyte firstLevelName; /**<  */
	ubyte nLevelNames; /**<  */
	ubyte pad1; /**<  */
	ubyte nRadioGroups; /**<  */
	ubyte nKeyAliases; /**<  */
	ubyte changedGroupNames; /**<  */
	ushort changedVirtualMods; /**<  */
	xcb_keycode_t firstKey; /**<  */
	ubyte nKeys; /**<  */
	uint changedIndicators; /**<  */
	ubyte[4] pad2; /**<  */
}

/** Opcode for xcb_xkb_compat_map_notify. */
enum XCB_XKB_COMPAT_MAP_NOTIFY = 7;

/**
 * @brief xcb_xkb_compat_map_notify_event_t
 **/
struct xcb_xkb_compat_map_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	ubyte changedGroups; /**<  */
	ushort firstSI; /**<  */
	ushort nSI; /**<  */
	ushort nTotalSI; /**<  */
	ubyte[16] pad0; /**<  */
}

/** Opcode for xcb_xkb_bell_notify. */
enum XCB_XKB_BELL_NOTIFY = 8;

/**
 * @brief xcb_xkb_bell_notify_event_t
 **/
struct xcb_xkb_bell_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	ubyte bellClass; /**<  */
	ubyte bellID; /**<  */
	ubyte percent; /**<  */
	ushort pitch; /**<  */
	ushort duration; /**<  */
	xcb_atom_t name; /**<  */
	xcb_window_t window; /**<  */
	ubyte eventOnly; /**<  */
	ubyte[7] pad0; /**<  */
}

/** Opcode for xcb_xkb_action_message. */
enum XCB_XKB_ACTION_MESSAGE = 9;

/**
 * @brief xcb_xkb_action_message_event_t
 **/
struct xcb_xkb_action_message_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	xcb_keycode_t keycode; /**<  */
	ubyte press; /**<  */
	ubyte keyEventFollows; /**<  */
	ubyte mods; /**<  */
	ubyte group; /**<  */
	xcb_xkb_string8_t[8] message; /**<  */
	ubyte[10] pad0; /**<  */
}

/** Opcode for xcb_xkb_access_x_notify. */
enum XCB_XKB_ACCESS_X_NOTIFY = 10;

/**
 * @brief xcb_xkb_access_x_notify_event_t
 **/
struct xcb_xkb_access_x_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	xcb_keycode_t keycode; /**<  */
	ushort detailt; /**<  */
	ushort slowKeysDelay; /**<  */
	ushort debounceDelay; /**<  */
	ubyte[16] pad0; /**<  */
}

/** Opcode for xcb_xkb_extension_device_notify. */
enum XCB_XKB_EXTENSION_DEVICE_NOTIFY = 11;

/**
 * @brief xcb_xkb_extension_device_notify_event_t
 **/
struct xcb_xkb_extension_device_notify_event_t {
	ubyte response_type; /**<  */
	ubyte xkbType; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	ubyte deviceID; /**<  */
	ubyte pad0; /**<  */
	ushort reason; /**<  */
	ushort ledClass; /**<  */
	ushort ledID; /**<  */
	uint ledsDefined; /**<  */
	uint ledState; /**<  */
	ubyte firstButton; /**<  */
	ubyte nButtons; /**<  */
	ushort supported; /**<  */
	ushort unsupported; /**<  */
	ubyte[2] pad1; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_device_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_device_spec_t)
 */
void xcb_xkb_device_spec_next(xcb_xkb_device_spec_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_device_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_device_spec_end(xcb_xkb_device_spec_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_led_class_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_led_class_spec_t)
 */
void xcb_xkb_led_class_spec_next(xcb_xkb_led_class_spec_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_led_class_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_led_class_spec_end(xcb_xkb_led_class_spec_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_bell_class_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_bell_class_spec_t)
 */
void xcb_xkb_bell_class_spec_next(xcb_xkb_bell_class_spec_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_bell_class_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_bell_class_spec_end(xcb_xkb_bell_class_spec_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_id_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_id_spec_t)
 */
void xcb_xkb_id_spec_next(xcb_xkb_id_spec_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_id_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_id_spec_end(xcb_xkb_id_spec_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_indicator_map_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_indicator_map_t)
 */
void xcb_xkb_indicator_map_next(xcb_xkb_indicator_map_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_indicator_map_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_indicator_map_end(xcb_xkb_indicator_map_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_mod_def_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_mod_def_t)
 */
void xcb_xkb_mod_def_next(xcb_xkb_mod_def_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_mod_def_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_mod_def_end(xcb_xkb_mod_def_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_name_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_name_t)
 */
void xcb_xkb_key_name_next(xcb_xkb_key_name_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_name_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_key_name_end(xcb_xkb_key_name_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_alias_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_alias_t)
 */
void xcb_xkb_key_alias_next(xcb_xkb_key_alias_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_alias_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_key_alias_end(xcb_xkb_key_alias_iterator_t i /**< */ );

int xcb_xkb_counted_string_16_sizeof(const void* _buffer /**< */ );

char* xcb_xkb_counted_string_16_string(const xcb_xkb_counted_string_16_t* R /**< */ );

int xcb_xkb_counted_string_16_string_length(const xcb_xkb_counted_string_16_t* R /**< */ );

xcb_generic_iterator_t xcb_xkb_counted_string_16_string_end(const xcb_xkb_counted_string_16_t* R /**< */ );

void* xcb_xkb_counted_string_16_alignment_pad(const xcb_xkb_counted_string_16_t* R /**< */ );

int xcb_xkb_counted_string_16_alignment_pad_length(const xcb_xkb_counted_string_16_t* R /**< */ );

xcb_generic_iterator_t xcb_xkb_counted_string_16_alignment_pad_end(const xcb_xkb_counted_string_16_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_counted_string_16_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_counted_string_16_t)
 */
void xcb_xkb_counted_string_16_next(xcb_xkb_counted_string_16_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_counted_string_16_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_counted_string_16_end(xcb_xkb_counted_string_16_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_kt_map_entry_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_kt_map_entry_t)
 */
void xcb_xkb_kt_map_entry_next(xcb_xkb_kt_map_entry_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_kt_map_entry_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_kt_map_entry_end(xcb_xkb_kt_map_entry_iterator_t i /**< */ );

int xcb_xkb_key_type_sizeof(const void* _buffer /**< */ );

xcb_xkb_kt_map_entry_t* xcb_xkb_key_type_map(const xcb_xkb_key_type_t* R /**< */ );

int xcb_xkb_key_type_map_length(const xcb_xkb_key_type_t* R /**< */ );

xcb_xkb_kt_map_entry_iterator_t xcb_xkb_key_type_map_iterator(const xcb_xkb_key_type_t* R /**< */ );

xcb_xkb_mod_def_t* xcb_xkb_key_type_preserve(const xcb_xkb_key_type_t* R /**< */ );

int xcb_xkb_key_type_preserve_length(const xcb_xkb_key_type_t* R /**< */ );

xcb_xkb_mod_def_iterator_t xcb_xkb_key_type_preserve_iterator(const xcb_xkb_key_type_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_type_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_type_t)
 */
void xcb_xkb_key_type_next(xcb_xkb_key_type_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_type_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_key_type_end(xcb_xkb_key_type_iterator_t i /**< */ );

int xcb_xkb_key_sym_map_sizeof(const void* _buffer /**< */ );

xcb_keysym_t* xcb_xkb_key_sym_map_syms(const xcb_xkb_key_sym_map_t* R /**< */ );

int xcb_xkb_key_sym_map_syms_length(const xcb_xkb_key_sym_map_t* R /**< */ );

xcb_generic_iterator_t xcb_xkb_key_sym_map_syms_end(const xcb_xkb_key_sym_map_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_sym_map_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_sym_map_t)
 */
void xcb_xkb_key_sym_map_next(xcb_xkb_key_sym_map_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_sym_map_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_key_sym_map_end(xcb_xkb_key_sym_map_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_common_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_common_behavior_t)
 */
void xcb_xkb_common_behavior_next(xcb_xkb_common_behavior_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_common_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_common_behavior_end(xcb_xkb_common_behavior_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_default_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_default_behavior_t)
 */
void xcb_xkb_default_behavior_next(xcb_xkb_default_behavior_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_default_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_default_behavior_end(xcb_xkb_default_behavior_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_lock_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_lock_behavior_t)
 */
void xcb_xkb_lock_behavior_next(xcb_xkb_lock_behavior_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_lock_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_lock_behavior_end(xcb_xkb_lock_behavior_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_radio_group_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_radio_group_behavior_t)
 */
void xcb_xkb_radio_group_behavior_next(xcb_xkb_radio_group_behavior_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_radio_group_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_radio_group_behavior_end(xcb_xkb_radio_group_behavior_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_overlay_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_overlay_behavior_t)
 */
void xcb_xkb_overlay_behavior_next(xcb_xkb_overlay_behavior_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_overlay_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_overlay_behavior_end(xcb_xkb_overlay_behavior_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_permament_lock_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_permament_lock_behavior_t)
 */
void xcb_xkb_permament_lock_behavior_next(xcb_xkb_permament_lock_behavior_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_permament_lock_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_permament_lock_behavior_end(xcb_xkb_permament_lock_behavior_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_permament_radio_group_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_permament_radio_group_behavior_t)
 */
void xcb_xkb_permament_radio_group_behavior_next(xcb_xkb_permament_radio_group_behavior_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_permament_radio_group_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_permament_radio_group_behavior_end(xcb_xkb_permament_radio_group_behavior_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_permament_overlay_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_permament_overlay_behavior_t)
 */
void xcb_xkb_permament_overlay_behavior_next(xcb_xkb_permament_overlay_behavior_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_permament_overlay_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_permament_overlay_behavior_end(xcb_xkb_permament_overlay_behavior_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_behavior_t)
 */
void xcb_xkb_behavior_next(xcb_xkb_behavior_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_behavior_end(xcb_xkb_behavior_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_set_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_set_behavior_t)
 */
void xcb_xkb_set_behavior_next(xcb_xkb_set_behavior_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_set_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_set_behavior_end(xcb_xkb_set_behavior_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_set_explicit_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_set_explicit_t)
 */
void xcb_xkb_set_explicit_next(xcb_xkb_set_explicit_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_set_explicit_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_set_explicit_end(xcb_xkb_set_explicit_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_mod_map_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_mod_map_t)
 */
void xcb_xkb_key_mod_map_next(xcb_xkb_key_mod_map_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_mod_map_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_key_mod_map_end(xcb_xkb_key_mod_map_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_v_mod_map_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_v_mod_map_t)
 */
void xcb_xkb_key_v_mod_map_next(xcb_xkb_key_v_mod_map_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_v_mod_map_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_key_v_mod_map_end(xcb_xkb_key_v_mod_map_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_kt_set_map_entry_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_kt_set_map_entry_t)
 */
void xcb_xkb_kt_set_map_entry_next(xcb_xkb_kt_set_map_entry_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_kt_set_map_entry_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_kt_set_map_entry_end(xcb_xkb_kt_set_map_entry_iterator_t i /**< */ );

int xcb_xkb_set_key_type_sizeof(const void* _buffer /**< */ );

xcb_xkb_kt_set_map_entry_t* xcb_xkb_set_key_type_entries(const xcb_xkb_set_key_type_t* R /**< */ );

int xcb_xkb_set_key_type_entries_length(const xcb_xkb_set_key_type_t* R /**< */ );

xcb_xkb_kt_set_map_entry_iterator_t xcb_xkb_set_key_type_entries_iterator(const xcb_xkb_set_key_type_t* R /**< */ );

xcb_xkb_kt_set_map_entry_t* xcb_xkb_set_key_type_preserve_entries(const xcb_xkb_set_key_type_t* R /**< */ );

int xcb_xkb_set_key_type_preserve_entries_length(const xcb_xkb_set_key_type_t* R /**< */ );

xcb_xkb_kt_set_map_entry_iterator_t xcb_xkb_set_key_type_preserve_entries_iterator(const xcb_xkb_set_key_type_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_set_key_type_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_set_key_type_t)
 */
void xcb_xkb_set_key_type_next(xcb_xkb_set_key_type_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_set_key_type_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_set_key_type_end(xcb_xkb_set_key_type_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_string8_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_string8_t)
 */
void xcb_xkb_string8_next(xcb_xkb_string8_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_string8_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_string8_end(xcb_xkb_string8_iterator_t i /**< */ );

int xcb_xkb_outline_sizeof(const void* _buffer /**< */ );

xcb_point_t* xcb_xkb_outline_points(const xcb_xkb_outline_t* R /**< */ );

int xcb_xkb_outline_points_length(const xcb_xkb_outline_t* R /**< */ );

xcb_point_iterator_t xcb_xkb_outline_points_iterator(const xcb_xkb_outline_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_outline_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_outline_t)
 */
void xcb_xkb_outline_next(xcb_xkb_outline_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_outline_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_outline_end(xcb_xkb_outline_iterator_t i /**< */ );

int xcb_xkb_shape_sizeof(const void* _buffer /**< */ );

int xcb_xkb_shape_outlines_length(const xcb_xkb_shape_t* R /**< */ );

xcb_xkb_outline_iterator_t xcb_xkb_shape_outlines_iterator(const xcb_xkb_shape_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_shape_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_shape_t)
 */
void xcb_xkb_shape_next(xcb_xkb_shape_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_shape_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_shape_end(xcb_xkb_shape_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_t)
 */
void xcb_xkb_key_next(xcb_xkb_key_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_key_end(xcb_xkb_key_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_overlay_key_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_overlay_key_t)
 */
void xcb_xkb_overlay_key_next(xcb_xkb_overlay_key_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_overlay_key_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_overlay_key_end(xcb_xkb_overlay_key_iterator_t i /**< */ );

int xcb_xkb_overlay_row_sizeof(const void* _buffer /**< */ );

xcb_xkb_overlay_key_t* xcb_xkb_overlay_row_keys(const xcb_xkb_overlay_row_t* R /**< */ );

int xcb_xkb_overlay_row_keys_length(const xcb_xkb_overlay_row_t* R /**< */ );

xcb_xkb_overlay_key_iterator_t xcb_xkb_overlay_row_keys_iterator(const xcb_xkb_overlay_row_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_overlay_row_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_overlay_row_t)
 */
void xcb_xkb_overlay_row_next(xcb_xkb_overlay_row_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_overlay_row_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_overlay_row_end(xcb_xkb_overlay_row_iterator_t i /**< */ );

int xcb_xkb_overlay_sizeof(const void* _buffer /**< */ );

int xcb_xkb_overlay_rows_length(const xcb_xkb_overlay_t* R /**< */ );

xcb_xkb_overlay_row_iterator_t xcb_xkb_overlay_rows_iterator(const xcb_xkb_overlay_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_overlay_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_overlay_t)
 */
void xcb_xkb_overlay_next(xcb_xkb_overlay_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_overlay_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_overlay_end(xcb_xkb_overlay_iterator_t i /**< */ );

int xcb_xkb_row_sizeof(const void* _buffer /**< */ );

xcb_xkb_key_t* xcb_xkb_row_keys(const xcb_xkb_row_t* R /**< */ );

int xcb_xkb_row_keys_length(const xcb_xkb_row_t* R /**< */ );

xcb_xkb_key_iterator_t xcb_xkb_row_keys_iterator(const xcb_xkb_row_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_row_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_row_t)
 */
void xcb_xkb_row_next(xcb_xkb_row_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_row_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_row_end(xcb_xkb_row_iterator_t i /**< */ );

int xcb_xkb_listing_sizeof(const void* _buffer /**< */ );

xcb_xkb_string8_t* xcb_xkb_listing_string(const xcb_xkb_listing_t* R /**< */ );

int xcb_xkb_listing_string_length(const xcb_xkb_listing_t* R /**< */ );

xcb_generic_iterator_t xcb_xkb_listing_string_end(const xcb_xkb_listing_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_listing_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_listing_t)
 */
void xcb_xkb_listing_next(xcb_xkb_listing_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_listing_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_listing_end(xcb_xkb_listing_iterator_t i /**< */ );

int xcb_xkb_device_led_info_sizeof(const void* _buffer /**< */ );

xcb_atom_t* xcb_xkb_device_led_info_names(const xcb_xkb_device_led_info_t* R /**< */ );

int xcb_xkb_device_led_info_names_length(const xcb_xkb_device_led_info_t* R /**< */ );

xcb_generic_iterator_t xcb_xkb_device_led_info_names_end(const xcb_xkb_device_led_info_t* R /**< */ );

xcb_xkb_indicator_map_t* xcb_xkb_device_led_info_maps(const xcb_xkb_device_led_info_t* R /**< */ );

int xcb_xkb_device_led_info_maps_length(const xcb_xkb_device_led_info_t* R /**< */ );

xcb_xkb_indicator_map_iterator_t xcb_xkb_device_led_info_maps_iterator(const xcb_xkb_device_led_info_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_device_led_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_device_led_info_t)
 */
void xcb_xkb_device_led_info_next(xcb_xkb_device_led_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_device_led_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_device_led_info_end(xcb_xkb_device_led_info_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_no_action_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_no_action_t)
 */
void xcb_xkb_sa_no_action_next(xcb_xkb_sa_no_action_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_no_action_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_no_action_end(xcb_xkb_sa_no_action_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_set_mods_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_set_mods_t)
 */
void xcb_xkb_sa_set_mods_next(xcb_xkb_sa_set_mods_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_set_mods_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_set_mods_end(xcb_xkb_sa_set_mods_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_latch_mods_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_latch_mods_t)
 */
void xcb_xkb_sa_latch_mods_next(xcb_xkb_sa_latch_mods_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_latch_mods_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_latch_mods_end(xcb_xkb_sa_latch_mods_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_lock_mods_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_lock_mods_t)
 */
void xcb_xkb_sa_lock_mods_next(xcb_xkb_sa_lock_mods_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_lock_mods_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_lock_mods_end(xcb_xkb_sa_lock_mods_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_set_group_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_set_group_t)
 */
void xcb_xkb_sa_set_group_next(xcb_xkb_sa_set_group_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_set_group_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_set_group_end(xcb_xkb_sa_set_group_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_latch_group_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_latch_group_t)
 */
void xcb_xkb_sa_latch_group_next(xcb_xkb_sa_latch_group_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_latch_group_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_latch_group_end(xcb_xkb_sa_latch_group_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_lock_group_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_lock_group_t)
 */
void xcb_xkb_sa_lock_group_next(xcb_xkb_sa_lock_group_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_lock_group_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_lock_group_end(xcb_xkb_sa_lock_group_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_move_ptr_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_move_ptr_t)
 */
void xcb_xkb_sa_move_ptr_next(xcb_xkb_sa_move_ptr_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_move_ptr_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_move_ptr_end(xcb_xkb_sa_move_ptr_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_ptr_btn_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_ptr_btn_t)
 */
void xcb_xkb_sa_ptr_btn_next(xcb_xkb_sa_ptr_btn_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_ptr_btn_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_ptr_btn_end(xcb_xkb_sa_ptr_btn_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_lock_ptr_btn_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_lock_ptr_btn_t)
 */
void xcb_xkb_sa_lock_ptr_btn_next(xcb_xkb_sa_lock_ptr_btn_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_lock_ptr_btn_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_lock_ptr_btn_end(xcb_xkb_sa_lock_ptr_btn_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_set_ptr_dflt_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_set_ptr_dflt_t)
 */
void xcb_xkb_sa_set_ptr_dflt_next(xcb_xkb_sa_set_ptr_dflt_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_set_ptr_dflt_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_set_ptr_dflt_end(xcb_xkb_sa_set_ptr_dflt_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_iso_lock_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_iso_lock_t)
 */
void xcb_xkb_sa_iso_lock_next(xcb_xkb_sa_iso_lock_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_iso_lock_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_iso_lock_end(xcb_xkb_sa_iso_lock_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_terminate_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_terminate_t)
 */
void xcb_xkb_sa_terminate_next(xcb_xkb_sa_terminate_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_terminate_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_terminate_end(xcb_xkb_sa_terminate_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_switch_screen_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_switch_screen_t)
 */
void xcb_xkb_sa_switch_screen_next(xcb_xkb_sa_switch_screen_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_switch_screen_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_switch_screen_end(xcb_xkb_sa_switch_screen_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_set_controls_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_set_controls_t)
 */
void xcb_xkb_sa_set_controls_next(xcb_xkb_sa_set_controls_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_set_controls_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_set_controls_end(xcb_xkb_sa_set_controls_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_lock_controls_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_lock_controls_t)
 */
void xcb_xkb_sa_lock_controls_next(xcb_xkb_sa_lock_controls_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_lock_controls_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_lock_controls_end(xcb_xkb_sa_lock_controls_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_action_message_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_action_message_t)
 */
void xcb_xkb_sa_action_message_next(xcb_xkb_sa_action_message_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_action_message_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_action_message_end(xcb_xkb_sa_action_message_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_redirect_key_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_redirect_key_t)
 */
void xcb_xkb_sa_redirect_key_next(xcb_xkb_sa_redirect_key_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_redirect_key_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_redirect_key_end(xcb_xkb_sa_redirect_key_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_device_btn_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_device_btn_t)
 */
void xcb_xkb_sa_device_btn_next(xcb_xkb_sa_device_btn_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_device_btn_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_device_btn_end(xcb_xkb_sa_device_btn_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_lock_device_btn_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_lock_device_btn_t)
 */
void xcb_xkb_sa_lock_device_btn_next(xcb_xkb_sa_lock_device_btn_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_lock_device_btn_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_lock_device_btn_end(xcb_xkb_sa_lock_device_btn_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_device_valuator_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_device_valuator_t)
 */
void xcb_xkb_sa_device_valuator_next(xcb_xkb_sa_device_valuator_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_device_valuator_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sa_device_valuator_end(xcb_xkb_sa_device_valuator_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_si_action_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_si_action_t)
 */
void xcb_xkb_si_action_next(xcb_xkb_si_action_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_si_action_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_si_action_end(xcb_xkb_si_action_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sym_interpret_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sym_interpret_t)
 */
void xcb_xkb_sym_interpret_next(xcb_xkb_sym_interpret_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sym_interpret_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_sym_interpret_end(xcb_xkb_sym_interpret_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_action_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_action_t)
 */
void xcb_xkb_action_next(xcb_xkb_action_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_action_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xkb_action_end(xcb_xkb_action_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_use_extension_cookie_t xcb_xkb_use_extension(xcb_connection_t* c /**< */ , ushort wantedMajor /**< */ , ushort wantedMinor /**< */ );

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
xcb_xkb_use_extension_cookie_t xcb_xkb_use_extension_unchecked(xcb_connection_t* c /**< */ , ushort wantedMajor /**< */ , ushort wantedMinor /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_use_extension_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_use_extension_reply_t* xcb_xkb_use_extension_reply(xcb_connection_t* c /**< */ ,
	xcb_xkb_use_extension_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xkb_select_events_details_serialize(void** _buffer /**< */ , ushort affectWhich /**< */ , ushort clear /**< */ , ushort selectAll /**< */ ,
	const xcb_xkb_select_events_details_t* _aux /**< */ );

int xcb_xkb_select_events_details_unpack(const void* _buffer /**< */ , ushort affectWhich /**< */ , ushort clear /**< */ , ushort selectAll /**< */ ,
	xcb_xkb_select_events_details_t* _aux /**< */ );

int xcb_xkb_select_events_details_sizeof(const void* _buffer /**< */ , ushort affectWhich /**< */ , ushort clear /**< */ ,
	ushort selectAll /**< */ );

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
xcb_void_cookie_t xcb_xkb_select_events_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort affectWhich /**< */ ,
	ushort clear /**< */ , ushort selectAll /**< */ , ushort affectMap /**< */ , ushort map /**< */ , const void* details /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_select_events(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort affectWhich /**< */ ,
	ushort clear /**< */ , ushort selectAll /**< */ , ushort affectMap /**< */ , ushort map /**< */ , const void* details /**< */ );

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
xcb_void_cookie_t xcb_xkb_select_events_aux_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	ushort affectWhich /**< */ , ushort clear /**< */ , ushort selectAll /**< */ , ushort affectMap /**< */ , ushort map /**< */ ,
	const xcb_xkb_select_events_details_t* details /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_select_events_aux(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort affectWhich /**< */ ,
	ushort clear /**< */ , ushort selectAll /**< */ , ushort affectMap /**< */ , ushort map /**< */ ,
	const xcb_xkb_select_events_details_t* details /**< */ );

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
xcb_void_cookie_t xcb_xkb_bell_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	xcb_xkb_bell_class_spec_t bellClass /**< */ , xcb_xkb_id_spec_t bellID /**< */ , byte percent /**< */ , ubyte forceSound /**< */ , ubyte eventOnly /**< */ ,
	short pitch /**< */ , short duration /**< */ , xcb_atom_t name /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_bell(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , xcb_xkb_bell_class_spec_t bellClass /**< */ ,
	xcb_xkb_id_spec_t bellID /**< */ , byte percent /**< */ , ubyte forceSound /**< */ , ubyte eventOnly /**< */ , short pitch /**< */ , short duration /**< */ ,
	xcb_atom_t name /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_get_state_cookie_t xcb_xkb_get_state(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ );

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
xcb_xkb_get_state_cookie_t xcb_xkb_get_state_unchecked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_state_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_get_state_reply_t* xcb_xkb_get_state_reply(xcb_connection_t* c /**< */ , xcb_xkb_get_state_cookie_t cookie /**< */ ,
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
xcb_void_cookie_t xcb_xkb_latch_lock_state_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	ubyte affectModLocks /**< */ , ubyte modLocks /**< */ , ubyte lockGroup /**< */ , ubyte groupLock /**< */ , ubyte affectModLatches /**< */ ,
	ubyte latchGroup /**< */ , ushort groupLatch /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_latch_lock_state(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ubyte affectModLocks /**< */ ,
	ubyte modLocks /**< */ , ubyte lockGroup /**< */ , ubyte groupLock /**< */ , ubyte affectModLatches /**< */ ,
	ubyte latchGroup /**< */ , ushort groupLatch /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_get_controls_cookie_t xcb_xkb_get_controls(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ );

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
xcb_xkb_get_controls_cookie_t xcb_xkb_get_controls_unchecked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_controls_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_get_controls_reply_t* xcb_xkb_get_controls_reply(xcb_connection_t* c /**< */ ,
	xcb_xkb_get_controls_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_xkb_set_controls_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	ubyte affectInternalRealMods /**< */ , ubyte internalRealMods /**< */ , ubyte affectIgnoreLockRealMods /**< */ , ubyte ignoreLockRealMods /**< */ ,
	ushort affectInternalVirtualMods /**< */ , ushort internalVirtualMods /**< */ , ushort affectIgnoreLockVirtualMods /**< */ ,
	ushort ignoreLockVirtualMods /**< */ , ubyte mouseKeysDfltBtn /**< */ , ubyte groupsWrap /**< */ , ushort accessXOptions /**< */ ,
	uint affectEnabledControls /**< */ , uint enabledControls /**< */ , uint changeControls /**< */ , ushort repeatDelay /**< */ , ushort repeatInterval /**< */ ,
	ushort slowKeysDelay /**< */ , ushort debounceDelay /**< */ , ushort mouseKeysDelay /**< */ , ushort mouseKeysInterval /**< */ ,
	ushort mouseKeysTimeToMax /**< */ , ushort mouseKeysMaxSpeed /**< */ , short mouseKeysCurve /**< */ , ushort accessXTimeout /**< */ ,
	uint accessXTimeoutMask /**< */ , uint accessXTimeoutValues /**< */ , ushort accessXTimeoutOptionsMask /**< */ ,
	ushort accessXTimeoutOptionsValues /**< */ , const ubyte* perKeyRepeat /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_set_controls(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ubyte affectInternalRealMods /**< */ ,
	ubyte internalRealMods /**< */ , ubyte affectIgnoreLockRealMods /**< */ , ubyte ignoreLockRealMods /**< */ ,
	ushort affectInternalVirtualMods /**< */ , ushort internalVirtualMods /**< */ , ushort affectIgnoreLockVirtualMods /**< */ ,
	ushort ignoreLockVirtualMods /**< */ , ubyte mouseKeysDfltBtn /**< */ , ubyte groupsWrap /**< */ , ushort accessXOptions /**< */ ,
	uint affectEnabledControls /**< */ , uint enabledControls /**< */ , uint changeControls /**< */ , ushort repeatDelay /**< */ , ushort repeatInterval /**< */ ,
	ushort slowKeysDelay /**< */ , ushort debounceDelay /**< */ , ushort mouseKeysDelay /**< */ , ushort mouseKeysInterval /**< */ ,
	ushort mouseKeysTimeToMax /**< */ , ushort mouseKeysMaxSpeed /**< */ , short mouseKeysCurve /**< */ , ushort accessXTimeout /**< */ ,
	uint accessXTimeoutMask /**< */ , uint accessXTimeoutValues /**< */ , ushort accessXTimeoutOptionsMask /**< */ ,
	ushort accessXTimeoutOptionsValues /**< */ , const ubyte* perKeyRepeat /**< */ );

int xcb_xkb_get_map_map_types_rtrn_length(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_key_type_iterator_t xcb_xkb_get_map_map_types_rtrn_iterator(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

int xcb_xkb_get_map_map_syms_rtrn_length(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_key_sym_map_iterator_t xcb_xkb_get_map_map_syms_rtrn_iterator(const xcb_xkb_get_map_reply_t* R /**< */ ,
	const xcb_xkb_get_map_map_t* S /**< */ );

ubyte* xcb_xkb_get_map_map_acts_rtrn_count(const xcb_xkb_get_map_map_t* S /**< */ );

int xcb_xkb_get_map_map_acts_rtrn_count_length(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_map_map_acts_rtrn_count_end(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_action_t* xcb_xkb_get_map_map_acts_rtrn_acts(const xcb_xkb_get_map_map_t* S /**< */ );

int xcb_xkb_get_map_map_acts_rtrn_acts_length(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_action_iterator_t xcb_xkb_get_map_map_acts_rtrn_acts_iterator(const xcb_xkb_get_map_reply_t* R /**< */ ,
	const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_set_behavior_t* xcb_xkb_get_map_map_behaviors_rtrn(const xcb_xkb_get_map_map_t* S /**< */ );

int xcb_xkb_get_map_map_behaviors_rtrn_length(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_set_behavior_iterator_t xcb_xkb_get_map_map_behaviors_rtrn_iterator(const xcb_xkb_get_map_reply_t* R /**< */ ,
	const xcb_xkb_get_map_map_t* S /**< */ );

ubyte* xcb_xkb_get_map_map_vmods_rtrn(const xcb_xkb_get_map_map_t* S /**< */ );

int xcb_xkb_get_map_map_vmods_rtrn_length(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_map_map_vmods_rtrn_end(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_set_explicit_t* xcb_xkb_get_map_map_explicit_rtrn(const xcb_xkb_get_map_map_t* S /**< */ );

int xcb_xkb_get_map_map_explicit_rtrn_length(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_set_explicit_iterator_t xcb_xkb_get_map_map_explicit_rtrn_iterator(const xcb_xkb_get_map_reply_t* R /**< */ ,
	const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_key_mod_map_t* xcb_xkb_get_map_map_modmap_rtrn(const xcb_xkb_get_map_map_t* S /**< */ );

int xcb_xkb_get_map_map_modmap_rtrn_length(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_key_mod_map_iterator_t xcb_xkb_get_map_map_modmap_rtrn_iterator(const xcb_xkb_get_map_reply_t* R /**< */ ,
	const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_key_v_mod_map_t* xcb_xkb_get_map_map_vmodmap_rtrn(const xcb_xkb_get_map_map_t* S /**< */ );

int xcb_xkb_get_map_map_vmodmap_rtrn_length(const xcb_xkb_get_map_reply_t* R /**< */ , const xcb_xkb_get_map_map_t* S /**< */ );

xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_get_map_map_vmodmap_rtrn_iterator(const xcb_xkb_get_map_reply_t* R /**< */ ,
	const xcb_xkb_get_map_map_t* S /**< */ );

int xcb_xkb_get_map_map_serialize(void** _buffer /**< */ , ubyte nTypes /**< */ , ubyte nKeySyms /**< */ , ubyte nKeyActions /**< */ , ushort totalActions /**< */ ,
	ubyte totalKeyBehaviors /**< */ , ushort virtualMods /**< */ , ubyte totalKeyExplicit /**< */ , ubyte totalModMapKeys /**< */ ,
	ubyte totalVModMapKeys /**< */ , ushort present /**< */ , const xcb_xkb_get_map_map_t* _aux /**< */ );

int xcb_xkb_get_map_map_unpack(const void* _buffer /**< */ , ubyte nTypes /**< */ , ubyte nKeySyms /**< */ , ubyte nKeyActions /**< */ , ushort totalActions /**< */ ,
	ubyte totalKeyBehaviors /**< */ , ushort virtualMods /**< */ , ubyte totalKeyExplicit /**< */ , ubyte totalModMapKeys /**< */ ,
	ubyte totalVModMapKeys /**< */ , ushort present /**< */ , xcb_xkb_get_map_map_t* _aux /**< */ );

int xcb_xkb_get_map_map_sizeof(const void* _buffer /**< */ , ubyte nTypes /**< */ , ubyte nKeySyms /**< */ , ubyte nKeyActions /**< */ , ushort totalActions /**< */ ,
	ubyte totalKeyBehaviors /**< */ , ushort virtualMods /**< */ , ubyte totalKeyExplicit /**< */ , ubyte totalModMapKeys /**< */ ,
	ubyte totalVModMapKeys /**< */ , ushort present /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_get_map_cookie_t xcb_xkb_get_map(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort full /**< */ , ushort partial /**< */ ,
	ubyte firstType /**< */ , ubyte nTypes /**< */ , xcb_keycode_t firstKeySym /**< */ , ubyte nKeySyms /**< */ , xcb_keycode_t firstKeyAction /**< */ ,
	ubyte nKeyActions /**< */ , xcb_keycode_t firstKeyBehavior /**< */ , ubyte nKeyBehaviors /**< */ , ushort virtualMods /**< */ ,
	xcb_keycode_t firstKeyExplicit /**< */ , ubyte nKeyExplicit /**< */ , xcb_keycode_t firstModMapKey /**< */ , ubyte nModMapKeys /**< */ ,
	xcb_keycode_t firstVModMapKey /**< */ , ubyte nVModMapKeys /**< */ );

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
xcb_xkb_get_map_cookie_t xcb_xkb_get_map_unchecked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort full /**< */ ,
	ushort partial /**< */ , ubyte firstType /**< */ , ubyte nTypes /**< */ , xcb_keycode_t firstKeySym /**< */ , ubyte nKeySyms /**< */ ,
	xcb_keycode_t firstKeyAction /**< */ , ubyte nKeyActions /**< */ , xcb_keycode_t firstKeyBehavior /**< */ , ubyte nKeyBehaviors /**< */ ,
	ushort virtualMods /**< */ , xcb_keycode_t firstKeyExplicit /**< */ , ubyte nKeyExplicit /**< */ , xcb_keycode_t firstModMapKey /**< */ ,
	ubyte nModMapKeys /**< */ , xcb_keycode_t firstVModMapKey /**< */ , ubyte nVModMapKeys /**< */ );

void* xcb_xkb_get_map_map(const xcb_xkb_get_map_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_map_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_get_map_reply_t* xcb_xkb_get_map_reply(xcb_connection_t* c /**< */ , xcb_xkb_get_map_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_xkb_set_map_values_types_length(const xcb_xkb_set_map_request_t* R /**< */ , const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_set_key_type_iterator_t xcb_xkb_set_map_values_types_iterator(const xcb_xkb_set_map_request_t* R /**< */ ,
	const xcb_xkb_set_map_values_t* S /**< */ );

int xcb_xkb_set_map_values_syms_length(const xcb_xkb_set_map_request_t* R /**< */ , const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_key_sym_map_iterator_t xcb_xkb_set_map_values_syms_iterator(const xcb_xkb_set_map_request_t* R /**< */ ,
	const xcb_xkb_set_map_values_t* S /**< */ );

ubyte* xcb_xkb_set_map_values_actions_count(const xcb_xkb_set_map_values_t* S /**< */ );

int xcb_xkb_set_map_values_actions_count_length(const xcb_xkb_set_map_request_t* R /**< */ , const xcb_xkb_set_map_values_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_set_map_values_actions_count_end(const xcb_xkb_set_map_request_t* R /**< */ ,
	const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_action_t* xcb_xkb_set_map_values_actions(const xcb_xkb_set_map_values_t* S /**< */ );

int xcb_xkb_set_map_values_actions_length(const xcb_xkb_set_map_request_t* R /**< */ , const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_action_iterator_t xcb_xkb_set_map_values_actions_iterator(const xcb_xkb_set_map_request_t* R /**< */ ,
	const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_set_behavior_t* xcb_xkb_set_map_values_behaviors(const xcb_xkb_set_map_values_t* S /**< */ );

int xcb_xkb_set_map_values_behaviors_length(const xcb_xkb_set_map_request_t* R /**< */ , const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_set_behavior_iterator_t xcb_xkb_set_map_values_behaviors_iterator(const xcb_xkb_set_map_request_t* R /**< */ ,
	const xcb_xkb_set_map_values_t* S /**< */ );

ubyte* xcb_xkb_set_map_values_vmods(const xcb_xkb_set_map_values_t* S /**< */ );

int xcb_xkb_set_map_values_vmods_length(const xcb_xkb_set_map_request_t* R /**< */ , const xcb_xkb_set_map_values_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_set_map_values_vmods_end(const xcb_xkb_set_map_request_t* R /**< */ , const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_set_explicit_t* xcb_xkb_set_map_values_explicit(const xcb_xkb_set_map_values_t* S /**< */ );

int xcb_xkb_set_map_values_explicit_length(const xcb_xkb_set_map_request_t* R /**< */ , const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_set_explicit_iterator_t xcb_xkb_set_map_values_explicit_iterator(const xcb_xkb_set_map_request_t* R /**< */ ,
	const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_key_mod_map_t* xcb_xkb_set_map_values_modmap(const xcb_xkb_set_map_values_t* S /**< */ );

int xcb_xkb_set_map_values_modmap_length(const xcb_xkb_set_map_request_t* R /**< */ , const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_key_mod_map_iterator_t xcb_xkb_set_map_values_modmap_iterator(const xcb_xkb_set_map_request_t* R /**< */ ,
	const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_key_v_mod_map_t* xcb_xkb_set_map_values_vmodmap(const xcb_xkb_set_map_values_t* S /**< */ );

int xcb_xkb_set_map_values_vmodmap_length(const xcb_xkb_set_map_request_t* R /**< */ , const xcb_xkb_set_map_values_t* S /**< */ );

xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_set_map_values_vmodmap_iterator(const xcb_xkb_set_map_request_t* R /**< */ ,
	const xcb_xkb_set_map_values_t* S /**< */ );

int xcb_xkb_set_map_values_serialize(void** _buffer /**< */ , ubyte nTypes /**< */ , ubyte nKeySyms /**< */ , ubyte nKeyActions /**< */ , ushort totalActions /**< */ ,
	ubyte totalKeyBehaviors /**< */ , ushort virtualMods /**< */ , ubyte totalKeyExplicit /**< */ , ubyte totalModMapKeys /**< */ ,
	ubyte totalVModMapKeys /**< */ , ushort present /**< */ , const xcb_xkb_set_map_values_t* _aux /**< */ );

int xcb_xkb_set_map_values_unpack(const void* _buffer /**< */ , ubyte nTypes /**< */ , ubyte nKeySyms /**< */ , ubyte nKeyActions /**< */ , ushort totalActions /**< */ ,
	ubyte totalKeyBehaviors /**< */ , ushort virtualMods /**< */ , ubyte totalKeyExplicit /**< */ , ubyte totalModMapKeys /**< */ ,
	ubyte totalVModMapKeys /**< */ , ushort present /**< */ , xcb_xkb_set_map_values_t* _aux /**< */ );

int xcb_xkb_set_map_values_sizeof(const void* _buffer /**< */ , ubyte nTypes /**< */ , ubyte nKeySyms /**< */ , ubyte nKeyActions /**< */ , ushort totalActions /**< */ ,
	ubyte totalKeyBehaviors /**< */ , ushort virtualMods /**< */ , ubyte totalKeyExplicit /**< */ , ubyte totalModMapKeys /**< */ ,
	ubyte totalVModMapKeys /**< */ , ushort present /**< */ );

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
xcb_void_cookie_t xcb_xkb_set_map_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort present /**< */ , ushort flags /**< */ ,
	xcb_keycode_t minKeyCode /**< */ , xcb_keycode_t maxKeyCode /**< */ , ubyte firstType /**< */ , ubyte nTypes /**< */ , xcb_keycode_t firstKeySym /**< */ ,
	ubyte nKeySyms /**< */ , ushort totalSyms /**< */ , xcb_keycode_t firstKeyAction /**< */ , ubyte nKeyActions /**< */ , ushort totalActions /**< */ ,
	xcb_keycode_t firstKeyBehavior /**< */ , ubyte nKeyBehaviors /**< */ , ubyte totalKeyBehaviors /**< */ , xcb_keycode_t firstKeyExplicit /**< */ ,
	ubyte nKeyExplicit /**< */ , ubyte totalKeyExplicit /**< */ , xcb_keycode_t firstModMapKey /**< */ , ubyte nModMapKeys /**< */ ,
	ubyte totalModMapKeys /**< */ , xcb_keycode_t firstVModMapKey /**< */ , ubyte nVModMapKeys /**< */ , ubyte totalVModMapKeys /**< */ ,
	ushort virtualMods /**< */ , const void* values /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_set_map(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort present /**< */ , ushort flags /**< */ ,
	xcb_keycode_t minKeyCode /**< */ , xcb_keycode_t maxKeyCode /**< */ , ubyte firstType /**< */ , ubyte nTypes /**< */ , xcb_keycode_t firstKeySym /**< */ ,
	ubyte nKeySyms /**< */ , ushort totalSyms /**< */ , xcb_keycode_t firstKeyAction /**< */ , ubyte nKeyActions /**< */ , ushort totalActions /**< */ ,
	xcb_keycode_t firstKeyBehavior /**< */ , ubyte nKeyBehaviors /**< */ , ubyte totalKeyBehaviors /**< */ , xcb_keycode_t firstKeyExplicit /**< */ ,
	ubyte nKeyExplicit /**< */ , ubyte totalKeyExplicit /**< */ , xcb_keycode_t firstModMapKey /**< */ , ubyte nModMapKeys /**< */ ,
	ubyte totalModMapKeys /**< */ , xcb_keycode_t firstVModMapKey /**< */ , ubyte nVModMapKeys /**< */ , ubyte totalVModMapKeys /**< */ ,
	ushort virtualMods /**< */ , const void* values /**< */ );

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
xcb_void_cookie_t xcb_xkb_set_map_aux_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort present /**< */ ,
	ushort flags /**< */ , xcb_keycode_t minKeyCode /**< */ , xcb_keycode_t maxKeyCode /**< */ , ubyte firstType /**< */ , ubyte nTypes /**< */ ,
	xcb_keycode_t firstKeySym /**< */ , ubyte nKeySyms /**< */ , ushort totalSyms /**< */ , xcb_keycode_t firstKeyAction /**< */ , ubyte nKeyActions /**< */ ,
	ushort totalActions /**< */ , xcb_keycode_t firstKeyBehavior /**< */ , ubyte nKeyBehaviors /**< */ , ubyte totalKeyBehaviors /**< */ ,
	xcb_keycode_t firstKeyExplicit /**< */ , ubyte nKeyExplicit /**< */ , ubyte totalKeyExplicit /**< */ , xcb_keycode_t firstModMapKey /**< */ ,
	ubyte nModMapKeys /**< */ , ubyte totalModMapKeys /**< */ , xcb_keycode_t firstVModMapKey /**< */ , ubyte nVModMapKeys /**< */ ,
	ubyte totalVModMapKeys /**< */ , ushort virtualMods /**< */ , const xcb_xkb_set_map_values_t* values /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_set_map_aux(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort present /**< */ , ushort flags /**< */ ,
	xcb_keycode_t minKeyCode /**< */ , xcb_keycode_t maxKeyCode /**< */ , ubyte firstType /**< */ , ubyte nTypes /**< */ , xcb_keycode_t firstKeySym /**< */ ,
	ubyte nKeySyms /**< */ , ushort totalSyms /**< */ , xcb_keycode_t firstKeyAction /**< */ , ubyte nKeyActions /**< */ , ushort totalActions /**< */ ,
	xcb_keycode_t firstKeyBehavior /**< */ , ubyte nKeyBehaviors /**< */ , ubyte totalKeyBehaviors /**< */ , xcb_keycode_t firstKeyExplicit /**< */ ,
	ubyte nKeyExplicit /**< */ , ubyte totalKeyExplicit /**< */ , xcb_keycode_t firstModMapKey /**< */ , ubyte nModMapKeys /**< */ ,
	ubyte totalModMapKeys /**< */ , xcb_keycode_t firstVModMapKey /**< */ , ubyte nVModMapKeys /**< */ , ubyte totalVModMapKeys /**< */ ,
	ushort virtualMods /**< */ , const xcb_xkb_set_map_values_t* values /**< */ );

int xcb_xkb_get_compat_map_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_get_compat_map_cookie_t xcb_xkb_get_compat_map(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ubyte groups /**< */ ,
	ubyte getAllSI /**< */ , ushort firstSI /**< */ , ushort nSI /**< */ );

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
xcb_xkb_get_compat_map_cookie_t xcb_xkb_get_compat_map_unchecked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	ubyte groups /**< */ , ubyte getAllSI /**< */ , ushort firstSI /**< */ , ushort nSI /**< */ );

xcb_xkb_sym_interpret_t* xcb_xkb_get_compat_map_si_rtrn(const xcb_xkb_get_compat_map_reply_t* R /**< */ );

int xcb_xkb_get_compat_map_si_rtrn_length(const xcb_xkb_get_compat_map_reply_t* R /**< */ );

xcb_xkb_sym_interpret_iterator_t xcb_xkb_get_compat_map_si_rtrn_iterator(const xcb_xkb_get_compat_map_reply_t* R /**< */ );

xcb_xkb_mod_def_t* xcb_xkb_get_compat_map_group_rtrn(const xcb_xkb_get_compat_map_reply_t* R /**< */ );

int xcb_xkb_get_compat_map_group_rtrn_length(const xcb_xkb_get_compat_map_reply_t* R /**< */ );

xcb_xkb_mod_def_iterator_t xcb_xkb_get_compat_map_group_rtrn_iterator(const xcb_xkb_get_compat_map_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_compat_map_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_get_compat_map_reply_t* xcb_xkb_get_compat_map_reply(xcb_connection_t* c /**< */ , xcb_xkb_get_compat_map_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_xkb_set_compat_map_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_xkb_set_compat_map_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	ubyte recomputeActions /**< */ , ubyte truncateSI /**< */ , ubyte groups /**< */ , ushort firstSI /**< */ , ushort nSI /**< */ ,
	const xcb_xkb_sym_interpret_t* si /**< */ , const xcb_xkb_mod_def_t* groupMaps /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_set_compat_map(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ubyte recomputeActions /**< */ ,
	ubyte truncateSI /**< */ , ubyte groups /**< */ , ushort firstSI /**< */ , ushort nSI /**< */ , const xcb_xkb_sym_interpret_t* si /**< */ ,
	const xcb_xkb_mod_def_t* groupMaps /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_get_indicator_state_cookie_t xcb_xkb_get_indicator_state(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ );

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
xcb_xkb_get_indicator_state_cookie_t xcb_xkb_get_indicator_state_unchecked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_indicator_state_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_get_indicator_state_reply_t* xcb_xkb_get_indicator_state_reply(xcb_connection_t* c /**< */ ,
	xcb_xkb_get_indicator_state_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xkb_get_indicator_map_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_get_indicator_map_cookie_t xcb_xkb_get_indicator_map(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	uint which /**< */ );

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
xcb_xkb_get_indicator_map_cookie_t xcb_xkb_get_indicator_map_unchecked(xcb_connection_t* c /**< */ ,
	xcb_xkb_device_spec_t deviceSpec /**< */ , uint which /**< */ );

xcb_xkb_indicator_map_t* xcb_xkb_get_indicator_map_maps(const xcb_xkb_get_indicator_map_reply_t* R /**< */ );

int xcb_xkb_get_indicator_map_maps_length(const xcb_xkb_get_indicator_map_reply_t* R /**< */ );

xcb_xkb_indicator_map_iterator_t xcb_xkb_get_indicator_map_maps_iterator(const xcb_xkb_get_indicator_map_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_indicator_map_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_get_indicator_map_reply_t* xcb_xkb_get_indicator_map_reply(xcb_connection_t* c /**< */ ,
	xcb_xkb_get_indicator_map_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xkb_set_indicator_map_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_xkb_set_indicator_map_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , uint which /**< */ ,
	const xcb_xkb_indicator_map_t* maps /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_set_indicator_map(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , uint which /**< */ ,
	const xcb_xkb_indicator_map_t* maps /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_get_named_indicator_cookie_t xcb_xkb_get_named_indicator(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	xcb_xkb_led_class_spec_t ledClass /**< */ , xcb_xkb_id_spec_t ledID /**< */ , xcb_atom_t indicator /**< */ );

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
xcb_xkb_get_named_indicator_cookie_t xcb_xkb_get_named_indicator_unchecked(xcb_connection_t* c /**< */ ,
	xcb_xkb_device_spec_t deviceSpec /**< */ , xcb_xkb_led_class_spec_t ledClass /**< */ , xcb_xkb_id_spec_t ledID /**< */ ,
	xcb_atom_t indicator /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_named_indicator_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_get_named_indicator_reply_t* xcb_xkb_get_named_indicator_reply(xcb_connection_t* c /**< */ ,
	xcb_xkb_get_named_indicator_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_xkb_set_named_indicator_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	xcb_xkb_led_class_spec_t ledClass /**< */ , xcb_xkb_id_spec_t ledID /**< */ , xcb_atom_t indicator /**< */ , ubyte setState /**< */ , ubyte on /**< */ ,
	ubyte setMap /**< */ , ubyte createMap /**< */ , ubyte map_flags /**< */ , ubyte map_whichGroups /**< */ , ubyte map_groups /**< */ , ubyte map_whichMods /**< */ ,
	ubyte map_realMods /**< */ , ushort map_vmods /**< */ , uint map_ctrls /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_set_named_indicator(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	xcb_xkb_led_class_spec_t ledClass /**< */ , xcb_xkb_id_spec_t ledID /**< */ , xcb_atom_t indicator /**< */ , ubyte setState /**< */ , ubyte on /**< */ ,
	ubyte setMap /**< */ , ubyte createMap /**< */ , ubyte map_flags /**< */ , ubyte map_whichGroups /**< */ , ubyte map_groups /**< */ , ubyte map_whichMods /**< */ ,
	ubyte map_realMods /**< */ , ushort map_vmods /**< */ , uint map_ctrls /**< */ );

xcb_atom_t* xcb_xkb_get_names_value_list_type_names(const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_type_names_length(const xcb_xkb_get_names_reply_t* R /**< */ , const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_names_value_list_type_names_end(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

ubyte* xcb_xkb_get_names_value_list_n_levels_per_type(const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_n_levels_per_type_length(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_names_value_list_n_levels_per_type_end(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

ubyte* xcb_xkb_get_names_value_list_alignment_pad(const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_alignment_pad_length(const xcb_xkb_get_names_reply_t* R /**< */ , const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_names_value_list_alignment_pad_end(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_atom_t* xcb_xkb_get_names_value_list_kt_level_names(const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_kt_level_names_length(const xcb_xkb_get_names_reply_t* R /**< */ , const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_names_value_list_kt_level_names_end(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_atom_t* xcb_xkb_get_names_value_list_indicator_names(const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_indicator_names_length(const xcb_xkb_get_names_reply_t* R /**< */ , const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_names_value_list_indicator_names_end(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_atom_t* xcb_xkb_get_names_value_list_virtual_mod_names(const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_virtual_mod_names_length(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_names_value_list_virtual_mod_names_end(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_atom_t* xcb_xkb_get_names_value_list_groups(const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_groups_length(const xcb_xkb_get_names_reply_t* R /**< */ , const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_names_value_list_groups_end(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_xkb_key_name_t* xcb_xkb_get_names_value_list_key_names(const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_key_names_length(const xcb_xkb_get_names_reply_t* R /**< */ , const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_xkb_key_name_iterator_t xcb_xkb_get_names_value_list_key_names_iterator(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_xkb_key_alias_t* xcb_xkb_get_names_value_list_key_aliases(const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_key_aliases_length(const xcb_xkb_get_names_reply_t* R /**< */ , const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_xkb_key_alias_iterator_t xcb_xkb_get_names_value_list_key_aliases_iterator(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_atom_t* xcb_xkb_get_names_value_list_radio_group_names(const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_radio_group_names_length(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_names_value_list_radio_group_names_end(const xcb_xkb_get_names_reply_t* R /**< */ ,
	const xcb_xkb_get_names_value_list_t* S /**< */ );

int xcb_xkb_get_names_value_list_serialize(void** _buffer /**< */ , ubyte nTypes /**< */ , uint indicators /**< */ , ushort virtualMods /**< */ , ubyte groupNames /**< */ ,
	ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ubyte nRadioGroups /**< */ , uint which /**< */ ,
	const xcb_xkb_get_names_value_list_t* _aux /**< */ );

int xcb_xkb_get_names_value_list_unpack(const void* _buffer /**< */ , ubyte nTypes /**< */ , uint indicators /**< */ , ushort virtualMods /**< */ , ubyte groupNames /**< */ ,
	ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ubyte nRadioGroups /**< */ , uint which /**< */ , xcb_xkb_get_names_value_list_t* _aux /**< */ );

int xcb_xkb_get_names_value_list_sizeof(const void* _buffer /**< */ , ubyte nTypes /**< */ , uint indicators /**< */ , ushort virtualMods /**< */ , ubyte groupNames /**< */ ,
	ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ubyte nRadioGroups /**< */ , uint which /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_get_names_cookie_t xcb_xkb_get_names(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , uint which /**< */ );

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
xcb_xkb_get_names_cookie_t xcb_xkb_get_names_unchecked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	uint which /**< */ );

void* xcb_xkb_get_names_value_list(const xcb_xkb_get_names_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_names_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_get_names_reply_t* xcb_xkb_get_names_reply(xcb_connection_t* c /**< */ , xcb_xkb_get_names_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

xcb_atom_t* xcb_xkb_set_names_values_type_names(const xcb_xkb_set_names_values_t* S /**< */ );

int xcb_xkb_set_names_values_type_names_length(const xcb_xkb_set_names_request_t* R /**< */ , const xcb_xkb_set_names_values_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_set_names_values_type_names_end(const xcb_xkb_set_names_request_t* R /**< */ ,
	const xcb_xkb_set_names_values_t* S /**< */ );

ubyte* xcb_xkb_set_names_values_n_levels_per_type(const xcb_xkb_set_names_values_t* S /**< */ );

int xcb_xkb_set_names_values_n_levels_per_type_length(const xcb_xkb_set_names_request_t* R /**< */ , const xcb_xkb_set_names_values_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_set_names_values_n_levels_per_type_end(const xcb_xkb_set_names_request_t* R /**< */ ,
	const xcb_xkb_set_names_values_t* S /**< */ );

xcb_atom_t* xcb_xkb_set_names_values_kt_level_names(const xcb_xkb_set_names_values_t* S /**< */ );

int xcb_xkb_set_names_values_kt_level_names_length(const xcb_xkb_set_names_request_t* R /**< */ , const xcb_xkb_set_names_values_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_set_names_values_kt_level_names_end(const xcb_xkb_set_names_request_t* R /**< */ ,
	const xcb_xkb_set_names_values_t* S /**< */ );

xcb_atom_t* xcb_xkb_set_names_values_indicator_names(const xcb_xkb_set_names_values_t* S /**< */ );

int xcb_xkb_set_names_values_indicator_names_length(const xcb_xkb_set_names_request_t* R /**< */ , const xcb_xkb_set_names_values_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_set_names_values_indicator_names_end(const xcb_xkb_set_names_request_t* R /**< */ ,
	const xcb_xkb_set_names_values_t* S /**< */ );

xcb_atom_t* xcb_xkb_set_names_values_virtual_mod_names(const xcb_xkb_set_names_values_t* S /**< */ );

int xcb_xkb_set_names_values_virtual_mod_names_length(const xcb_xkb_set_names_request_t* R /**< */ , const xcb_xkb_set_names_values_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_set_names_values_virtual_mod_names_end(const xcb_xkb_set_names_request_t* R /**< */ ,
	const xcb_xkb_set_names_values_t* S /**< */ );

xcb_atom_t* xcb_xkb_set_names_values_groups(const xcb_xkb_set_names_values_t* S /**< */ );

int xcb_xkb_set_names_values_groups_length(const xcb_xkb_set_names_request_t* R /**< */ , const xcb_xkb_set_names_values_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_set_names_values_groups_end(const xcb_xkb_set_names_request_t* R /**< */ , const xcb_xkb_set_names_values_t* S /**< */ );

xcb_xkb_key_name_t* xcb_xkb_set_names_values_key_names(const xcb_xkb_set_names_values_t* S /**< */ );

int xcb_xkb_set_names_values_key_names_length(const xcb_xkb_set_names_request_t* R /**< */ , const xcb_xkb_set_names_values_t* S /**< */ );

xcb_xkb_key_name_iterator_t xcb_xkb_set_names_values_key_names_iterator(const xcb_xkb_set_names_request_t* R /**< */ ,
	const xcb_xkb_set_names_values_t* S /**< */ );

xcb_xkb_key_alias_t* xcb_xkb_set_names_values_key_aliases(const xcb_xkb_set_names_values_t* S /**< */ );

int xcb_xkb_set_names_values_key_aliases_length(const xcb_xkb_set_names_request_t* R /**< */ , const xcb_xkb_set_names_values_t* S /**< */ );

xcb_xkb_key_alias_iterator_t xcb_xkb_set_names_values_key_aliases_iterator(const xcb_xkb_set_names_request_t* R /**< */ ,
	const xcb_xkb_set_names_values_t* S /**< */ );

xcb_atom_t* xcb_xkb_set_names_values_radio_group_names(const xcb_xkb_set_names_values_t* S /**< */ );

int xcb_xkb_set_names_values_radio_group_names_length(const xcb_xkb_set_names_request_t* R /**< */ , const xcb_xkb_set_names_values_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_set_names_values_radio_group_names_end(const xcb_xkb_set_names_request_t* R /**< */ ,
	const xcb_xkb_set_names_values_t* S /**< */ );

int xcb_xkb_set_names_values_serialize(void** _buffer /**< */ , ubyte nTypes /**< */ , uint indicators /**< */ , ushort virtualMods /**< */ , ubyte groupNames /**< */ ,
	ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ubyte nRadioGroups /**< */ , uint which /**< */ ,
	const xcb_xkb_set_names_values_t* _aux /**< */ );

int xcb_xkb_set_names_values_unpack(const void* _buffer /**< */ , ubyte nTypes /**< */ , uint indicators /**< */ , ushort virtualMods /**< */ , ubyte groupNames /**< */ ,
	ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ubyte nRadioGroups /**< */ , uint which /**< */ , xcb_xkb_set_names_values_t* _aux /**< */ );

int xcb_xkb_set_names_values_sizeof(const void* _buffer /**< */ , ubyte nTypes /**< */ , uint indicators /**< */ , ushort virtualMods /**< */ , ubyte groupNames /**< */ ,
	ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ubyte nRadioGroups /**< */ , uint which /**< */ );

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
xcb_void_cookie_t xcb_xkb_set_names_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort virtualMods /**< */ ,
	uint which /**< */ , ubyte firstType /**< */ , ubyte nTypes /**< */ , ubyte firstKTLevelt /**< */ , ubyte nKTLevels /**< */ , uint indicators /**< */ , ubyte groupNames /**< */ ,
	ubyte nRadioGroups /**< */ , xcb_keycode_t firstKey /**< */ , ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ ,
	ushort totalKTLevelNames /**< */ , const void* values /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_set_names(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort virtualMods /**< */ , uint which /**< */ ,
	ubyte firstType /**< */ , ubyte nTypes /**< */ , ubyte firstKTLevelt /**< */ , ubyte nKTLevels /**< */ , uint indicators /**< */ , ubyte groupNames /**< */ ,
	ubyte nRadioGroups /**< */ , xcb_keycode_t firstKey /**< */ , ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ ,
	ushort totalKTLevelNames /**< */ , const void* values /**< */ );

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
xcb_void_cookie_t xcb_xkb_set_names_aux_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort virtualMods /**< */ ,
	uint which /**< */ , ubyte firstType /**< */ , ubyte nTypes /**< */ , ubyte firstKTLevelt /**< */ , ubyte nKTLevels /**< */ , uint indicators /**< */ , ubyte groupNames /**< */ ,
	ubyte nRadioGroups /**< */ , xcb_keycode_t firstKey /**< */ , ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ushort totalKTLevelNames /**< */ ,
	const xcb_xkb_set_names_values_t* values /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_set_names_aux(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ushort virtualMods /**< */ , uint which /**< */ ,
	ubyte firstType /**< */ , ubyte nTypes /**< */ , ubyte firstKTLevelt /**< */ , ubyte nKTLevels /**< */ , uint indicators /**< */ , ubyte groupNames /**< */ ,
	ubyte nRadioGroups /**< */ , xcb_keycode_t firstKey /**< */ , ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ushort totalKTLevelNames /**< */ ,
	const xcb_xkb_set_names_values_t* values /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_per_client_flags_cookie_t xcb_xkb_per_client_flags(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	uint change /**< */ , uint value /**< */ , uint ctrlsToChange /**< */ , uint autoCtrls /**< */ , uint autoCtrlsValues /**< */ );

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
xcb_xkb_per_client_flags_cookie_t xcb_xkb_per_client_flags_unchecked(xcb_connection_t* c /**< */ ,
	xcb_xkb_device_spec_t deviceSpec /**< */ , uint change /**< */ , uint value /**< */ , uint ctrlsToChange /**< */ ,
	uint autoCtrls /**< */ , uint autoCtrlsValues /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_per_client_flags_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_per_client_flags_reply_t* xcb_xkb_per_client_flags_reply(xcb_connection_t* c /**< */ ,
	xcb_xkb_per_client_flags_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xkb_list_components_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_list_components_cookie_t xcb_xkb_list_components(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	ushort maxNames /**< */ );

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
xcb_xkb_list_components_cookie_t xcb_xkb_list_components_unchecked(xcb_connection_t* c /**< */ ,
	xcb_xkb_device_spec_t deviceSpec /**< */ , ushort maxNames /**< */ );

int xcb_xkb_list_components_keymaps_length(const xcb_xkb_list_components_reply_t* R /**< */ );

xcb_xkb_listing_iterator_t xcb_xkb_list_components_keymaps_iterator(const xcb_xkb_list_components_reply_t* R /**< */ );

int xcb_xkb_list_components_keycodes_length(const xcb_xkb_list_components_reply_t* R /**< */ );

xcb_xkb_listing_iterator_t xcb_xkb_list_components_keycodes_iterator(const xcb_xkb_list_components_reply_t* R /**< */ );

int xcb_xkb_list_components_types_length(const xcb_xkb_list_components_reply_t* R /**< */ );

xcb_xkb_listing_iterator_t xcb_xkb_list_components_types_iterator(const xcb_xkb_list_components_reply_t* R /**< */ );

int xcb_xkb_list_components_compat_maps_length(const xcb_xkb_list_components_reply_t* R /**< */ );

xcb_xkb_listing_iterator_t xcb_xkb_list_components_compat_maps_iterator(const xcb_xkb_list_components_reply_t* R /**< */ );

int xcb_xkb_list_components_symbols_length(const xcb_xkb_list_components_reply_t* R /**< */ );

xcb_xkb_listing_iterator_t xcb_xkb_list_components_symbols_iterator(const xcb_xkb_list_components_reply_t* R /**< */ );

int xcb_xkb_list_components_geometries_length(const xcb_xkb_list_components_reply_t* R /**< */ );

xcb_xkb_listing_iterator_t xcb_xkb_list_components_geometries_iterator(const xcb_xkb_list_components_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_list_components_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_list_components_reply_t* xcb_xkb_list_components_reply(xcb_connection_t* c /**< */ ,
	xcb_xkb_list_components_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_key_type_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_key_sym_map_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

ubyte* xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_action_t* xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_action_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_set_behavior_t* xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_set_behavior_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

ubyte* xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_set_explicit_t* xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_set_explicit_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_key_mod_map_t* xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_key_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_key_v_mod_map_t* xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_serialize(void** _buffer /**< */ , ubyte nTypes /**< */ , ubyte nKeySyms /**< */ , ubyte nKeyActions /**< */ ,
	ushort totalActions /**< */ , ubyte totalKeyBehaviors /**< */ , ushort virtualMods /**< */ , ubyte totalKeyExplicit /**< */ , ubyte totalModMapKeys /**< */ ,
	ubyte totalVModMapKeys /**< */ , ushort present /**< */ , const xcb_xkb_get_kbd_by_name_replies_types_map_t* _aux /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_unpack(const void* _buffer /**< */ , ubyte nTypes /**< */ , ubyte nKeySyms /**< */ , ubyte nKeyActions /**< */ ,
	ushort totalActions /**< */ , ubyte totalKeyBehaviors /**< */ , ushort virtualMods /**< */ , ubyte totalKeyExplicit /**< */ , ubyte totalModMapKeys /**< */ ,
	ubyte totalVModMapKeys /**< */ , ushort present /**< */ , xcb_xkb_get_kbd_by_name_replies_types_map_t* _aux /**< */ );

int xcb_xkb_get_kbd_by_name_replies_types_map_sizeof(const void* _buffer /**< */ , ubyte nTypes /**< */ , ubyte nKeySyms /**< */ , ubyte nKeyActions /**< */ ,
	ushort totalActions /**< */ , ubyte totalKeyBehaviors /**< */ , ushort virtualMods /**< */ , ubyte totalKeyExplicit /**< */ , ubyte totalModMapKeys /**< */ ,
	ubyte totalVModMapKeys /**< */ , ushort present /**< */ );

xcb_atom_t* xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

ubyte* xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_atom_t* xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_atom_t* xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_atom_t* xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_atom_t* xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_key_name_t* xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_key_name_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_key_alias_t* xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_key_alias_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_atom_t* xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_serialize(void** _buffer /**< */ , ubyte nTypes /**< */ , uint indicators /**< */ ,
	ushort virtualMods /**< */ , ubyte groupNames /**< */ , ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ubyte nRadioGroups /**< */ , uint which /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t* _aux /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_unpack(const void* _buffer /**< */ , ubyte nTypes /**< */ , uint indicators /**< */ ,
	ushort virtualMods /**< */ , ubyte groupNames /**< */ , ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ubyte nRadioGroups /**< */ , uint which /**< */ ,
	xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t* _aux /**< */ );

int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_sizeof(const void* _buffer /**< */ , ubyte nTypes /**< */ , uint indicators /**< */ ,
	ushort virtualMods /**< */ , ubyte groupNames /**< */ , ubyte nKeys /**< */ , ubyte nKeyAliases /**< */ , ubyte nRadioGroups /**< */ ,
	uint which /**< */ );

xcb_xkb_sym_interpret_t* xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_sym_interpret_iterator_t xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_mod_def_t* xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_mod_def_iterator_t xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_indicator_map_t* xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps(const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

int xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_indicator_map_iterator_t xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator(
	const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ , const xcb_xkb_get_kbd_by_name_replies_t* S /**< */ );

xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t* xcb_xkb_get_kbd_by_name_replies_key_names_value_list(
	const xcb_xkb_get_kbd_by_name_replies_t* R /**< */ );

xcb_xkb_counted_string_16_t* xcb_xkb_get_kbd_by_name_replies_geometry_label_font(const xcb_xkb_get_kbd_by_name_replies_t* R /**< */ );

int xcb_xkb_get_kbd_by_name_replies_serialize(void** _buffer /**< */ , ushort reported /**< */ ,
	const xcb_xkb_get_kbd_by_name_replies_t* _aux /**< */ );

int xcb_xkb_get_kbd_by_name_replies_unpack(const void* _buffer /**< */ , ushort reported /**< */ , xcb_xkb_get_kbd_by_name_replies_t* _aux /**< */ );

int xcb_xkb_get_kbd_by_name_replies_sizeof(const void* _buffer /**< */ , ushort reported /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_get_kbd_by_name_cookie_t xcb_xkb_get_kbd_by_name(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	ushort need /**< */ , ushort want /**< */ , ubyte load /**< */ );

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
xcb_xkb_get_kbd_by_name_cookie_t xcb_xkb_get_kbd_by_name_unchecked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	ushort need /**< */ , ushort want /**< */ , ubyte load /**< */ );

void* xcb_xkb_get_kbd_by_name_replies(const xcb_xkb_get_kbd_by_name_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_kbd_by_name_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_get_kbd_by_name_reply_t* xcb_xkb_get_kbd_by_name_reply(xcb_connection_t* c /**< */ ,
	xcb_xkb_get_kbd_by_name_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xkb_get_device_info_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_get_device_info_cookie_t xcb_xkb_get_device_info(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	ushort wanted /**< */ , ubyte allButtons /**< */ , ubyte firstButton /**< */ , ubyte nButtons /**< */ , xcb_xkb_led_class_spec_t ledClass /**< */ ,
	xcb_xkb_id_spec_t ledID /**< */ );

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
xcb_xkb_get_device_info_cookie_t xcb_xkb_get_device_info_unchecked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ ,
	ushort wanted /**< */ , ubyte allButtons /**< */ , ubyte firstButton /**< */ , ubyte nButtons /**< */ , xcb_xkb_led_class_spec_t ledClass /**< */ ,
	xcb_xkb_id_spec_t ledID /**< */ );

xcb_xkb_string8_t* xcb_xkb_get_device_info_name(const xcb_xkb_get_device_info_reply_t* R /**< */ );

int xcb_xkb_get_device_info_name_length(const xcb_xkb_get_device_info_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xkb_get_device_info_name_end(const xcb_xkb_get_device_info_reply_t* R /**< */ );

xcb_xkb_action_t* xcb_xkb_get_device_info_btn_actions(const xcb_xkb_get_device_info_reply_t* R /**< */ );

int xcb_xkb_get_device_info_btn_actions_length(const xcb_xkb_get_device_info_reply_t* R /**< */ );

xcb_xkb_action_iterator_t xcb_xkb_get_device_info_btn_actions_iterator(const xcb_xkb_get_device_info_reply_t* R /**< */ );

int xcb_xkb_get_device_info_leds_length(const xcb_xkb_get_device_info_reply_t* R /**< */ );

xcb_xkb_device_led_info_iterator_t xcb_xkb_get_device_info_leds_iterator(const xcb_xkb_get_device_info_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_device_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_get_device_info_reply_t* xcb_xkb_get_device_info_reply(xcb_connection_t* c /**< */ ,
	xcb_xkb_get_device_info_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xkb_set_device_info_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_xkb_set_device_info_checked(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ubyte firstBtn /**< */ ,
	ubyte nBtns /**< */ , ushort change /**< */ , ushort nDeviceLedFBs /**< */ , const xcb_xkb_action_t* btnActions /**< */ ,
	const xcb_xkb_device_led_info_t* leds /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_xkb_set_device_info(xcb_connection_t* c /**< */ , xcb_xkb_device_spec_t deviceSpec /**< */ , ubyte firstBtn /**< */ , ubyte nBtns /**< */ ,
	ushort change /**< */ , ushort nDeviceLedFBs /**< */ , const xcb_xkb_action_t* btnActions /**< */ , const xcb_xkb_device_led_info_t* leds /**< */ );

int xcb_xkb_set_debugging_flags_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xkb_set_debugging_flags_cookie_t xcb_xkb_set_debugging_flags(xcb_connection_t* c /**< */ , ushort msgLength /**< */ , uint affectFlags /**< */ ,
	uint flags /**< */ , uint affectCtrls /**< */ , uint ctrls /**< */ , const xcb_xkb_string8_t* message /**< */ );

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
xcb_xkb_set_debugging_flags_cookie_t xcb_xkb_set_debugging_flags_unchecked(xcb_connection_t* c /**< */ , ushort msgLength /**< */ ,
	uint affectFlags /**< */ , uint flags /**< */ , uint affectCtrls /**< */ , uint ctrls /**< */ , const xcb_xkb_string8_t* message /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_set_debugging_flags_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xkb_set_debugging_flags_reply_t* xcb_xkb_set_debugging_flags_reply(xcb_connection_t* c /**< */ ,
	xcb_xkb_set_debugging_flags_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @}
 */
