/*
 * This file generated automatically from bigreq.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_BigRequests_API XCB BigRequests API
 * @brief BigRequests XCB Protocol Implementation.
 * @{
 **/

module xcb.bigreq;

import xcb.xcb;

extern (C):

enum int XCB_BIGREQUESTS_MAJOR_VERSION = 0;
enum int XCB_BIGREQUESTS_MINOR_VERSION = 0;

extern (C) __gshared extern xcb_extension_t xcb_big_requests_id;

/**
 * @brief xcb_big_requests_enable_cookie_t
 **/
struct xcb_big_requests_enable_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_big_requests_enable. */
enum XCB_BIG_REQUESTS_ENABLE = 0;

/**
 * @brief xcb_big_requests_enable_request_t
 **/
struct xcb_big_requests_enable_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_big_requests_enable_reply_t
 **/
struct xcb_big_requests_enable_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint maximum_request_length; /**<  */
}

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_big_requests_enable_cookie_t xcb_big_requests_enable(xcb_connection_t* c /**< */ );

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
xcb_big_requests_enable_cookie_t xcb_big_requests_enable_unchecked(xcb_connection_t* c /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_big_requests_enable_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_big_requests_enable_reply_t* xcb_big_requests_enable_reply(xcb_connection_t* c /**< */ ,
	xcb_big_requests_enable_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @}
 */
