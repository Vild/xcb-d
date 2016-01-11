/*
 * This file generated automatically from screensaver.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_ScreenSaver_API XCB ScreenSaver API
 * @brief ScreenSaver XCB Protocol Implementation.
 * @{
 **/

module xcb.screensaver;

import xcb.xcb;
import xcb.xproto;

extern (C):

enum int XCB_SCREENSAVER_MAJOR_VERSION = 1;
enum int XCB_SCREENSAVER_MINOR_VERSION = 1;

extern (C) __gshared extern xcb_extension_t xcb_screensaver_id;

enum xcb_screensaver_kind_t {
	XCB_SCREENSAVER_KIND_BLANKED = 0,
	XCB_SCREENSAVER_KIND_INTERNAL = 1,
	XCB_SCREENSAVER_KIND_EXTERNAL = 2
}

alias XCB_SCREENSAVER_KIND_BLANKED = xcb_screensaver_kind_t.XCB_SCREENSAVER_KIND_BLANKED;
alias XCB_SCREENSAVER_KIND_INTERNAL = xcb_screensaver_kind_t.XCB_SCREENSAVER_KIND_INTERNAL;
alias XCB_SCREENSAVER_KIND_EXTERNAL = xcb_screensaver_kind_t.XCB_SCREENSAVER_KIND_EXTERNAL;

enum xcb_screensaver_event_t {
	XCB_SCREENSAVER_EVENT_NOTIFY_MASK = 1,
	XCB_SCREENSAVER_EVENT_CYCLE_MASK = 2
}

alias XCB_SCREENSAVER_EVENT_NOTIFY_MASK = xcb_screensaver_event_t.XCB_SCREENSAVER_EVENT_NOTIFY_MASK;
alias XCB_SCREENSAVER_EVENT_CYCLE_MASK = xcb_screensaver_event_t.XCB_SCREENSAVER_EVENT_CYCLE_MASK;

enum xcb_screensaver_state_t {
	XCB_SCREENSAVER_STATE_OFF = 0,
	XCB_SCREENSAVER_STATE_ON = 1,
	XCB_SCREENSAVER_STATE_CYCLE = 2,
	XCB_SCREENSAVER_STATE_DISABLED = 3
}

alias XCB_SCREENSAVER_STATE_OFF = xcb_screensaver_state_t.XCB_SCREENSAVER_STATE_OFF;
alias XCB_SCREENSAVER_STATE_ON = xcb_screensaver_state_t.XCB_SCREENSAVER_STATE_ON;
alias XCB_SCREENSAVER_STATE_CYCLE = xcb_screensaver_state_t.XCB_SCREENSAVER_STATE_CYCLE;
alias XCB_SCREENSAVER_STATE_DISABLED = xcb_screensaver_state_t.XCB_SCREENSAVER_STATE_DISABLED;

/**
 * @brief xcb_screensaver_query_version_cookie_t
 **/
struct xcb_screensaver_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_screensaver_query_version. */
enum XCB_SCREENSAVER_QUERY_VERSION = 0;

/**
 * @brief xcb_screensaver_query_version_request_t
 **/
struct xcb_screensaver_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte client_major_version; /**<  */
	ubyte client_minor_version; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_screensaver_query_version_reply_t
 **/
struct xcb_screensaver_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort server_major_version; /**<  */
	ushort server_minor_version; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_screensaver_query_info_cookie_t
 **/
struct xcb_screensaver_query_info_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_screensaver_query_info. */
enum XCB_SCREENSAVER_QUERY_INFO = 1;

/**
 * @brief xcb_screensaver_query_info_request_t
 **/
struct xcb_screensaver_query_info_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
}

/**
 * @brief xcb_screensaver_query_info_reply_t
 **/
struct xcb_screensaver_query_info_reply_t {
	ubyte response_type; /**<  */
	ubyte state; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t saver_window; /**<  */
	uint ms_until_server; /**<  */
	uint ms_since_user_input; /**<  */
	uint event_mask; /**<  */
	ubyte kind; /**<  */
	ubyte[7] pad0; /**<  */
}

