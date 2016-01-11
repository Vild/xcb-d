/*
 * This file generated automatically from xc_misc.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_XCMisc_API XCB XCMisc API
 * @brief XCMisc XCB Protocol Implementation.
 * @{
 **/

module xcb.xc_misc;

import xcb.xcb;

extern (C):

enum int XCB_XCMISC_MAJOR_VERSION = 1;
enum int XCB_XCMISC_MINOR_VERSION = 1;

extern (C) __gshared extern xcb_extension_t xcb_xc_misc_id;

/**
 * @brief xcb_xc_misc_get_version_cookie_t
 **/
struct xcb_xc_misc_get_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xc_misc_get_version. */
enum XCB_XC_MISC_GET_VERSION = 0;

/**
 * @brief xcb_xc_misc_get_version_request_t
 **/
struct xcb_xc_misc_get_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort client_major_version; /**<  */
	ushort client_minor_version; /**<  */
}

/**
 * @brief xcb_xc_misc_get_version_reply_t
 **/
struct xcb_xc_misc_get_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort server_major_version; /**<  */
	ushort server_minor_version; /**<  */
}

/**
 * @brief xcb_xc_misc_get_xid_range_cookie_t
 **/
struct xcb_xc_misc_get_xid_range_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xc_misc_get_xid_range. */
enum XCB_XC_MISC_GET_XID_RANGE = 1;

/**
 * @brief xcb_xc_misc_get_xid_range_request_t
 **/
struct xcb_xc_misc_get_xid_range_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_xc_misc_get_xid_range_reply_t
 **/
struct xcb_xc_misc_get_xid_range_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint start_id; /**<  */
	uint count; /**<  */
}

/**
 * @brief xcb_xc_misc_get_xid_list_cookie_t
 **/
struct xcb_xc_misc_get_xid_list_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xc_misc_get_xid_list. */
enum XCB_XC_MISC_GET_XID_LIST = 2;

/**
 * @brief xcb_xc_misc_get_xid_list_request_t
 **/
struct xcb_xc_misc_get_xid_list_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint count; /**<  */
}

/**
 * @brief xcb_xc_misc_get_xid_list_reply_t
 **/
struct xcb_xc_misc_get_xid_list_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint ids_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xc_misc_get_version_cookie_t xcb_xc_misc_get_version(xcb_connection_t* c /**< */ , ushort client_major_version /**< */ ,
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
xcb_xc_misc_get_version_cookie_t xcb_xc_misc_get_version_unchecked(xcb_connection_t* c /**< */ ,
	ushort client_major_version /**< */ , ushort client_minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xc_misc_get_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xc_misc_get_version_reply_t* xcb_xc_misc_get_version_reply(xcb_connection_t* c /**< */ ,
	xcb_xc_misc_get_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xc_misc_get_xid_range_cookie_t xcb_xc_misc_get_xid_range(xcb_connection_t* c /**< */ );

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
xcb_xc_misc_get_xid_range_cookie_t xcb_xc_misc_get_xid_range_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xc_misc_get_xid_range_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xc_misc_get_xid_range_reply_t* xcb_xc_misc_get_xid_range_reply(xcb_connection_t* c /**< */ ,
	xcb_xc_misc_get_xid_range_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_xc_misc_get_xid_list_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xc_misc_get_xid_list_cookie_t xcb_xc_misc_get_xid_list(xcb_connection_t* c /**< */ , uint count /**< */ );

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
xcb_xc_misc_get_xid_list_cookie_t xcb_xc_misc_get_xid_list_unchecked(xcb_connection_t* c /**< */ , uint count /**< */ );

uint* xcb_xc_misc_get_xid_list_ids(const xcb_xc_misc_get_xid_list_reply_t* R /**< */ );

int xcb_xc_misc_get_xid_list_ids_length(const xcb_xc_misc_get_xid_list_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_xc_misc_get_xid_list_ids_end(const xcb_xc_misc_get_xid_list_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xc_misc_get_xid_list_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xc_misc_get_xid_list_reply_t* xcb_xc_misc_get_xid_list_reply(xcb_connection_t* c /**< */ ,
	xcb_xc_misc_get_xid_list_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @}
 */
