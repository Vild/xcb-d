/*
 * This file generated automatically from present.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Present_API XCB Present API
 * @brief Present XCB Protocol Implementation.
 * @{
 **/

module xcb.present;

import xcb.xcb;
import xcb.xproto;
import xcb.randr;
import xcb.xfixes;
import xcb.sync;

extern (C):

enum int XCB_PRESENT_MAJOR_VERSION = 1;
enum int XCB_PRESENT_MINOR_VERSION = 0;

extern (C) __gshared extern xcb_extension_t xcb_present_id;

enum xcb_present_event_enum_t {
	XCB_PRESENT_EVENT_CONFIGURE_NOTIFY = 0,
	XCB_PRESENT_EVENT_COMPLETE_NOTIFY = 1,
	XCB_PRESENT_EVENT_IDLE_NOTIFY = 2,
	XCB_PRESENT_EVENT_REDIRECT_NOTIFY = 3
}

alias XCB_PRESENT_EVENT_CONFIGURE_NOTIFY = xcb_present_event_enum_t.XCB_PRESENT_EVENT_CONFIGURE_NOTIFY;
alias XCB_PRESENT_EVENT_COMPLETE_NOTIFY = xcb_present_event_enum_t.XCB_PRESENT_EVENT_COMPLETE_NOTIFY;
alias XCB_PRESENT_EVENT_IDLE_NOTIFY = xcb_present_event_enum_t.XCB_PRESENT_EVENT_IDLE_NOTIFY;
alias XCB_PRESENT_EVENT_REDIRECT_NOTIFY = xcb_present_event_enum_t.XCB_PRESENT_EVENT_REDIRECT_NOTIFY;

enum xcb_present_event_mask_t {
	XCB_PRESENT_EVENT_MASK_NO_EVENT = 0,
	XCB_PRESENT_EVENT_MASK_CONFIGURE_NOTIFY = 1,
	XCB_PRESENT_EVENT_MASK_COMPLETE_NOTIFY = 2,
	XCB_PRESENT_EVENT_MASK_IDLE_NOTIFY = 4,
	XCB_PRESENT_EVENT_MASK_REDIRECT_NOTIFY = 8
}

alias XCB_PRESENT_EVENT_MASK_NO_EVENT = xcb_present_event_mask_t.XCB_PRESENT_EVENT_MASK_NO_EVENT;
alias XCB_PRESENT_EVENT_MASK_CONFIGURE_NOTIFY = xcb_present_event_mask_t.XCB_PRESENT_EVENT_MASK_CONFIGURE_NOTIFY;
alias XCB_PRESENT_EVENT_MASK_COMPLETE_NOTIFY = xcb_present_event_mask_t.XCB_PRESENT_EVENT_MASK_COMPLETE_NOTIFY;
alias XCB_PRESENT_EVENT_MASK_IDLE_NOTIFY = xcb_present_event_mask_t.XCB_PRESENT_EVENT_MASK_IDLE_NOTIFY;
alias XCB_PRESENT_EVENT_MASK_REDIRECT_NOTIFY = xcb_present_event_mask_t.XCB_PRESENT_EVENT_MASK_REDIRECT_NOTIFY;

enum xcb_present_option_t {
	XCB_PRESENT_OPTION_NONE = 0,
	XCB_PRESENT_OPTION_ASYNC = 1,
	XCB_PRESENT_OPTION_COPY = 2,
	XCB_PRESENT_OPTION_UST = 4
}

alias XCB_PRESENT_OPTION_NONE = xcb_present_option_t.XCB_PRESENT_OPTION_NONE;
alias XCB_PRESENT_OPTION_ASYNC = xcb_present_option_t.XCB_PRESENT_OPTION_ASYNC;
alias XCB_PRESENT_OPTION_COPY = xcb_present_option_t.XCB_PRESENT_OPTION_COPY;
alias XCB_PRESENT_OPTION_UST = xcb_present_option_t.XCB_PRESENT_OPTION_UST;

