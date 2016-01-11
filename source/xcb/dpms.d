/*
 * This file generated automatically from dpms.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_DPMS_API XCB DPMS API
 * @brief DPMS XCB Protocol Implementation.
 * @{
 **/

module xcb.dpms;

import xcb.xcb;

extern (C):

enum int XCB_DPMS_MAJOR_VERSION = 0;
enum int XCB_DPMS_MINOR_VERSION = 0;

extern (C) __gshared extern xcb_extension_t xcb_dpms_id;

/**
 * @brief xcb_dpms_get_version_cookie_t
 **/
struct xcb_dpms_get_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_dpms_get_version. */
enum XCB_DPMS_GET_VERSION = 0;

/**
 * @brief xcb_dpms_get_version_request_t
 **/
struct xcb_dpms_get_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort client_major_version; /**<  */
	ushort client_minor_version; /**<  */
}

/**
 * @brief xcb_dpms_get_version_reply_t
 **/
struct xcb_dpms_get_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort server_major_version; /**<  */
	ushort server_minor_version; /**<  */
}

/**
 * @brief xcb_dpms_capable_cookie_t
 **/
struct xcb_dpms_capable_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_dpms_capable. */
enum XCB_DPMS_CAPABLE = 1;

/**
 * @brief xcb_dpms_capable_request_t
 **/
struct xcb_dpms_capable_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_dpms_capable_reply_t
 **/
struct xcb_dpms_capable_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte capable; /**<  */
	ubyte[23] pad1; /**<  */
}

/**
 * @brief xcb_dpms_get_timeouts_cookie_t
 **/
struct xcb_dpms_get_timeouts_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_dpms_get_timeouts. */
enum XCB_DPMS_GET_TIMEOUTS = 2;

/**
 * @brief xcb_dpms_get_timeouts_request_t
 **/
struct xcb_dpms_get_timeouts_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_dpms_get_timeouts_reply_t
 **/
struct xcb_dpms_get_timeouts_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort standby_timeout; /**<  */
	ushort suspend_timeout; /**<  */
	ushort off_timeout; /**<  */
	ubyte[18] pad1; /**<  */
}

/** Opcode for xcb_dpms_set_timeouts. */
enum XCB_DPMS_SET_TIMEOUTS = 3;

/**
 * @brief xcb_dpms_set_timeouts_request_t
 **/
struct xcb_dpms_set_timeouts_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort standby_timeout; /**<  */
	ushort suspend_timeout; /**<  */
	ushort off_timeout; /**<  */
}

/** Opcode for xcb_dpms_enable. */
enum XCB_DPMS_ENABLE = 4;

/**
 * @brief xcb_dpms_enable_request_t
 **/
struct xcb_dpms_enable_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/** Opcode for xcb_dpms_disable. */
enum XCB_DPMS_DISABLE = 5;

/**
 * @brief xcb_dpms_disable_request_t
 **/
struct xcb_dpms_disable_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

enum xcb_dpms_dpms_mode_t {
	XCB_DPMS_DPMS_MODE_ON = 0,
	XCB_DPMS_DPMS_MODE_STANDBY = 1,
	XCB_DPMS_DPMS_MODE_SUSPEND = 2,
	XCB_DPMS_DPMS_MODE_OFF = 3
}

alias XCB_DPMS_DPMS_MODE_ON = xcb_dpms_dpms_mode_t.XCB_DPMS_DPMS_MODE_ON;
alias XCB_DPMS_DPMS_MODE_STANDBY = xcb_dpms_dpms_mode_t.XCB_DPMS_DPMS_MODE_STANDBY;
alias XCB_DPMS_DPMS_MODE_SUSPEND = xcb_dpms_dpms_mode_t.XCB_DPMS_DPMS_MODE_SUSPEND;
alias XCB_DPMS_DPMS_MODE_OFF = xcb_dpms_dpms_mode_t.XCB_DPMS_DPMS_MODE_OFF;

/** Opcode for xcb_dpms_force_level. */
enum XCB_DPMS_FORCE_LEVEL = 6;

/**
 * @brief xcb_dpms_force_level_request_t
 **/
struct xcb_dpms_force_level_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort power_level; /**<  */
}

/**
 * @brief xcb_dpms_info_cookie_t
 **/
struct xcb_dpms_info_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_dpms_info. */
enum XCB_DPMS_INFO = 7;

/**
 * @brief xcb_dpms_info_request_t
 **/
struct xcb_dpms_info_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_dpms_info_reply_t
 **/
struct xcb_dpms_info_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort power_level; /**<  */
	ubyte state; /**<  */
	ubyte[21] pad1; /**<  */
}

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_dpms_get_version_cookie_t xcb_dpms_get_version(xcb_connection_t* c /**< */ , ushort client_major_version /**< */ ,
	ushort client_minor_version /**< */ );

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
xcb_dpms_get_version_cookie_t xcb_dpms_get_version_unchecked(xcb_connection_t* c /**< */ , ushort client_major_version /**< */ ,
	ushort client_minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_dpms_get_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_dpms_get_version_reply_t* xcb_dpms_get_version_reply(xcb_connection_t* c /**< */ ,
	xcb_dpms_get_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_dpms_capable_cookie_t xcb_dpms_capable(xcb_connection_t* c /**< */ );

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
xcb_dpms_capable_cookie_t xcb_dpms_capable_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_dpms_capable_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_dpms_capable_reply_t* xcb_dpms_capable_reply(xcb_connection_t* c /**< */ , xcb_dpms_capable_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_dpms_get_timeouts_cookie_t xcb_dpms_get_timeouts(xcb_connection_t* c /**< */ );

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
xcb_dpms_get_timeouts_cookie_t xcb_dpms_get_timeouts_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_dpms_get_timeouts_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_dpms_get_timeouts_reply_t* xcb_dpms_get_timeouts_reply(xcb_connection_t* c /**< */ ,
	xcb_dpms_get_timeouts_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_dpms_set_timeouts_checked(xcb_connection_t* c /**< */ , ushort standby_timeout /**< */ ,
	ushort suspend_timeout /**< */ , ushort off_timeout /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_dpms_set_timeouts(xcb_connection_t* c /**< */ , ushort standby_timeout /**< */ ,
	ushort suspend_timeout /**< */ , ushort off_timeout /**< */ );

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
xcb_void_cookie_t xcb_dpms_enable_checked(xcb_connection_t* c /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_dpms_enable(xcb_connection_t* c /**< */ );

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
xcb_void_cookie_t xcb_dpms_disable_checked(xcb_connection_t* c /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_dpms_disable(xcb_connection_t* c /**< */ );

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
xcb_void_cookie_t xcb_dpms_force_level_checked(xcb_connection_t* c /**< */ , ushort power_level /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_dpms_force_level(xcb_connection_t* c /**< */ , ushort power_level /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_dpms_info_cookie_t xcb_dpms_info(xcb_connection_t* c /**< */ );

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
xcb_dpms_info_cookie_t xcb_dpms_info_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_dpms_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_dpms_info_reply_t* xcb_dpms_info_reply(xcb_connection_t* c /**< */ , xcb_dpms_info_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @}
 */
