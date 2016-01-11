/*
 * This file generated automatically from res.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Res_API XCB Res API
 * @brief Res XCB Protocol Implementation.
 * @{
 **/

module xcb.res;

import xcb.xcb;
import xcb.xproto;

extern (C):

enum int XCB_RES_MAJOR_VERSION = 1;
enum int XCB_RES_MINOR_VERSION = 2;

extern (C) __gshared extern xcb_extension_t xcb_res_id;

/**
 * @brief xcb_res_client_t
 **/
struct xcb_res_client_t {
	uint resource_base; /**<  */
	uint resource_mask; /**<  */
}

/**
 * @brief xcb_res_client_iterator_t
 **/
struct xcb_res_client_iterator_t {
	xcb_res_client_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_res_type_t
 **/
struct xcb_res_type_t {
	xcb_atom_t resource_type; /**<  */
	uint count; /**<  */
}

/**
 * @brief xcb_res_type_iterator_t
 **/
struct xcb_res_type_iterator_t {
	xcb_res_type_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_res_client_id_mask_t {
	XCB_RES_CLIENT_ID_MASK_CLIENT_XID = 1,
	XCB_RES_CLIENT_ID_MASK_LOCAL_CLIENT_PID = 2
}

alias XCB_RES_CLIENT_ID_MASK_CLIENT_XID = xcb_res_client_id_mask_t.XCB_RES_CLIENT_ID_MASK_CLIENT_XID;
alias XCB_RES_CLIENT_ID_MASK_LOCAL_CLIENT_PID = xcb_res_client_id_mask_t.XCB_RES_CLIENT_ID_MASK_LOCAL_CLIENT_PID;

/**
 * @brief xcb_res_client_id_spec_t
 **/
struct xcb_res_client_id_spec_t {
	uint client; /**<  */
	uint mask; /**<  */
}

/**
 * @brief xcb_res_client_id_spec_iterator_t
 **/
struct xcb_res_client_id_spec_iterator_t {
	xcb_res_client_id_spec_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_res_client_id_value_t
 **/
struct xcb_res_client_id_value_t {
	xcb_res_client_id_spec_t spec; /**<  */
	uint length; /**<  */
}

/**
 * @brief xcb_res_client_id_value_iterator_t
 **/
struct xcb_res_client_id_value_iterator_t {
	xcb_res_client_id_value_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_res_resource_id_spec_t
 **/
struct xcb_res_resource_id_spec_t {
	uint resource; /**<  */
	uint type; /**<  */
}

/**
 * @brief xcb_res_resource_id_spec_iterator_t
 **/
struct xcb_res_resource_id_spec_iterator_t {
	xcb_res_resource_id_spec_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_res_resource_size_spec_t
 **/
struct xcb_res_resource_size_spec_t {
	xcb_res_resource_id_spec_t spec; /**<  */
	uint bytes; /**<  */
	uint ref_count; /**<  */
	uint use_count; /**<  */
}

/**
 * @brief xcb_res_resource_size_spec_iterator_t
 **/
struct xcb_res_resource_size_spec_iterator_t {
	xcb_res_resource_size_spec_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_res_resource_size_value_t
 **/
struct xcb_res_resource_size_value_t {
	xcb_res_resource_size_spec_t size; /**<  */
	uint num_cross_references; /**<  */
}

/**
 * @brief xcb_res_resource_size_value_iterator_t
 **/
struct xcb_res_resource_size_value_iterator_t {
	xcb_res_resource_size_value_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_res_query_version_cookie_t
 **/
struct xcb_res_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_res_query_version. */
enum XCB_RES_QUERY_VERSION = 0;

/**
 * @brief xcb_res_query_version_request_t
 **/
struct xcb_res_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte client_major; /**<  */
	ubyte client_minor; /**<  */
}

/**
 * @brief xcb_res_query_version_reply_t
 **/
struct xcb_res_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort server_major; /**<  */
	ushort server_minor; /**<  */
}

/**
 * @brief xcb_res_query_clients_cookie_t
 **/
struct xcb_res_query_clients_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_res_query_clients. */
enum XCB_RES_QUERY_CLIENTS = 1;

/**
 * @brief xcb_res_query_clients_request_t
 **/
struct xcb_res_query_clients_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_res_query_clients_reply_t
 **/
struct xcb_res_query_clients_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_clients; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_res_query_client_resources_cookie_t
 **/
struct xcb_res_query_client_resources_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_res_query_client_resources. */
enum XCB_RES_QUERY_CLIENT_RESOURCES = 2;

/**
 * @brief xcb_res_query_client_resources_request_t
 **/
struct xcb_res_query_client_resources_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint xid; /**<  */
}

/**
 * @brief xcb_res_query_client_resources_reply_t
 **/
struct xcb_res_query_client_resources_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_types; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_res_query_client_pixmap_bytes_cookie_t
 **/
struct xcb_res_query_client_pixmap_bytes_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_res_query_client_pixmap_bytes. */
enum XCB_RES_QUERY_CLIENT_PIXMAP_BYTES = 3;

/**
 * @brief xcb_res_query_client_pixmap_bytes_request_t
 **/
struct xcb_res_query_client_pixmap_bytes_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint xid; /**<  */
}

/**
 * @brief xcb_res_query_client_pixmap_bytes_reply_t
 **/
struct xcb_res_query_client_pixmap_bytes_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint bytes; /**<  */
	uint bytes_overflow; /**<  */
}

/**
 * @brief xcb_res_query_client_ids_cookie_t
 **/
struct xcb_res_query_client_ids_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_res_query_client_ids. */
enum XCB_RES_QUERY_CLIENT_IDS = 4;

/**
 * @brief xcb_res_query_client_ids_request_t
 **/
struct xcb_res_query_client_ids_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint num_specs; /**<  */
}

/**
 * @brief xcb_res_query_client_ids_reply_t
 **/
struct xcb_res_query_client_ids_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_ids; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_res_query_resource_bytes_cookie_t
 **/
struct xcb_res_query_resource_bytes_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_res_query_resource_bytes. */
enum XCB_RES_QUERY_RESOURCE_BYTES = 5;

/**
 * @brief xcb_res_query_resource_bytes_request_t
 **/
struct xcb_res_query_resource_bytes_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint client; /**<  */
	uint num_specs; /**<  */
}

