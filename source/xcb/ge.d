/*
 * This file generated automatically from ge.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_GenericEvent_API XCB GenericEvent API
 * @brief GenericEvent XCB Protocol Implementation.
 * @{
 **/

module xcb.ge;

import xcb.xcb;

extern (C):

enum int XCB_GENERICEVENT_MAJOR_VERSION = 1;
enum int XCB_GENERICEVENT_MINOR_VERSION = 0;

extern (C) __gshared extern xcb_extension_t xcb_genericevent_id;

/**
 * @brief xcb_genericevent_query_version_cookie_t
 **/
struct xcb_genericevent_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_genericevent_query_version. */
enum XCB_GENERICEVENT_QUERY_VERSION = 0;

/**
 * @brief xcb_genericevent_query_version_request_t
 **/
struct xcb_genericevent_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort client_major_version; /**<  */
	ushort client_minor_version; /**<  */
}

/**
 * @brief xcb_genericevent_query_version_reply_t
 **/
struct xcb_genericevent_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort major_version; /**<  */
	ushort minor_version; /**<  */
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
xcb_genericevent_query_version_cookie_t xcb_genericevent_query_version(xcb_connection_t* c /**< */ , ushort client_major_version /**< */ ,
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
xcb_genericevent_query_version_cookie_t xcb_genericevent_query_version_unchecked(xcb_connection_t* c /**< */ ,
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
 * xcb_genericevent_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_genericevent_query_version_reply_t* xcb_genericevent_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_genericevent_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @}
 */