/** Opcode for xcb_screensaver_select_input. */
enum XCB_SCREENSAVER_SELECT_INPUT = 2;

/**
 * @brief xcb_screensaver_select_input_request_t
 **/
struct xcb_screensaver_select_input_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	uint event_mask; /**<  */
}

/** Opcode for xcb_screensaver_set_attributes. */
enum XCB_SCREENSAVER_SET_ATTRIBUTES = 3;

/**
 * @brief xcb_screensaver_set_attributes_request_t
 **/
struct xcb_screensaver_set_attributes_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort border_width; /**<  */
	ubyte class_; /**<  */
	ubyte depth; /**<  */
	xcb_visualid_t visual; /**<  */
	uint value_mask; /**<  */
}

/** Opcode for xcb_screensaver_unset_attributes. */
enum XCB_SCREENSAVER_UNSET_ATTRIBUTES = 4;

/**
 * @brief xcb_screensaver_unset_attributes_request_t
 **/
struct xcb_screensaver_unset_attributes_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
}

/** Opcode for xcb_screensaver_suspend. */
enum XCB_SCREENSAVER_SUSPEND = 5;

/**
 * @brief xcb_screensaver_suspend_request_t
 **/
struct xcb_screensaver_suspend_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte suspend; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_screensaver_notify. */
enum XCB_SCREENSAVER_NOTIFY = 0;

/**
 * @brief xcb_screensaver_notify_event_t
 **/
struct xcb_screensaver_notify_event_t {
	ubyte response_type; /**<  */
	ubyte state; /**<  */
	ushort sequence; /**<  */
	xcb_timestamp_t time; /**<  */
	xcb_window_t root; /**<  */
	xcb_window_t window; /**<  */
	ubyte kind; /**<  */
	ubyte forced; /**<  */
	ubyte[14] pad0; /**<  */
}

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_screensaver_query_version_cookie_t xcb_screensaver_query_version(xcb_connection_t* c /**< */ ,
	ubyte client_major_version /**< */ , ubyte client_minor_version /**< */ );

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
xcb_screensaver_query_version_cookie_t xcb_screensaver_query_version_unchecked(xcb_connection_t* c /**< */ ,
	ubyte client_major_version /**< */ , ubyte client_minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_screensaver_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_screensaver_query_version_reply_t* xcb_screensaver_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_screensaver_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_screensaver_query_info_cookie_t xcb_screensaver_query_info(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ );

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
xcb_screensaver_query_info_cookie_t xcb_screensaver_query_info_unchecked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_screensaver_query_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_screensaver_query_info_reply_t* xcb_screensaver_query_info_reply(xcb_connection_t* c /**< */ ,
	xcb_screensaver_query_info_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_screensaver_select_input_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , uint event_mask /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_screensaver_select_input(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , uint event_mask /**< */ );

int xcb_screensaver_set_attributes_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_screensaver_set_attributes_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , short x /**< */ , short y /**< */ ,
	ushort width /**< */ , ushort height /**< */ , ushort border_width /**< */ , ubyte class_ /**< */ , ubyte depth /**< */ , xcb_visualid_t visual /**< */ , uint value_mask /**< */ ,
	const uint* value_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_screensaver_set_attributes(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , short x /**< */ , short y /**< */ , ushort width /**< */ ,
	ushort height /**< */ , ushort border_width /**< */ , ubyte class_ /**< */ , ubyte depth /**< */ , xcb_visualid_t visual /**< */ ,
	uint value_mask /**< */ , const uint* value_list /**< */ );

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
xcb_void_cookie_t xcb_screensaver_unset_attributes_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_screensaver_unset_attributes(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ );

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
xcb_void_cookie_t xcb_screensaver_suspend_checked(xcb_connection_t* c /**< */ , ubyte suspend /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_screensaver_suspend(xcb_connection_t* c /**< */ , ubyte suspend /**< */ );

/**
 * @}
 */
