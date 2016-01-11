/*
 * This file generated automatically from xevie.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Xevie_API XCB Xevie API
 * @brief Xevie XCB Protocol Implementation.
 * @{
 **/

module xcb.xevie;

import xcb.xcb;

extern (C):

enum int XCB_XEVIE_MAJOR_VERSION = 1;
enum int XCB_XEVIE_MINOR_VERSION = 0;

extern (C) __gshared extern xcb_extension_t xcb_xevie_id;

/**
 * @brief xcb_xevie_query_version_cookie_t
 **/
struct xcb_xevie_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xevie_query_version. */
enum XCB_XEVIE_QUERY_VERSION = 0;

/**
 * @brief xcb_xevie_query_version_request_t
 **/
struct xcb_xevie_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort client_major_version; /**<  */
	ushort client_minor_version; /**<  */
}

/**
 * @brief xcb_xevie_query_version_reply_t
 **/
struct xcb_xevie_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort server_major_version; /**<  */
	ushort server_minor_version; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_xevie_start_cookie_t
 **/
struct xcb_xevie_start_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xevie_start. */
enum XCB_XEVIE_START = 1;

/**
 * @brief xcb_xevie_start_request_t
 **/
struct xcb_xevie_start_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint screen; /**<  */
}

/**
 * @brief xcb_xevie_start_reply_t
 **/
struct xcb_xevie_start_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad1; /**<  */
}

/**
 * @brief xcb_xevie_end_cookie_t
 **/
struct xcb_xevie_end_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xevie_end. */
enum XCB_XEVIE_END = 2;

/**
 * @brief xcb_xevie_end_request_t
 **/
struct xcb_xevie_end_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint cmap; /**<  */
}

/**
 * @brief xcb_xevie_end_reply_t
 **/
struct xcb_xevie_end_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad1; /**<  */
}

enum xcb_xevie_datatype_t {
	XCB_XEVIE_DATATYPE_UNMODIFIED = 0,
	XCB_XEVIE_DATATYPE_MODIFIED = 1
}

alias XCB_XEVIE_DATATYPE_UNMODIFIED = xcb_xevie_datatype_t.XCB_XEVIE_DATATYPE_UNMODIFIED;
alias XCB_XEVIE_DATATYPE_MODIFIED = xcb_xevie_datatype_t.XCB_XEVIE_DATATYPE_MODIFIED;

/**
 * @brief xcb_xevie_event_t
 **/
struct xcb_xevie_event_t {
	ubyte[32] pad0; /**<  */
}

/**
 * @brief xcb_xevie_event_iterator_t
 **/
struct xcb_xevie_event_iterator_t {
	xcb_xevie_event_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_xevie_send_cookie_t
 **/
struct xcb_xevie_send_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xevie_send. */
enum XCB_XEVIE_SEND = 3;

/**
 * @brief xcb_xevie_send_request_t
 **/
struct xcb_xevie_send_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xevie_event_t event; /**<  */
	uint data_type; /**<  */
	ubyte[64] pad0; /**<  */
}

/**
 * @brief xcb_xevie_send_reply_t
 **/
struct xcb_xevie_send_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad1; /**<  */
}

/**
 * @brief xcb_xevie_select_input_cookie_t
 **/
struct xcb_xevie_select_input_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_xevie_select_input. */
enum XCB_XEVIE_SELECT_INPUT = 4;

/**
 * @brief xcb_xevie_select_input_request_t
 **/
struct xcb_xevie_select_input_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint event_mask; /**<  */
}

/**
 * @brief xcb_xevie_select_input_reply_t
 **/
struct xcb_xevie_select_input_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad1; /**<  */
}

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xevie_query_version_cookie_t xcb_xevie_query_version(xcb_connection_t* c /**< */ , ushort client_major_version /**< */ ,
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
xcb_xevie_query_version_cookie_t xcb_xevie_query_version_unchecked(xcb_connection_t* c /**< */ ,
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
 * xcb_xevie_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xevie_query_version_reply_t* xcb_xevie_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_xevie_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xevie_start_cookie_t xcb_xevie_start(xcb_connection_t* c /**< */ , uint screen /**< */ );

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
xcb_xevie_start_cookie_t xcb_xevie_start_unchecked(xcb_connection_t* c /**< */ , uint screen /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xevie_start_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xevie_start_reply_t* xcb_xevie_start_reply(xcb_connection_t* c /**< */ , xcb_xevie_start_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xevie_end_cookie_t xcb_xevie_end(xcb_connection_t* c /**< */ , uint cmap /**< */ );

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
xcb_xevie_end_cookie_t xcb_xevie_end_unchecked(xcb_connection_t* c /**< */ , uint cmap /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xevie_end_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xevie_end_reply_t* xcb_xevie_end_reply(xcb_connection_t* c /**< */ , xcb_xevie_end_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xevie_event_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xevie_event_t)
 */
void xcb_xevie_event_next(xcb_xevie_event_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xevie_event_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_xevie_event_end(xcb_xevie_event_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xevie_send_cookie_t xcb_xevie_send(xcb_connection_t* c /**< */ , xcb_xevie_event_t event /**< */ , uint data_type /**< */ );

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
xcb_xevie_send_cookie_t xcb_xevie_send_unchecked(xcb_connection_t* c /**< */ , xcb_xevie_event_t event /**< */ , uint data_type /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xevie_send_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xevie_send_reply_t* xcb_xevie_send_reply(xcb_connection_t* c /**< */ , xcb_xevie_send_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_xevie_select_input_cookie_t xcb_xevie_select_input(xcb_connection_t* c /**< */ , uint event_mask /**< */ );

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
xcb_xevie_select_input_cookie_t xcb_xevie_select_input_unchecked(xcb_connection_t* c /**< */ , uint event_mask /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xevie_select_input_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_xevie_select_input_reply_t* xcb_xevie_select_input_reply(xcb_connection_t* c /**< */ , xcb_xevie_select_input_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 * @}
 */