/**
 * @brief xcb_res_query_resource_bytes_reply_t
 **/
struct xcb_res_query_resource_bytes_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_sizes; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_res_client_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_res_client_t)
 */
void xcb_res_client_next(xcb_res_client_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_res_client_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_res_client_end(xcb_res_client_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_res_type_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_res_type_t)
 */
void xcb_res_type_next(xcb_res_type_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_res_type_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_res_type_end(xcb_res_type_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_res_client_id_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_res_client_id_spec_t)
 */
void xcb_res_client_id_spec_next(xcb_res_client_id_spec_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_res_client_id_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_res_client_id_spec_end(xcb_res_client_id_spec_iterator_t i /**< */ );

int xcb_res_client_id_value_sizeof(const void* _buffer /**< */ );

uint* xcb_res_client_id_value_value(const xcb_res_client_id_value_t* R /**< */ );

int xcb_res_client_id_value_value_length(const xcb_res_client_id_value_t* R /**< */ );

xcb_generic_iterator_t xcb_res_client_id_value_value_end(const xcb_res_client_id_value_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_res_client_id_value_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_res_client_id_value_t)
 */
void xcb_res_client_id_value_next(xcb_res_client_id_value_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_res_client_id_value_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_res_client_id_value_end(xcb_res_client_id_value_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_res_resource_id_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_res_resource_id_spec_t)
 */
void xcb_res_resource_id_spec_next(xcb_res_resource_id_spec_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_res_resource_id_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_res_resource_id_spec_end(xcb_res_resource_id_spec_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_res_resource_size_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_res_resource_size_spec_t)
 */
void xcb_res_resource_size_spec_next(xcb_res_resource_size_spec_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_res_resource_size_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_res_resource_size_spec_end(xcb_res_resource_size_spec_iterator_t i /**< */ );

int xcb_res_resource_size_value_sizeof(const void* _buffer /**< */ );

xcb_res_resource_size_spec_t* xcb_res_resource_size_value_cross_references(const xcb_res_resource_size_value_t* R /**< */ );

int xcb_res_resource_size_value_cross_references_length(const xcb_res_resource_size_value_t* R /**< */ );

xcb_res_resource_size_spec_iterator_t xcb_res_resource_size_value_cross_references_iterator(const xcb_res_resource_size_value_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_res_resource_size_value_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_res_resource_size_value_t)
 */
void xcb_res_resource_size_value_next(xcb_res_resource_size_value_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_res_resource_size_value_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_res_resource_size_value_end(xcb_res_resource_size_value_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_res_query_version_cookie_t xcb_res_query_version(xcb_connection_t* c /**< */ , ubyte client_major /**< */ , ubyte client_minor /**< */ );

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
xcb_res_query_version_cookie_t xcb_res_query_version_unchecked(xcb_connection_t* c /**< */ , ubyte client_major /**< */ , ubyte client_minor /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_res_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_res_query_version_reply_t* xcb_res_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_res_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_res_query_clients_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_res_query_clients_cookie_t xcb_res_query_clients(xcb_connection_t* c /**< */ );

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
xcb_res_query_clients_cookie_t xcb_res_query_clients_unchecked(xcb_connection_t* c /**< */ );

xcb_res_client_t* xcb_res_query_clients_clients(const xcb_res_query_clients_reply_t* R /**< */ );

int xcb_res_query_clients_clients_length(const xcb_res_query_clients_reply_t* R /**< */ );

xcb_res_client_iterator_t xcb_res_query_clients_clients_iterator(const xcb_res_query_clients_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_res_query_clients_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_res_query_clients_reply_t* xcb_res_query_clients_reply(xcb_connection_t* c /**< */ ,
	xcb_res_query_clients_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_res_query_client_resources_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_res_query_client_resources_cookie_t xcb_res_query_client_resources(xcb_connection_t* c /**< */ , uint xid /**< */ );

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
xcb_res_query_client_resources_cookie_t xcb_res_query_client_resources_unchecked(xcb_connection_t* c /**< */ , uint xid /**< */ );

xcb_res_type_t* xcb_res_query_client_resources_types(const xcb_res_query_client_resources_reply_t* R /**< */ );

int xcb_res_query_client_resources_types_length(const xcb_res_query_client_resources_reply_t* R /**< */ );

xcb_res_type_iterator_t xcb_res_query_client_resources_types_iterator(const xcb_res_query_client_resources_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_res_query_client_resources_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_res_query_client_resources_reply_t* xcb_res_query_client_resources_reply(xcb_connection_t* c /**< */ ,
	xcb_res_query_client_resources_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_res_query_client_pixmap_bytes_cookie_t xcb_res_query_client_pixmap_bytes(xcb_connection_t* c /**< */ , uint xid /**< */ );

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
xcb_res_query_client_pixmap_bytes_cookie_t xcb_res_query_client_pixmap_bytes_unchecked(xcb_connection_t* c /**< */ , uint xid /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_res_query_client_pixmap_bytes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_res_query_client_pixmap_bytes_reply_t* xcb_res_query_client_pixmap_bytes_reply(xcb_connection_t* c /**< */ ,
	xcb_res_query_client_pixmap_bytes_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_res_query_client_ids_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_res_query_client_ids_cookie_t xcb_res_query_client_ids(xcb_connection_t* c /**< */ , uint num_specs /**< */ ,
	const xcb_res_client_id_spec_t* specs /**< */ );

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
xcb_res_query_client_ids_cookie_t xcb_res_query_client_ids_unchecked(xcb_connection_t* c /**< */ , uint num_specs /**< */ ,
	const xcb_res_client_id_spec_t* specs /**< */ );

int xcb_res_query_client_ids_ids_length(const xcb_res_query_client_ids_reply_t* R /**< */ );

xcb_res_client_id_value_iterator_t xcb_res_query_client_ids_ids_iterator(const xcb_res_query_client_ids_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_res_query_client_ids_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_res_query_client_ids_reply_t* xcb_res_query_client_ids_reply(xcb_connection_t* c /**< */ ,
	xcb_res_query_client_ids_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_res_query_resource_bytes_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_res_query_resource_bytes_cookie_t xcb_res_query_resource_bytes(xcb_connection_t* c /**< */ , uint client /**< */ , uint num_specs /**< */ ,
	const xcb_res_resource_id_spec_t* specs /**< */ );

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
xcb_res_query_resource_bytes_cookie_t xcb_res_query_resource_bytes_unchecked(xcb_connection_t* c /**< */ , uint client /**< */ ,
	uint num_specs /**< */ , const xcb_res_resource_id_spec_t* specs /**< */ );

int xcb_res_query_resource_bytes_sizes_length(const xcb_res_query_resource_bytes_reply_t* R /**< */ );

xcb_res_resource_size_value_iterator_t xcb_res_query_resource_bytes_sizes_iterator(const xcb_res_query_resource_bytes_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_res_query_resource_bytes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_res_query_resource_bytes_reply_t* xcb_res_query_resource_bytes_reply(xcb_connection_t* c /**< */ ,
	xcb_res_query_resource_bytes_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @}
 */
