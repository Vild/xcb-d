/*
 * This file generated automatically from xselinux.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_SELinux_API XCB SELinux API
 * @brief SELinux XCB Protocol Implementation.
 * @{
 **/

module xcb.xselinux;

import xcb.xcb;
import xcb.xproto;

extern (C):

enum int XCB_SELINUX_MAJOR_VERSION = 1;
enum int XCB_SELINUX_MINOR_VERSION = 0;

extern (C) __gshared extern xcb_extension_t xcb_selinux_id;

/**
 * @brief xcb_selinux_query_version_cookie_t
 **/
struct xcb_selinux_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_query_version. */
enum XCB_SELINUX_QUERY_VERSION = 0;

/**
 * @brief xcb_selinux_query_version_request_t
 **/
struct xcb_selinux_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte client_major; /**<  */
	ubyte client_minor; /**<  */
}

/**
 * @brief xcb_selinux_query_version_reply_t
 **/
struct xcb_selinux_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort server_major; /**<  */
	ushort server_minor; /**<  */
}

/** Opcode for xcb_selinux_set_device_create_context. */
enum XCB_SELINUX_SET_DEVICE_CREATE_CONTEXT = 1;

/**
 * @brief xcb_selinux_set_device_create_context_request_t
 **/
struct xcb_selinux_set_device_create_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint context_len; /**<  */
}

/**
 * @brief xcb_selinux_get_device_create_context_cookie_t
 **/
struct xcb_selinux_get_device_create_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_device_create_context. */
enum XCB_SELINUX_GET_DEVICE_CREATE_CONTEXT = 2;

/**
 * @brief xcb_selinux_get_device_create_context_request_t
 **/
struct xcb_selinux_get_device_create_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_selinux_get_device_create_context_reply_t
 **/
struct xcb_selinux_get_device_create_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_selinux_set_device_context. */
enum XCB_SELINUX_SET_DEVICE_CONTEXT = 3;

/**
 * @brief xcb_selinux_set_device_context_request_t
 **/
struct xcb_selinux_set_device_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint device; /**<  */
	uint context_len; /**<  */
}

/**
 * @brief xcb_selinux_get_device_context_cookie_t
 **/
struct xcb_selinux_get_device_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_device_context. */
enum XCB_SELINUX_GET_DEVICE_CONTEXT = 4;

/**
 * @brief xcb_selinux_get_device_context_request_t
 **/
struct xcb_selinux_get_device_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint device; /**<  */
}

/**
 * @brief xcb_selinux_get_device_context_reply_t
 **/
struct xcb_selinux_get_device_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_selinux_set_window_create_context. */
enum XCB_SELINUX_SET_WINDOW_CREATE_CONTEXT = 5;

/**
 * @brief xcb_selinux_set_window_create_context_request_t
 **/
struct xcb_selinux_set_window_create_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint context_len; /**<  */
}

/**
 * @brief xcb_selinux_get_window_create_context_cookie_t
 **/
struct xcb_selinux_get_window_create_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_window_create_context. */
enum XCB_SELINUX_GET_WINDOW_CREATE_CONTEXT = 6;

/**
 * @brief xcb_selinux_get_window_create_context_request_t
 **/
struct xcb_selinux_get_window_create_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_selinux_get_window_create_context_reply_t
 **/
struct xcb_selinux_get_window_create_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_selinux_get_window_context_cookie_t
 **/
struct xcb_selinux_get_window_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_window_context. */
enum XCB_SELINUX_GET_WINDOW_CONTEXT = 7;

/**
 * @brief xcb_selinux_get_window_context_request_t
 **/
struct xcb_selinux_get_window_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_selinux_get_window_context_reply_t
 **/
struct xcb_selinux_get_window_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_selinux_list_item_t
 **/
struct xcb_selinux_list_item_t {
	xcb_atom_t name; /**<  */
	uint object_context_len; /**<  */
	uint data_context_len; /**<  */
}

/**
 * @brief xcb_selinux_list_item_iterator_t
 **/
