/*
 * This file generated automatically from dri3.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_DRI3_API XCB DRI3 API
 * @brief DRI3 XCB Protocol Implementation.
 * @{
 **/

module xcb.dri3;

import xcb.xcb;
import xcb.xproto;

extern (C):

enum int XCB_DRI3_MAJOR_VERSION = 1;
enum int XCB_DRI3_MINOR_VERSION = 0;

extern (C) __gshared extern xcb_extension_t xcb_dri3_id;

/**
 * @brief xcb_dri3_query_version_cookie_t
 **/
struct xcb_dri3_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_dri3_query_version. */
enum XCB_DRI3_QUERY_VERSION = 0;

/**
 * @brief xcb_dri3_query_version_request_t
 **/
struct xcb_dri3_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
}

/**
 * @brief xcb_dri3_query_version_reply_t
 **/
struct xcb_dri3_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
}

/**
 * @brief xcb_dri3_open_cookie_t
 **/
struct xcb_dri3_open_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_dri3_open. */
enum XCB_DRI3_OPEN = 1;

/**
 * @brief xcb_dri3_open_request_t
 **/
struct xcb_dri3_open_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	uint provider; /**<  */
}

/**
 * @brief xcb_dri3_open_reply_t
 **/
struct xcb_dri3_open_reply_t {
	ubyte response_type; /**<  */
	ubyte nfd; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad0; /**<  */
}

/** Opcode for xcb_dri3_pixmap_from_buffer. */
enum XCB_DRI3_PIXMAP_FROM_BUFFER = 2;

/**
 * @brief xcb_dri3_pixmap_from_buffer_request_t
 **/
struct xcb_dri3_pixmap_from_buffer_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_pixmap_t pixmap; /**<  */
	xcb_drawable_t drawable; /**<  */
	uint size; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort stride; /**<  */
	ubyte depth; /**<  */
	ubyte bpp; /**<  */
}

/**
 * @brief xcb_dri3_buffer_from_pixmap_cookie_t
 **/
struct xcb_dri3_buffer_from_pixmap_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_dri3_buffer_from_pixmap. */
enum XCB_DRI3_BUFFER_FROM_PIXMAP = 3;

/**
 * @brief xcb_dri3_buffer_from_pixmap_request_t
 **/
struct xcb_dri3_buffer_from_pixmap_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_pixmap_t pixmap; /**<  */
}

/**
 * @brief xcb_dri3_buffer_from_pixmap_reply_t
 **/
struct xcb_dri3_buffer_from_pixmap_reply_t {
	ubyte response_type; /**<  */
	ubyte nfd; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint size; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	ushort stride; /**<  */
	ubyte depth; /**<  */
	ubyte bpp; /**<  */
	ubyte[12] pad0; /**<  */
}

/** Opcode for xcb_dri3_fence_from_fd. */
enum XCB_DRI3_FENCE_FROM_FD = 4;

/**
 * @brief xcb_dri3_fence_from_fd_request_t
 **/
struct xcb_dri3_fence_from_fd_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	uint fence; /**<  */
	ubyte initially_triggered; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * @brief xcb_dri3_fd_from_fence_cookie_t
 **/
struct xcb_dri3_fd_from_fence_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_dri3_fd_from_fence. */
enum XCB_DRI3_FD_FROM_FENCE = 5;

/**
 * @brief xcb_dri3_fd_from_fence_request_t
 **/
struct xcb_dri3_fd_from_fence_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	uint fence; /**<  */
}

/**
 * @brief xcb_dri3_fd_from_fence_reply_t
 **/
