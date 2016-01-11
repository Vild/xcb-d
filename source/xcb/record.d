/*
 * This file generated automatically from record.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Record_API XCB Record API
 * @brief Record XCB Protocol Implementation.
 * @{
 **/

module xcb.record;

import xcb.xcb;

extern (C):

enum int XCB_RECORD_MAJOR_VERSION = 1;
enum int XCB_RECORD_MINOR_VERSION = 13;

extern (C) __gshared extern xcb_extension_t xcb_record_id;

alias xcb_record_context_t = uint;

/**
 * @brief xcb_record_context_iterator_t
 **/
struct xcb_record_context_iterator_t {
	xcb_record_context_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_record_range_8_t
 **/
struct xcb_record_range_8_t {
	ubyte first; /**<  */
	ubyte last; /**<  */
}

/**
 * @brief xcb_record_range_8_iterator_t
 **/
struct xcb_record_range_8_iterator_t {
	xcb_record_range_8_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_record_range_16_t
 **/
struct xcb_record_range_16_t {
	ushort first; /**<  */
	ushort last; /**<  */
}

/**
 * @brief xcb_record_range_16_iterator_t
 **/
struct xcb_record_range_16_iterator_t {
	xcb_record_range_16_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_record_ext_range_t
 **/
struct xcb_record_ext_range_t {
	xcb_record_range_8_t major; /**<  */
	xcb_record_range_16_t minor; /**<  */
}

/**
 * @brief xcb_record_ext_range_iterator_t
 **/
struct xcb_record_ext_range_iterator_t {
	xcb_record_ext_range_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_record_range_t
 **/
struct xcb_record_range_t {
	xcb_record_range_8_t core_requests; /**<  */
	xcb_record_range_8_t core_replies; /**<  */
	xcb_record_ext_range_t ext_requests; /**<  */
	xcb_record_ext_range_t ext_replies; /**<  */
	xcb_record_range_8_t delivered_events; /**<  */
	xcb_record_range_8_t device_events; /**<  */
	xcb_record_range_8_t errors; /**<  */
	ubyte client_started; /**<  */
	ubyte client_died; /**<  */
}

/**
 * @brief xcb_record_range_iterator_t
 **/
struct xcb_record_range_iterator_t {
	xcb_record_range_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_record_element_header_t = ubyte;

/**
 * @brief xcb_record_element_header_iterator_t
 **/
struct xcb_record_element_header_iterator_t {
	xcb_record_element_header_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_record_h_type_t {
	XCB_RECORD_H_TYPE_FROM_SERVER_TIME = 1,
	XCB_RECORD_H_TYPE_FROM_CLIENT_TIME = 2,
	XCB_RECORD_H_TYPE_FROM_CLIENT_SEQUENCE = 4
}

alias XCB_RECORD_H_TYPE_FROM_SERVER_TIME = xcb_record_h_type_t.XCB_RECORD_H_TYPE_FROM_SERVER_TIME;
alias XCB_RECORD_H_TYPE_FROM_CLIENT_TIME = xcb_record_h_type_t.XCB_RECORD_H_TYPE_FROM_CLIENT_TIME;
alias XCB_RECORD_H_TYPE_FROM_CLIENT_SEQUENCE = xcb_record_h_type_t.XCB_RECORD_H_TYPE_FROM_CLIENT_SEQUENCE;

alias xcb_record_client_spec_t = uint;

/**
 * @brief xcb_record_client_spec_iterator_t
 **/
struct xcb_record_client_spec_iterator_t {
	xcb_record_client_spec_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_record_cs_t {
	XCB_RECORD_CS_CURRENT_CLIENTS = 1,
	XCB_RECORD_CS_FUTURE_CLIENTS = 2,
	XCB_RECORD_CS_ALL_CLIENTS = 3
}

alias XCB_RECORD_CS_CURRENT_CLIENTS = xcb_record_cs_t.XCB_RECORD_CS_CURRENT_CLIENTS;
alias XCB_RECORD_CS_FUTURE_CLIENTS = xcb_record_cs_t.XCB_RECORD_CS_FUTURE_CLIENTS;
alias XCB_RECORD_CS_ALL_CLIENTS = xcb_record_cs_t.XCB_RECORD_CS_ALL_CLIENTS;

/**
 * @brief xcb_record_client_info_t
 **/
struct xcb_record_client_info_t {
	xcb_record_client_spec_t client_resource; /**<  */
	uint num_ranges; /**<  */
}

/**
 * @brief xcb_record_client_info_iterator_t
 **/
struct xcb_record_client_info_iterator_t {
	xcb_record_client_info_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_record_bad_context. */
enum XCB_RECORD_BAD_CONTEXT = 0;

/**
 * @brief xcb_record_bad_context_error_t
 **/
struct xcb_record_bad_context_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
	uint invalid_record; /**<  */
}

/**
 * @brief xcb_record_query_version_cookie_t
 **/
struct xcb_record_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_record_query_version. */
enum XCB_RECORD_QUERY_VERSION = 0;

/**
 * @brief xcb_record_query_version_request_t
 **/
struct xcb_record_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ushort major_version; /**<  */
	ushort minor_version; /**<  */
}

/**
 * @brief xcb_record_query_version_reply_t
 **/
struct xcb_record_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort major_version; /**<  */
	ushort minor_version; /**<  */
}

/** Opcode for xcb_record_create_context. */
enum XCB_RECORD_CREATE_CONTEXT = 1;

/**
 * @brief xcb_record_create_context_request_t
 **/
struct xcb_record_create_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_record_context_t context; /**<  */
	xcb_record_element_header_t element_header; /**<  */
	ubyte[3] pad0; /**<  */
	uint num_client_specs; /**<  */
	uint num_ranges; /**<  */
}

/** Opcode for xcb_record_register_clients. */
enum XCB_RECORD_REGISTER_CLIENTS = 2;

/**
 * @brief xcb_record_register_clients_request_t
 **/
struct xcb_record_register_clients_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_record_context_t context; /**<  */
	xcb_record_element_header_t element_header; /**<  */
	ubyte[3] pad0; /**<  */
	uint num_client_specs; /**<  */
	uint num_ranges; /**<  */
}

/** Opcode for xcb_record_unregister_clients. */
enum XCB_RECORD_UNREGISTER_CLIENTS = 3;

/**
 * @brief xcb_record_unregister_clients_request_t
 **/
struct xcb_record_unregister_clients_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_record_context_t context; /**<  */
	uint num_client_specs; /**<  */
}

/**
 * @brief xcb_record_get_context_cookie_t
 **/
struct xcb_record_get_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_record_get_context. */
enum XCB_RECORD_GET_CONTEXT = 4;

/**
 * @brief xcb_record_get_context_request_t
 **/
struct xcb_record_get_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_record_context_t context; /**<  */
}

/**
 * @brief xcb_record_get_context_reply_t
 **/
struct xcb_record_get_context_reply_t {
	ubyte response_type; /**<  */
	ubyte enabled; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_record_element_header_t element_header; /**<  */
	ubyte[3] pad0; /**<  */
	uint num_intercepted_clients; /**<  */
	ubyte[16] pad1; /**<  */
}

/**
 * @brief xcb_record_enable_context_cookie_t
 **/
struct xcb_record_enable_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_record_enable_context. */
enum XCB_RECORD_ENABLE_CONTEXT = 5;

/**
 * @brief xcb_record_enable_context_request_t
 **/
struct xcb_record_enable_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_record_context_t context; /**<  */
}

