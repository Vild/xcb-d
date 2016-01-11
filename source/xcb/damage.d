/*
 * This file generated automatically from damage.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Damage_API XCB Damage API
 * @brief Damage XCB Protocol Implementation.
 * @{
 **/

module xcb.damage;

import xcb.xcb;
import xcb.xproto;
import xcb.xfixes;

extern (C):

enum int XCB_DAMAGE_MAJOR_VERSION = 1;
enum int XCB_DAMAGE_MINOR_VERSION = 1;

extern (C) __gshared extern xcb_extension_t xcb_damage_id;

alias xcb_damage_damage_t = uint;

/**
 * @brief xcb_damage_damage_iterator_t
 **/
struct xcb_damage_damage_iterator_t {
	xcb_damage_damage_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_damage_report_level_t {
	XCB_DAMAGE_REPORT_LEVEL_RAW_RECTANGLES = 0,
	XCB_DAMAGE_REPORT_LEVEL_DELTA_RECTANGLES = 1,
	XCB_DAMAGE_REPORT_LEVEL_BOUNDING_BOX = 2,
	XCB_DAMAGE_REPORT_LEVEL_NON_EMPTY = 3
}

alias XCB_DAMAGE_REPORT_LEVEL_RAW_RECTANGLES = xcb_damage_report_level_t.XCB_DAMAGE_REPORT_LEVEL_RAW_RECTANGLES;
alias XCB_DAMAGE_REPORT_LEVEL_DELTA_RECTANGLES = xcb_damage_report_level_t.XCB_DAMAGE_REPORT_LEVEL_DELTA_RECTANGLES;
alias XCB_DAMAGE_REPORT_LEVEL_BOUNDING_BOX = xcb_damage_report_level_t.XCB_DAMAGE_REPORT_LEVEL_BOUNDING_BOX;
alias XCB_DAMAGE_REPORT_LEVEL_NON_EMPTY = xcb_damage_report_level_t.XCB_DAMAGE_REPORT_LEVEL_NON_EMPTY;

/** Opcode for xcb_damage_bad_damage. */
enum XCB_DAMAGE_BAD_DAMAGE = 0;

/**
 * @brief xcb_damage_bad_damage_error_t
 **/
struct xcb_damage_bad_damage_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/**
 * @brief xcb_damage_query_version_cookie_t
 **/
struct xcb_damage_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_damage_query_version. */
enum XCB_DAMAGE_QUERY_VERSION = 0;

/**
 * @brief xcb_damage_query_version_request_t
 **/
struct xcb_damage_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint client_major_version; /**<  */
	uint client_minor_version; /**<  */
}

/**
 * @brief xcb_damage_query_version_reply_t
 **/
struct xcb_damage_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
	ubyte[16] pad1; /**<  */
}

/** Opcode for xcb_damage_create. */
enum XCB_DAMAGE_CREATE = 1;

/**
 * @brief xcb_damage_create_request_t
 **/
struct xcb_damage_create_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_damage_damage_t damage; /**<  */
	xcb_drawable_t drawable; /**<  */
	ubyte level; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_damage_destroy. */
enum XCB_DAMAGE_DESTROY = 2;

/**
 * @brief xcb_damage_destroy_request_t
 **/
struct xcb_damage_destroy_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_damage_damage_t damage; /**<  */
}

/** Opcode for xcb_damage_subtract. */
enum XCB_DAMAGE_SUBTRACT = 3;

/**
 * @brief xcb_damage_subtract_request_t
 **/
struct xcb_damage_subtract_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_damage_damage_t damage; /**<  */
	xcb_xfixes_region_t repair; /**<  */
	xcb_xfixes_region_t parts; /**<  */
}

/** Opcode for xcb_damage_add. */
enum XCB_DAMAGE_ADD = 4;

/**
 * @brief xcb_damage_add_request_t
 **/
struct xcb_damage_add_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_xfixes_region_t region; /**<  */
}

/** Opcode for xcb_damage_notify. */
enum XCB_DAMAGE_NOTIFY = 0;

/**
 * @brief xcb_damage_notify_event_t
 **/
struct xcb_damage_notify_event_t {
	ubyte response_type; /**<  */
	ubyte level; /**<  */
	ushort sequence; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_damage_damage_t damage; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	xcb_rectangle_t area; /**<  */
	xcb_rectangle_t geometry; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_damage_damage_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_damage_damage_t)
 */
void xcb_damage_damage_next(xcb_damage_damage_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_damage_damage_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_damage_damage_end(xcb_damage_damage_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_damage_query_version_cookie_t xcb_damage_query_version(xcb_connection_t* c /**< */ , uint client_major_version /**< */ ,
	uint client_minor_version /**< */ );

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
xcb_damage_query_version_cookie_t xcb_damage_query_version_unchecked(xcb_connection_t* c /**< */ ,
	uint client_major_version /**< */ , uint client_minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_damage_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_damage_query_version_reply_t* xcb_damage_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_damage_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_damage_create_checked(xcb_connection_t* c /**< */ , xcb_damage_damage_t damage /**< */ ,
	xcb_drawable_t drawable /**< */ , ubyte level /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_damage_create(xcb_connection_t* c /**< */ , xcb_damage_damage_t damage /**< */ , xcb_drawable_t drawable /**< */ ,
	ubyte level /**< */ );

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
xcb_void_cookie_t xcb_damage_destroy_checked(xcb_connection_t* c /**< */ , xcb_damage_damage_t damage /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_damage_destroy(xcb_connection_t* c /**< */ , xcb_damage_damage_t damage /**< */ );

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
xcb_void_cookie_t xcb_damage_subtract_checked(xcb_connection_t* c /**< */ , xcb_damage_damage_t damage /**< */ , xcb_xfixes_region_t repair /**< */ ,
	xcb_xfixes_region_t parts /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_damage_subtract(xcb_connection_t* c /**< */ , xcb_damage_damage_t damage /**< */ , xcb_xfixes_region_t repair /**< */ ,
	xcb_xfixes_region_t parts /**< */ );

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
xcb_void_cookie_t xcb_damage_add_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_xfixes_region_t region /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_damage_add(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_xfixes_region_t region /**< */ );

/**
 * @}
 */