struct xcb_dri3_fd_from_fence_reply_t {
	ubyte response_type; /**<  */
	ubyte nfd; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte[24] pad0; /**<  */
}

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_dri3_query_version_cookie_t xcb_dri3_query_version(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ );

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
xcb_dri3_query_version_cookie_t xcb_dri3_query_version_unchecked(xcb_connection_t* c /**< */ , uint major_version /**< */ ,
	uint minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_dri3_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_dri3_query_version_reply_t* xcb_dri3_query_version_reply(xcb_connection_t* c /**< */ , xcb_dri3_query_version_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_dri3_open_cookie_t xcb_dri3_open(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , uint provider /**< */ );

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
xcb_dri3_open_cookie_t xcb_dri3_open_unchecked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , uint provider /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_dri3_open_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_dri3_open_reply_t* xcb_dri3_open_reply(xcb_connection_t* c /**< */ , xcb_dri3_open_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Return the reply fds
 * @param c      The connection
 * @param reply  The reply
 *
 * Returns the array of reply fds of the request asked by
 *
 * The returned value must be freed by the caller using free().
 */
int* xcb_dri3_open_reply_fds(xcb_connection_t* c /**< */ , xcb_dri3_open_reply_t* reply /**< */ );

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
xcb_void_cookie_t xcb_dri3_pixmap_from_buffer_checked(xcb_connection_t* c /**< */ , xcb_pixmap_t pixmap /**< */ , xcb_drawable_t drawable /**< */ ,
	uint size /**< */ , ushort width /**< */ , ushort height /**< */ , ushort stride /**< */ , ubyte depth /**< */ , ubyte bpp /**< */ ,
	int pixmap_fd /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_dri3_pixmap_from_buffer(xcb_connection_t* c /**< */ , xcb_pixmap_t pixmap /**< */ , xcb_drawable_t drawable /**< */ , uint size /**< */ ,
	ushort width /**< */ , ushort height /**< */ , ushort stride /**< */ , ubyte depth /**< */ , ubyte bpp /**< */ , int pixmap_fd /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_dri3_buffer_from_pixmap_cookie_t xcb_dri3_buffer_from_pixmap(xcb_connection_t* c /**< */ , xcb_pixmap_t pixmap /**< */ );

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
xcb_dri3_buffer_from_pixmap_cookie_t xcb_dri3_buffer_from_pixmap_unchecked(xcb_connection_t* c /**< */ , xcb_pixmap_t pixmap /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_dri3_buffer_from_pixmap_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_dri3_buffer_from_pixmap_reply_t* xcb_dri3_buffer_from_pixmap_reply(xcb_connection_t* c /**< */ ,
	xcb_dri3_buffer_from_pixmap_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

/**
 * Return the reply fds
 * @param c      The connection
 * @param reply  The reply
 *
 * Returns the array of reply fds of the request asked by
 *
 * The returned value must be freed by the caller using free().
 */
int* xcb_dri3_buffer_from_pixmap_reply_fds(xcb_connection_t* c /**< */ , xcb_dri3_buffer_from_pixmap_reply_t* reply /**< */ );

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
xcb_void_cookie_t xcb_dri3_fence_from_fd_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , uint fence /**< */ ,
	ubyte initially_triggered /**< */ , int fence_fd /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_dri3_fence_from_fd(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , uint fence /**< */ ,
	ubyte initially_triggered /**< */ , int fence_fd /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_dri3_fd_from_fence_cookie_t xcb_dri3_fd_from_fence(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , uint fence /**< */ );

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
xcb_dri3_fd_from_fence_cookie_t xcb_dri3_fd_from_fence_unchecked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ ,
	uint fence /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_dri3_fd_from_fence_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_dri3_fd_from_fence_reply_t* xcb_dri3_fd_from_fence_reply(xcb_connection_t* c /**< */ , xcb_dri3_fd_from_fence_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

/**
 * Return the reply fds
 * @param c      The connection
 * @param reply  The reply
 *
 * Returns the array of reply fds of the request asked by
 *
 * The returned value must be freed by the caller using free().
 */
int* xcb_dri3_fd_from_fence_reply_fds(xcb_connection_t* c /**< */ , xcb_dri3_fd_from_fence_reply_t* reply /**< */ );

/**
 * @}
 */