enum xcb_present_capability_t {
	XCB_PRESENT_CAPABILITY_NONE = 0,
	XCB_PRESENT_CAPABILITY_ASYNC = 1,
	XCB_PRESENT_CAPABILITY_FENCE = 2,
	XCB_PRESENT_CAPABILITY_UST = 4
}

alias XCB_PRESENT_CAPABILITY_NONE = xcb_present_capability_t.XCB_PRESENT_CAPABILITY_NONE;
alias XCB_PRESENT_CAPABILITY_ASYNC = xcb_present_capability_t.XCB_PRESENT_CAPABILITY_ASYNC;
alias XCB_PRESENT_CAPABILITY_FENCE = xcb_present_capability_t.XCB_PRESENT_CAPABILITY_FENCE;
alias XCB_PRESENT_CAPABILITY_UST = xcb_present_capability_t.XCB_PRESENT_CAPABILITY_UST;

enum xcb_present_complete_kind_t {
	XCB_PRESENT_COMPLETE_KIND_PIXMAP = 0,
	XCB_PRESENT_COMPLETE_KIND_NOTIFY_MSC = 1
}

alias XCB_PRESENT_COMPLETE_KIND_PIXMAP = xcb_present_complete_kind_t.XCB_PRESENT_COMPLETE_KIND_PIXMAP;
alias XCB_PRESENT_COMPLETE_KIND_NOTIFY_MSC = xcb_present_complete_kind_t.XCB_PRESENT_COMPLETE_KIND_NOTIFY_MSC;

enum xcb_present_complete_mode_t {
	XCB_PRESENT_COMPLETE_MODE_COPY = 0,
	XCB_PRESENT_COMPLETE_MODE_FLIP = 1,
	XCB_PRESENT_COMPLETE_MODE_SKIP = 2
}

alias XCB_PRESENT_COMPLETE_MODE_COPY = xcb_present_complete_mode_t.XCB_PRESENT_COMPLETE_MODE_COPY;
alias XCB_PRESENT_COMPLETE_MODE_FLIP = xcb_present_complete_mode_t.XCB_PRESENT_COMPLETE_MODE_FLIP;
alias XCB_PRESENT_COMPLETE_MODE_SKIP = xcb_present_complete_mode_t.XCB_PRESENT_COMPLETE_MODE_SKIP;

/**
 * @brief xcb_present_notify_t
 **/
struct xcb_present_notify_t {
	xcb_window_t window; /**<  */
	uint serial; /**<  */
}

/**
 * @brief xcb_present_notify_iterator_t
 **/
struct xcb_present_notify_iterator_t {
	xcb_present_notify_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_present_query_version_cookie_t
 **/
struct xcb_present_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_present_query_version. */
enum XCB_PRESENT_QUERY_VERSION = 0;

/**
 * @brief xcb_present_query_version_request_t
 **/
struct xcb_present_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
}

/**
 * @brief xcb_present_query_version_reply_t
 **/
struct xcb_present_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
}

/** Opcode for xcb_present_pixmap. */
enum XCB_PRESENT_PIXMAP = 1;

/**
 * @brief xcb_present_pixmap_request_t
 **/
struct xcb_present_pixmap_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	xcb_pixmap_t pixmap; /**<  */
	uint serial; /**<  */
	xcb_xfixes_region_t valid; /**<  */
	xcb_xfixes_region_t update; /**<  */
	short x_off; /**<  */
	short y_off; /**<  */
	xcb_randr_crtc_t target_crtc; /**<  */
	xcb_sync_fence_t wait_fence; /**<  */
	xcb_sync_fence_t idle_fence; /**<  */
	uint options; /**<  */
	ubyte[4] pad0; /**<  */
	ulong target_msc; /**<  */
	ulong divisor; /**<  */
	ulong remainder; /**<  */
}

/** Opcode for xcb_present_notify_msc. */
enum XCB_PRESENT_NOTIFY_MSC = 2;

/**
 * @brief xcb_present_notify_msc_request_t
 **/