struct xcb_selinux_list_item_iterator_t {
	xcb_selinux_list_item_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_selinux_set_property_create_context. */
enum XCB_SELINUX_SET_PROPERTY_CREATE_CONTEXT = 8;

/**
 * @brief xcb_selinux_set_property_create_context_request_t
 **/
struct xcb_selinux_set_property_create_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint context_len; /**<  */
}

/**
 * @brief xcb_selinux_get_property_create_context_cookie_t
 **/
struct xcb_selinux_get_property_create_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_property_create_context. */
enum XCB_SELINUX_GET_PROPERTY_CREATE_CONTEXT = 9;

/**
 * @brief xcb_selinux_get_property_create_context_request_t
 **/
struct xcb_selinux_get_property_create_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_selinux_get_property_create_context_reply_t
 **/
struct xcb_selinux_get_property_create_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_selinux_set_property_use_context. */
enum XCB_SELINUX_SET_PROPERTY_USE_CONTEXT = 10;

/**
 * @brief xcb_selinux_set_property_use_context_request_t
 **/
struct xcb_selinux_set_property_use_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint context_len; /**<  */
}

/**
 * @brief xcb_selinux_get_property_use_context_cookie_t
 **/
struct xcb_selinux_get_property_use_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_property_use_context. */
enum XCB_SELINUX_GET_PROPERTY_USE_CONTEXT = 11;

/**
 * @brief xcb_selinux_get_property_use_context_request_t
 **/
struct xcb_selinux_get_property_use_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_selinux_get_property_use_context_reply_t
 **/
struct xcb_selinux_get_property_use_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_selinux_get_property_context_cookie_t
 **/
struct xcb_selinux_get_property_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_property_context. */
enum XCB_SELINUX_GET_PROPERTY_CONTEXT = 12;

/**
 * @brief xcb_selinux_get_property_context_request_t
 **/
struct xcb_selinux_get_property_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_atom_t property; /**<  */
}

/**
 * @brief xcb_selinux_get_property_context_reply_t
 **/
struct xcb_selinux_get_property_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_selinux_get_property_data_context_cookie_t
 **/
struct xcb_selinux_get_property_data_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_property_data_context. */
enum XCB_SELINUX_GET_PROPERTY_DATA_CONTEXT = 13;

/**
 * @brief xcb_selinux_get_property_data_context_request_t
 **/
struct xcb_selinux_get_property_data_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_atom_t property; /**<  */
}

/**
 * @brief xcb_selinux_get_property_data_context_reply_t
 **/
struct xcb_selinux_get_property_data_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_selinux_list_properties_cookie_t
 **/
struct xcb_selinux_list_properties_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_list_properties. */
enum XCB_SELINUX_LIST_PROPERTIES = 14;

/**
 * @brief xcb_selinux_list_properties_request_t
 **/
struct xcb_selinux_list_properties_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_selinux_list_properties_reply_t
 **/
struct xcb_selinux_list_properties_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint properties_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_selinux_set_selection_create_context. */
enum XCB_SELINUX_SET_SELECTION_CREATE_CONTEXT = 15;

/**
 * @brief xcb_selinux_set_selection_create_context_request_t
 **/
struct xcb_selinux_set_selection_create_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint context_len; /**<  */
}

/**
 * @brief xcb_selinux_get_selection_create_context_cookie_t
 **/
struct xcb_selinux_get_selection_create_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_selection_create_context. */
enum XCB_SELINUX_GET_SELECTION_CREATE_CONTEXT = 16;

/**
 * @brief xcb_selinux_get_selection_create_context_request_t
 **/
struct xcb_selinux_get_selection_create_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_selinux_get_selection_create_context_reply_t
 **/
struct xcb_selinux_get_selection_create_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_selinux_set_selection_use_context. */
enum XCB_SELINUX_SET_SELECTION_USE_CONTEXT = 17;

/**
 * @brief xcb_selinux_set_selection_use_context_request_t
 **/
struct xcb_selinux_set_selection_use_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint context_len; /**<  */
}