/**
 * @brief xcb_record_enable_context_reply_t
 **/
struct xcb_record_enable_context_reply_t {
	ubyte response_type; /**<  */
	ubyte category; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_record_element_header_t element_header; /**<  */
	ubyte client_swapped; /**<  */
	ubyte[2] pad0; /**<  */
	uint xid_base; /**<  */
	uint server_time; /**<  */
	uint rec_sequence_num; /**<  */
	ubyte[8] pad1; /**<  */
}

/** Opcode for xcb_record_disable_context. */
enum XCB_RECORD_DISABLE_CONTEXT = 6;

/**
 * @brief xcb_record_disable_context_request_t
 **/
struct xcb_record_disable_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_record_context_t context; /**<  */
}

/** Opcode for xcb_record_free_context. */
enum XCB_RECORD_FREE_CONTEXT = 7;

/**
 * @brief xcb_record_free_context_request_t
 **/
struct xcb_record_free_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_record_context_t context; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_record_context_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_record_context_t)
 */
void xcb_record_context_next(xcb_record_context_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_record_context_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_record_context_end(xcb_record_context_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_record_range_8_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_record_range_8_t)
 */
void xcb_record_range_8_next(xcb_record_range_8_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_record_range_8_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_record_range_8_end(xcb_record_range_8_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_record_range_16_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_record_range_16_t)
 */
void xcb_record_range_16_next(xcb_record_range_16_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_record_range_16_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_record_range_16_end(xcb_record_range_16_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_record_ext_range_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_record_ext_range_t)
 */
void xcb_record_ext_range_next(xcb_record_ext_range_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_record_ext_range_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_record_ext_range_end(xcb_record_ext_range_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_record_range_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_record_range_t)
 */
void xcb_record_range_next(xcb_record_range_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_record_range_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_record_range_end(xcb_record_range_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_record_element_header_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_record_element_header_t)
 */
void xcb_record_element_header_next(xcb_record_element_header_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_record_element_header_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_record_element_header_end(xcb_record_element_header_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_record_client_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_record_client_spec_t)
 */
void xcb_record_client_spec_next(xcb_record_client_spec_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_record_client_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_record_client_spec_end(xcb_record_client_spec_iterator_t i /**< */ );

int xcb_record_client_info_sizeof(const void* _buffer /**< */ );

xcb_record_range_t* xcb_record_client_info_ranges(const xcb_record_client_info_t* R /**< */ );

int xcb_record_client_info_ranges_length(const xcb_record_client_info_t* R /**< */ );

xcb_record_range_iterator_t xcb_record_client_info_ranges_iterator(const xcb_record_client_info_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_record_client_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_record_client_info_t)
 */
void xcb_record_client_info_next(xcb_record_client_info_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_record_client_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_record_client_info_end(xcb_record_client_info_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_record_query_version_cookie_t xcb_record_query_version(xcb_connection_t* c /**< */ , ushort major_version /**< */ , ushort minor_version /**< */ );

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
xcb_record_query_version_cookie_t xcb_record_query_version_unchecked(xcb_connection_t* c /**< */ , ushort major_version /**< */ ,
	ushort minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_record_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_record_query_version_reply_t* xcb_record_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_record_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_record_create_context_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_record_create_context_checked(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ ,
	xcb_record_element_header_t element_header /**< */ , uint num_client_specs /**< */ , uint num_ranges /**< */ ,
	const xcb_record_client_spec_t* client_specs /**< */ , const xcb_record_range_t* ranges /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_record_create_context(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ ,
	xcb_record_element_header_t element_header /**< */ , uint num_client_specs /**< */ , uint num_ranges /**< */ ,
	const xcb_record_client_spec_t* client_specs /**< */ , const xcb_record_range_t* ranges /**< */ );

int xcb_record_register_clients_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_record_register_clients_checked(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ ,
	xcb_record_element_header_t element_header /**< */ , uint num_client_specs /**< */ , uint num_ranges /**< */ ,
	const xcb_record_client_spec_t* client_specs /**< */ , const xcb_record_range_t* ranges /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_record_register_clients(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ ,
	xcb_record_element_header_t element_header /**< */ , uint num_client_specs /**< */ , uint num_ranges /**< */ ,
	const xcb_record_client_spec_t* client_specs /**< */ , const xcb_record_range_t* ranges /**< */ );

int xcb_record_unregister_clients_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_record_unregister_clients_checked(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ ,
	uint num_client_specs /**< */ , const xcb_record_client_spec_t* client_specs /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_record_unregister_clients(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ , uint num_client_specs /**< */ ,
	const xcb_record_client_spec_t* client_specs /**< */ );

int xcb_record_get_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_record_get_context_cookie_t xcb_record_get_context(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ );

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
xcb_record_get_context_cookie_t xcb_record_get_context_unchecked(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ );

int xcb_record_get_context_intercepted_clients_length(const xcb_record_get_context_reply_t* R /**< */ );

xcb_record_client_info_iterator_t xcb_record_get_context_intercepted_clients_iterator(const xcb_record_get_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_record_get_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_record_get_context_reply_t* xcb_record_get_context_reply(xcb_connection_t* c /**< */ , xcb_record_get_context_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_record_enable_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_record_enable_context_cookie_t xcb_record_enable_context(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ );

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
xcb_record_enable_context_cookie_t xcb_record_enable_context_unchecked(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ );

ubyte* xcb_record_enable_context_data(const xcb_record_enable_context_reply_t* R /**< */ );

int xcb_record_enable_context_data_length(const xcb_record_enable_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_record_enable_context_data_end(const xcb_record_enable_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_record_enable_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_record_enable_context_reply_t* xcb_record_enable_context_reply(xcb_connection_t* c /**< */ ,
	xcb_record_enable_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_record_disable_context_checked(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_record_disable_context(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ );

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
xcb_void_cookie_t xcb_record_free_context_checked(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_record_free_context(xcb_connection_t* c /**< */ , xcb_record_context_t context /**< */ );

/**
 * @}
 */