struct xcb_present_notify_msc_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_window_t window; /**<  */
	uint serial; /**<  */
	ubyte[4] pad0; /**<  */
	ulong target_msc; /**<  */
	ulong divisor; /**<  */
	ulong remainder; /**<  */
}

alias xcb_present_event_t = uint;

/**
 * @brief xcb_present_event_iterator_t
 **/
struct xcb_present_event_iterator_t {
	xcb_present_event_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_present_select_input. */
enum XCB_PRESENT_SELECT_INPUT = 3;

/**
 * @brief xcb_present_select_input_request_t
 **/
struct xcb_present_select_input_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_present_event_t eid; /**<  */
	xcb_window_t window; /**<  */
	uint event_mask; /**<  */
}

/**
 * @brief xcb_present_query_capabilities_cookie_t
 **/
struct xcb_present_query_capabilities_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_present_query_capabilities. */
enum XCB_PRESENT_QUERY_CAPABILITIES = 4;

/**
 * @brief xcb_present_query_capabilities_request_t
 **/
struct xcb_present_query_capabilities_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint target; /**<  */
}

/**
 * @brief xcb_present_query_capabilities_reply_t
 **/
struct xcb_present_query_capabilities_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint capabilities; /**<  */
}

/** Opcode for xcb_present_generic. */
enum XCB_PRESENT_GENERIC = 0;

/**
 * @brief xcb_present_generic_event_t
 **/
struct xcb_present_generic_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort evtype; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_present_event_t event; /**<  */
}

/** Opcode for xcb_present_configure_notify. */
enum XCB_PRESENT_CONFIGURE_NOTIFY = 0;

/**
 * @brief xcb_present_configure_notify_event_t
 **/
struct xcb_present_configure_notify_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_present_event_t event; /**<  */
	xcb_window_t window; /**<  */
	short x; /**<  */
	short y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
	short off_x; /**<  */
	short off_y; /**<  */
	uint full_sequence; /**<  */
	ushort pixmap_width; /**<  */
	ushort pixmap_height; /**<  */
	uint pixmap_flags; /**<  */
}

/** Opcode for xcb_present_complete_notify. */
enum XCB_PRESENT_COMPLETE_NOTIFY = 1;

/**
 * @brief xcb_present_complete_notify_event_t
 **/
struct xcb_present_complete_notify_event_t {
align(1):
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	ubyte kind; /**<  */
	ubyte mode; /**<  */
	xcb_present_event_t event; /**<  */
	xcb_window_t window; /**<  */
	uint serial; /**<  */
	ulong ust; /**<  */
	uint full_sequence; /**<  */
	ulong msc; /**<  */
}

/** Opcode for xcb_present_idle_notify. */
enum XCB_PRESENT_IDLE_NOTIFY = 2;

/**
 * @brief xcb_present_idle_notify_event_t
 **/
struct xcb_present_idle_notify_event_t {
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_present_event_t event; /**<  */
	xcb_window_t window; /**<  */
	uint serial; /**<  */
	xcb_pixmap_t pixmap; /**<  */
	xcb_sync_fence_t idle_fence; /**<  */
	uint full_sequence; /**<  */
}

/** Opcode for xcb_present_redirect_notify. */
enum XCB_PRESENT_REDIRECT_NOTIFY = 3;

/**
 * @brief xcb_present_redirect_notify_event_t
 **/
struct xcb_present_redirect_notify_event_t {
align(1):
	ubyte response_type; /**<  */
	ubyte extension; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ushort event_type; /**<  */
	ubyte update_window; /**<  */
	ubyte pad0; /**<  */
	xcb_present_event_t event; /**<  */
	xcb_window_t event_window; /**<  */
	xcb_window_t window; /**<  */
	xcb_pixmap_t pixmap; /**<  */
	uint serial; /**<  */
	uint full_sequence; /**<  */
	xcb_xfixes_region_t valid_region; /**<  */
	xcb_xfixes_region_t update_region; /**<  */
	xcb_rectangle_t valid_rect; /**<  */
	xcb_rectangle_t update_rect; /**<  */
	short x_off; /**<  */
	short y_off; /**<  */
	xcb_randr_crtc_t target_crtc; /**<  */
	xcb_sync_fence_t wait_fence; /**<  */
	xcb_sync_fence_t idle_fence; /**<  */
	uint options; /**<  */
	ubyte[4] pad1; /**<  */
	ulong target_msc; /**<  */
	ulong divisor; /**<  */
	ulong remainder; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_present_notify_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_present_notify_t)
 */