/**
 * @brief xcb_selinux_get_selection_use_context_cookie_t
 **/
struct xcb_selinux_get_selection_use_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_selection_use_context. */
enum XCB_SELINUX_GET_SELECTION_USE_CONTEXT = 18;

/**
 * @brief xcb_selinux_get_selection_use_context_request_t
 **/
struct xcb_selinux_get_selection_use_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_selinux_get_selection_use_context_reply_t
 **/
struct xcb_selinux_get_selection_use_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_selinux_get_selection_context_cookie_t
 **/
struct xcb_selinux_get_selection_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_selection_context. */
enum XCB_SELINUX_GET_SELECTION_CONTEXT = 19;

/**
 * @brief xcb_selinux_get_selection_context_request_t
 **/
struct xcb_selinux_get_selection_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_atom_t selection; /**<  */
}

/**
 * @brief xcb_selinux_get_selection_context_reply_t
 **/
struct xcb_selinux_get_selection_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_selinux_get_selection_data_context_cookie_t
 **/
struct xcb_selinux_get_selection_data_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_selection_data_context. */
enum XCB_SELINUX_GET_SELECTION_DATA_CONTEXT = 20;

/**
 * @brief xcb_selinux_get_selection_data_context_request_t
 **/
struct xcb_selinux_get_selection_data_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_atom_t selection; /**<  */
}

/**
 * @brief xcb_selinux_get_selection_data_context_reply_t
 **/
struct xcb_selinux_get_selection_data_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_selinux_list_selections_cookie_t
 **/
struct xcb_selinux_list_selections_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_list_selections. */
enum XCB_SELINUX_LIST_SELECTIONS = 21;

/**
 * @brief xcb_selinux_list_selections_request_t
 **/
struct xcb_selinux_list_selections_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_selinux_list_selections_reply_t
 **/
struct xcb_selinux_list_selections_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint selections_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/**
 * @brief xcb_selinux_get_client_context_cookie_t
 **/
struct xcb_selinux_get_client_context_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_selinux_get_client_context. */
enum XCB_SELINUX_GET_CLIENT_CONTEXT = 22;

/**
 * @brief xcb_selinux_get_client_context_request_t
 **/
struct xcb_selinux_get_client_context_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint resource; /**<  */
}

/**
 * @brief xcb_selinux_get_client_context_reply_t
 **/
