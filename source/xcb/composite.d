/*
 * This file generated automatically from composite.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Composite_API XCB Composite API
 * @brief Composite XCB Protocol Implementation.
 * @{
 **/

module xcb.composite;

import xcb.xcb;
import xcb.xproto;
import xcb.xfixes;

extern (C):

enum int XCB_COMPOSITE_MAJOR_VERSION = 0;
enum int XCB_COMPOSITE_MINOR_VERSION = 4;

extern (C) __gshared extern xcb_extension_t xcb_composite_id;

enum xcb_composite_redirect_t {
	XCB_COMPOSITE_REDIRECT_AUTOMATIC = 0,
	XCB_COMPOSITE_REDIRECT_MANUAL = 1
}

alias XCB_COMPOSITE_REDIRECT_AUTOMATIC = xcb_composite_redirect_t.XCB_COMPOSITE_REDIRECT_AUTOMATIC;
alias XCB_COMPOSITE_REDIRECT_MANUAL = xcb_composite_redirect_t.XCB_COMPOSITE_REDIRECT_MANUAL;

/**
 * @brief xcb_composite_query_version_cookie_t
 **/
struct xcb_composite_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_composite_query_version. */
enum XCB_COMPOSITE_QUERY_VERSION = 0;

/**
 * @brief xcb_composite_query_version_request_t
 **/
struct xcb_composite_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint client_major_version; /**<  */
	uint client_minor_version; /**<  */
}

/**
 * @brief xcb_composite_query_version_reply_t
 **/
struct xcb_composite_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
	ubyte[16] pad1; /**<  */
}

/** Opcode for xcb_composite_redirect_window. */
enum XCB_COMPOSITE_REDIRECT_WINDOW = 1;

/**
 * @brief xcb_composite_redirect_window_request_t
 **/
struct xcb_composite_redirect_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ubyte update; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_composite_redirect_subwindows. */
enum XCB_COMPOSITE_REDIRECT_SUBWINDOWS = 2;

/**
 * @brief xcb_composite_redirect_subwindows_request_t
 **/
struct xcb_composite_redirect_subwindows_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ubyte update; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_composite_unredirect_window. */
enum XCB_COMPOSITE_UNREDIRECT_WINDOW = 3;

/**
 * @brief xcb_composite_unredirect_window_request_t
 **/
struct xcb_composite_unredirect_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ubyte update; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_composite_unredirect_subwindows. */
enum XCB_COMPOSITE_UNREDIRECT_SUBWINDOWS = 4;

/**
 * @brief xcb_composite_unredirect_subwindows_request_t
 **/
struct xcb_composite_unredirect_subwindows_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	ubyte update; /**<  */
	ubyte[3] pad0; /**<  */
}

/** Opcode for xcb_composite_create_region_from_border_clip. */
enum XCB_COMPOSITE_CREATE_REGION_FROM_BORDER_CLIP = 5;

/**
 * @brief xcb_composite_create_region_from_border_clip_request_t
 **/
struct xcb_composite_create_region_from_border_clip_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_xfixes_region_t region; /**<  */
	xcb_window_t window; /**<  */
}

/** Opcode for xcb_composite_name_window_pixmap. */
enum XCB_COMPOSITE_NAME_WINDOW_PIXMAP = 6;

/**
 * @brief xcb_composite_name_window_pixmap_request_t
 **/
struct xcb_composite_name_window_pixmap_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_pixmap_t pixmap; /**<  */
}

/**
 * @brief xcb_composite_get_overlay_window_cookie_t
 **/
struct xcb_composite_get_overlay_window_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_composite_get_overlay_window. */
enum XCB_COMPOSITE_GET_OVERLAY_WINDOW = 7;

/**
 * @brief xcb_composite_get_overlay_window_request_t
 **/
struct xcb_composite_get_overlay_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 * @brief xcb_composite_get_overlay_window_reply_t
 **/
struct xcb_composite_get_overlay_window_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_window_t overlay_win; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_composite_release_overlay_window. */
enum XCB_COMPOSITE_RELEASE_OVERLAY_WINDOW = 8;

/**
 * @brief xcb_composite_release_overlay_window_request_t
 **/
struct xcb_composite_release_overlay_window_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
}

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_composite_query_version_cookie_t xcb_composite_query_version(xcb_connection_t* c /**< */ , uint client_major_version /**< */ ,
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
xcb_composite_query_version_cookie_t xcb_composite_query_version_unchecked(xcb_connection_t* c /**< */ , uint client_major_version /**< */ ,
	uint client_minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_composite_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_composite_query_version_reply_t* xcb_composite_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_composite_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_composite_redirect_window_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ubyte update /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_composite_redirect_window(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ubyte update /**< */ );

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
xcb_void_cookie_t xcb_composite_redirect_subwindows_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ubyte update /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_composite_redirect_subwindows(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ubyte update /**< */ );

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
xcb_void_cookie_t xcb_composite_unredirect_window_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ubyte update /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_composite_unredirect_window(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ubyte update /**< */ );

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
xcb_void_cookie_t xcb_composite_unredirect_subwindows_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ubyte update /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_composite_unredirect_subwindows(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , ubyte update /**< */ );

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
xcb_void_cookie_t xcb_composite_create_region_from_border_clip_checked(xcb_connection_t* c /**< */ ,
	xcb_xfixes_region_t region /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_composite_create_region_from_border_clip(xcb_connection_t* c /**< */ , xcb_xfixes_region_t region /**< */ ,
	xcb_window_t window /**< */ );

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
xcb_void_cookie_t xcb_composite_name_window_pixmap_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_pixmap_t pixmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_composite_name_window_pixmap(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_pixmap_t pixmap /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_composite_get_overlay_window_cookie_t xcb_composite_get_overlay_window(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

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
xcb_composite_get_overlay_window_cookie_t xcb_composite_get_overlay_window_unchecked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_composite_get_overlay_window_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_composite_get_overlay_window_reply_t* xcb_composite_get_overlay_window_reply(xcb_connection_t* c /**< */ ,
	xcb_composite_get_overlay_window_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_composite_release_overlay_window_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_composite_release_overlay_window(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ );

/**
 * @}
 */