void xcb_present_notify_next(xcb_present_notify_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_present_notify_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_present_notify_end(xcb_present_notify_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_present_query_version_cookie_t xcb_present_query_version(xcb_connection_t* c /**< */ , uint major_version /**< */ , uint minor_version /**< */ );

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
xcb_present_query_version_cookie_t xcb_present_query_version_unchecked(xcb_connection_t* c /**< */ , uint major_version /**< */ ,
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
 * xcb_present_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_present_query_version_reply_t* xcb_present_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_present_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_present_pixmap_sizeof(const void* _buffer /**< */ , uint notifies_len /**< */ );

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
xcb_void_cookie_t xcb_present_pixmap_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_pixmap_t pixmap /**< */ , uint serial /**< */ ,
	xcb_xfixes_region_t valid /**< */ , xcb_xfixes_region_t update /**< */ , short x_off /**< */ , short y_off /**< */ , xcb_randr_crtc_t target_crtc /**< */ ,
	xcb_sync_fence_t wait_fence /**< */ , xcb_sync_fence_t idle_fence /**< */ , uint options /**< */ , ulong target_msc /**< */ , ulong divisor /**< */ ,
	ulong remainder /**< */ , uint notifies_len /**< */ , const xcb_present_notify_t* notifies /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_present_pixmap(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , xcb_pixmap_t pixmap /**< */ , uint serial /**< */ ,
	xcb_xfixes_region_t valid /**< */ , xcb_xfixes_region_t update /**< */ , short x_off /**< */ , short y_off /**< */ , xcb_randr_crtc_t target_crtc /**< */ ,
	xcb_sync_fence_t wait_fence /**< */ , xcb_sync_fence_t idle_fence /**< */ , uint options /**< */ , ulong target_msc /**< */ , ulong divisor /**< */ ,
	ulong remainder /**< */ , uint notifies_len /**< */ , const xcb_present_notify_t* notifies /**< */ );

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
xcb_void_cookie_t xcb_present_notify_msc_checked(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , uint serial /**< */ , ulong target_msc /**< */ ,
	ulong divisor /**< */ , ulong remainder /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_present_notify_msc(xcb_connection_t* c /**< */ , xcb_window_t window /**< */ , uint serial /**< */ , ulong target_msc /**< */ ,
	ulong divisor /**< */ , ulong remainder /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_present_event_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_present_event_t)
 */
void xcb_present_event_next(xcb_present_event_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_present_event_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_present_event_end(xcb_present_event_iterator_t i /**< */ );

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
xcb_void_cookie_t xcb_present_select_input_checked(xcb_connection_t* c /**< */ , xcb_present_event_t eid /**< */ ,
	xcb_window_t window /**< */ , uint event_mask /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_present_select_input(xcb_connection_t* c /**< */ , xcb_present_event_t eid /**< */ , xcb_window_t window /**< */ ,
	uint event_mask /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_present_query_capabilities_cookie_t xcb_present_query_capabilities(xcb_connection_t* c /**< */ , uint target /**< */ );

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
xcb_present_query_capabilities_cookie_t xcb_present_query_capabilities_unchecked(xcb_connection_t* c /**< */ , uint target /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_present_query_capabilities_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_present_query_capabilities_reply_t* xcb_present_query_capabilities_reply(xcb_connection_t* c /**< */ ,
	xcb_present_query_capabilities_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_present_redirect_notify_sizeof(const void* _buffer /**< */ , uint notifies_len /**< */ );

/**
 * @}
 */