struct xcb_selinux_get_client_context_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint context_len; /**<  */
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
xcb_selinux_query_version_cookie_t xcb_selinux_query_version(xcb_connection_t* c /**< */ , ubyte client_major /**< */ , ubyte client_minor /**< */ );

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
xcb_selinux_query_version_cookie_t xcb_selinux_query_version_unchecked(xcb_connection_t* c /**< */ , ubyte client_major /**< */ ,
	ubyte client_minor /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_query_version_reply_t* xcb_selinux_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_set_device_create_context_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_selinux_set_device_create_context_checked(xcb_connection_t* c /**< */ , uint context_len /**< */ , const char* context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_selinux_set_device_create_context(xcb_connection_t* c /**< */ , uint context_len /**< */ , const char* context /**< */ );

int xcb_selinux_get_device_create_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_device_create_context_cookie_t xcb_selinux_get_device_create_context(xcb_connection_t* c /**< */ );

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
xcb_selinux_get_device_create_context_cookie_t xcb_selinux_get_device_create_context_unchecked(xcb_connection_t* c /**< */ );

char* xcb_selinux_get_device_create_context_context(const xcb_selinux_get_device_create_context_reply_t* R /**< */ );

int xcb_selinux_get_device_create_context_context_length(const xcb_selinux_get_device_create_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_device_create_context_context_end(const xcb_selinux_get_device_create_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_device_create_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_device_create_context_reply_t* xcb_selinux_get_device_create_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_device_create_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_set_device_context_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_selinux_set_device_context_checked(xcb_connection_t* c /**< */ , uint device /**< */ ,
	uint context_len /**< */ , const char* context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_selinux_set_device_context(xcb_connection_t* c /**< */ , uint device /**< */ , uint context_len /**< */ ,
	const char* context /**< */ );

int xcb_selinux_get_device_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_device_context_cookie_t xcb_selinux_get_device_context(xcb_connection_t* c /**< */ , uint device /**< */ );

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
xcb_selinux_get_device_context_cookie_t xcb_selinux_get_device_context_unchecked(xcb_connection_t* c /**< */ , uint device /**< */ );

char* xcb_selinux_get_device_context_context(const xcb_selinux_get_device_context_reply_t* R /**< */ );

int xcb_selinux_get_device_context_context_length(const xcb_selinux_get_device_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_device_context_context_end(const xcb_selinux_get_device_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_device_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_device_context_reply_t* xcb_selinux_get_device_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_device_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_set_window_create_context_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_selinux_set_window_create_context_checked(xcb_connection_t* c /**< */ , uint context_len /**< */ , const char* context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_selinux_set_window_create_context(xcb_connection_t* c /**< */ , uint context_len /**< */ , const char* context /**< */ );

int xcb_selinux_get_window_create_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_window_create_context_cookie_t xcb_selinux_get_window_create_context(xcb_connection_t* c /**< */ );

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
xcb_selinux_get_window_create_context_cookie_t xcb_selinux_get_window_create_context_unchecked(xcb_connection_t* c /**< */ );

char* xcb_selinux_get_window_create_context_context(const xcb_selinux_get_window_create_context_reply_t* R /**< */ );

int xcb_selinux_get_window_create_context_context_length(const xcb_selinux_get_window_create_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_window_create_context_context_end(const xcb_selinux_get_window_create_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_window_create_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_window_create_context_reply_t* xcb_selinux_get_window_create_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_window_create_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_get_window_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_window_context_cookie_t xcb_selinux_get_window_context(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_selinux_get_window_context_cookie_t xcb_selinux_get_window_context_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

char* xcb_selinux_get_window_context_context(const xcb_selinux_get_window_context_reply_t* R /**< */ );

int xcb_selinux_get_window_context_context_length(const xcb_selinux_get_window_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_window_context_context_end(const xcb_selinux_get_window_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_window_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_window_context_reply_t* xcb_selinux_get_window_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_window_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_list_item_sizeof(const void* _buffer /**< */ );

char* xcb_selinux_list_item_object_context(const xcb_selinux_list_item_t* R /**< */ );

int xcb_selinux_list_item_object_context_length(const xcb_selinux_list_item_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_list_item_object_context_end(const xcb_selinux_list_item_t* R /**< */ );

char* xcb_selinux_list_item_data_context(const xcb_selinux_list_item_t* R /**< */ );

int xcb_selinux_list_item_data_context_length(const xcb_selinux_list_item_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_list_item_data_context_end(const xcb_selinux_list_item_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_selinux_list_item_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_selinux_list_item_t)
 */
void xcb_selinux_list_item_next(xcb_selinux_list_item_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_selinux_list_item_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_selinux_list_item_end(xcb_selinux_list_item_iterator_t i /**< */ );

int xcb_selinux_set_property_create_context_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_selinux_set_property_create_context_checked(xcb_connection_t* c /**< */ , uint context_len /**< */ ,
	const char* context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_selinux_set_property_create_context(xcb_connection_t* c /**< */ , uint context_len /**< */ , const char* context /**< */ );

int xcb_selinux_get_property_create_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_property_create_context_cookie_t xcb_selinux_get_property_create_context(xcb_connection_t* c /**< */ );

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
xcb_selinux_get_property_create_context_cookie_t xcb_selinux_get_property_create_context_unchecked(xcb_connection_t* c /**< */ );

char* xcb_selinux_get_property_create_context_context(const xcb_selinux_get_property_create_context_reply_t* R /**< */ );

int xcb_selinux_get_property_create_context_context_length(const xcb_selinux_get_property_create_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_property_create_context_context_end(const xcb_selinux_get_property_create_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_property_create_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_property_create_context_reply_t* xcb_selinux_get_property_create_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_property_create_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_set_property_use_context_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_selinux_set_property_use_context_checked(xcb_connection_t* c /**< */ , uint context_len /**< */ , const char* context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_selinux_set_property_use_context(xcb_connection_t* c /**< */ , uint context_len /**< */ , const char* context /**< */ );

int xcb_selinux_get_property_use_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_property_use_context_cookie_t xcb_selinux_get_property_use_context(xcb_connection_t* c /**< */ );

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
xcb_selinux_get_property_use_context_cookie_t xcb_selinux_get_property_use_context_unchecked(xcb_connection_t* c /**< */ );

char* xcb_selinux_get_property_use_context_context(const xcb_selinux_get_property_use_context_reply_t* R /**< */ );

int xcb_selinux_get_property_use_context_context_length(const xcb_selinux_get_property_use_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_property_use_context_context_end(const xcb_selinux_get_property_use_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_property_use_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_property_use_context_reply_t* xcb_selinux_get_property_use_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_property_use_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_get_property_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_property_context_cookie_t xcb_selinux_get_property_context(xcb_connection_t* c /**< */ ,
	xcb_window_t window /**< */ , xcb_atom_t property /**< */ );

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
xcb_selinux_get_property_context_cookie_t xcb_selinux_get_property_context_unchecked(xcb_connection_t* c /**< */ ,
	xcb_window_t window /**< */ , xcb_atom_t property /**< */ );

char* xcb_selinux_get_property_context_context(const xcb_selinux_get_property_context_reply_t* R /**< */ );

int xcb_selinux_get_property_context_context_length(const xcb_selinux_get_property_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_property_context_context_end(const xcb_selinux_get_property_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_property_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_property_context_reply_t* xcb_selinux_get_property_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_property_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_get_property_data_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_property_data_context_cookie_t xcb_selinux_get_property_data_context(xcb_connection_t* c /**< */ ,
	xcb_window_t window /**< */ , xcb_atom_t property /**< */ );

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
xcb_selinux_get_property_data_context_cookie_t xcb_selinux_get_property_data_context_unchecked(xcb_connection_t* c /**< */ ,
	xcb_window_t window /**< */ , xcb_atom_t property /**< */ );

char* xcb_selinux_get_property_data_context_context(const xcb_selinux_get_property_data_context_reply_t* R /**< */ );

int xcb_selinux_get_property_data_context_context_length(const xcb_selinux_get_property_data_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_property_data_context_context_end(const xcb_selinux_get_property_data_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_property_data_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_property_data_context_reply_t* xcb_selinux_get_property_data_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_property_data_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_list_properties_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_list_properties_cookie_t xcb_selinux_list_properties(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_selinux_list_properties_cookie_t xcb_selinux_list_properties_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

int xcb_selinux_list_properties_properties_length(const xcb_selinux_list_properties_reply_t* R /**< */ );

xcb_selinux_list_item_iterator_t xcb_selinux_list_properties_properties_iterator(const xcb_selinux_list_properties_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_list_properties_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_list_properties_reply_t* xcb_selinux_list_properties_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_list_properties_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_set_selection_create_context_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_selinux_set_selection_create_context_checked(xcb_connection_t* c /**< */ , uint context_len /**< */ ,
	const char* context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_selinux_set_selection_create_context(xcb_connection_t* c /**< */ , uint context_len /**< */ , const char* context /**< */ );

int xcb_selinux_get_selection_create_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_selection_create_context_cookie_t xcb_selinux_get_selection_create_context(xcb_connection_t* c /**< */ );

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
xcb_selinux_get_selection_create_context_cookie_t xcb_selinux_get_selection_create_context_unchecked(xcb_connection_t* c /**< */ );

char* xcb_selinux_get_selection_create_context_context(const xcb_selinux_get_selection_create_context_reply_t* R /**< */ );

int xcb_selinux_get_selection_create_context_context_length(const xcb_selinux_get_selection_create_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_selection_create_context_context_end(const xcb_selinux_get_selection_create_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_selection_create_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_selection_create_context_reply_t* xcb_selinux_get_selection_create_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_selection_create_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_set_selection_use_context_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_selinux_set_selection_use_context_checked(xcb_connection_t* c /**< */ , uint context_len /**< */ , const char* context /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_selinux_set_selection_use_context(xcb_connection_t* c /**< */ , uint context_len /**< */ , const char* context /**< */ );

int xcb_selinux_get_selection_use_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_selection_use_context_cookie_t xcb_selinux_get_selection_use_context(xcb_connection_t* c /**< */ );

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
xcb_selinux_get_selection_use_context_cookie_t xcb_selinux_get_selection_use_context_unchecked(xcb_connection_t* c /**< */ );

char* xcb_selinux_get_selection_use_context_context(const xcb_selinux_get_selection_use_context_reply_t* R /**< */ );

int xcb_selinux_get_selection_use_context_context_length(const xcb_selinux_get_selection_use_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_selection_use_context_context_end(const xcb_selinux_get_selection_use_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_selection_use_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_selection_use_context_reply_t* xcb_selinux_get_selection_use_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_selection_use_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_get_selection_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_selection_context_cookie_t xcb_selinux_get_selection_context(xcb_connection_t* c /**< */ , xcb_atom_t selection /**< */ );

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
xcb_selinux_get_selection_context_cookie_t xcb_selinux_get_selection_context_unchecked(xcb_connection_t* c /**< */ , xcb_atom_t selection /**< */ );

char* xcb_selinux_get_selection_context_context(const xcb_selinux_get_selection_context_reply_t* R /**< */ );

int xcb_selinux_get_selection_context_context_length(const xcb_selinux_get_selection_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_selection_context_context_end(const xcb_selinux_get_selection_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_selection_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_selection_context_reply_t* xcb_selinux_get_selection_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_selection_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_get_selection_data_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_selection_data_context_cookie_t xcb_selinux_get_selection_data_context(xcb_connection_t* c /**< */ , xcb_atom_t selection /**< */ );

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
xcb_selinux_get_selection_data_context_cookie_t xcb_selinux_get_selection_data_context_unchecked(xcb_connection_t* c /**< */ ,
	xcb_atom_t selection /**< */ );

char* xcb_selinux_get_selection_data_context_context(const xcb_selinux_get_selection_data_context_reply_t* R /**< */ );

int xcb_selinux_get_selection_data_context_context_length(const xcb_selinux_get_selection_data_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_selection_data_context_context_end(const xcb_selinux_get_selection_data_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_selection_data_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_selection_data_context_reply_t* xcb_selinux_get_selection_data_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_selection_data_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_list_selections_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_list_selections_cookie_t xcb_selinux_list_selections(xcb_connection_t* c /**< */ );

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
xcb_selinux_list_selections_cookie_t xcb_selinux_list_selections_unchecked(xcb_connection_t* c /**< */ );

int xcb_selinux_list_selections_selections_length(const xcb_selinux_list_selections_reply_t* R /**< */ );

xcb_selinux_list_item_iterator_t xcb_selinux_list_selections_selections_iterator(const xcb_selinux_list_selections_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_list_selections_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_list_selections_reply_t* xcb_selinux_list_selections_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_list_selections_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_selinux_get_client_context_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_selinux_get_client_context_cookie_t xcb_selinux_get_client_context(xcb_connection_t* c /**< */ , uint resource /**< */ );

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
xcb_selinux_get_client_context_cookie_t xcb_selinux_get_client_context_unchecked(xcb_connection_t* c /**< */ , uint resource /**< */ );

char* xcb_selinux_get_client_context_context(const xcb_selinux_get_client_context_reply_t* R /**< */ );

int xcb_selinux_get_client_context_context_length(const xcb_selinux_get_client_context_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_selinux_get_client_context_context_end(const xcb_selinux_get_client_context_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_selinux_get_client_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_selinux_get_client_context_reply_t* xcb_selinux_get_client_context_reply(xcb_connection_t* c /**< */ ,
	xcb_selinux_get_client_context_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * @}
 */
