module xcb.xcbext;

import xcb.xcb;

import core.sys.posix.sys.uio : iovec;

extern (C):

/* xcb_ext.c */

struct xcb_extension_t {
	const(char)* name;
	int global_id;
}

/* xcb_out.c */

struct xcb_protocol_request_t {
	size_t count;
	xcb_extension_t* ext;
	ubyte opcode;
	ubyte isvoid;
}

enum xcb_send_request_flags_t {
	XCB_REQUEST_CHECKED = 1 << 0,
	XCB_REQUEST_RAW = 1 << 1,
	XCB_REQUEST_DISCARD_REPLY = 1 << 2,
	XCB_REQUEST_REPLY_FDS = 1 << 3
}

alias XCB_REQUEST_CHECKED = xcb_send_request_flags_t.XCB_REQUEST_CHECKED;
alias XCB_REQUEST_RAW = xcb_send_request_flags_t.XCB_REQUEST_RAW;
alias XCB_REQUEST_DISCARD_REPLY = xcb_send_request_flags_t.XCB_REQUEST_DISCARD_REPLY;
alias XCB_REQUEST_REPLY_FDS = xcb_send_request_flags_t.XCB_REQUEST_REPLY_FDS;

/**
 * @brief Send a request to the server.
 * @param c: The connection to the X server.
 * @param flags: A combination of flags from the xcb_send_request_flags_t enumeration.
 * @param vector: Data to send; must have two iovecs before start for internal use.
 * @param request: Information about the request to be sent.
 * @return The request's sequence number on success, 0 otherwise.
 *
 * This function sends a new request to the X server. The data of the request is
 * given as an array of @c iovecs in the @p vector argument. The length of that
 * array and the neccessary management information are given in the @p request
 * argument.
 *
 * When this function returns, the request might or might not be sent already.
 * Use xcb_flush() to make sure that it really was sent.
 *
 * Please note that this function is not the prefered way for sending requests.
 * It's better to use the generated wrapper functions.
 *
 * Please note that xcb might use index -1 and -2 of the @p vector array internally,
 * so they must be valid!
 */
uint xcb_send_request(xcb_connection_t* c, int flags, iovec* vector, const(xcb_protocol_request_t)* request);

/**
 * @brief Send a request to the server, with 64-bit sequence number returned.
 * @param c: The connection to the X server.
 * @param flags: A combination of flags from the xcb_send_request_flags_t enumeration.
 * @param vector: Data to send; must have two iovecs before start for internal use.
 * @param request: Information about the request to be sent.
 * @return The request's sequence number on success, 0 otherwise.
 *
 * This function sends a new request to the X server. The data of the request is
 * given as an array of @c iovecs in the @p vector argument. The length of that
 * array and the neccessary management information are given in the @p request
 * argument.
 *
 * When this function returns, the request might or might not be sent already.
 * Use xcb_flush() to make sure that it really was sent.
 *
 * Please note that this function is not the prefered way for sending requests.
 * It's better to use the generated wrapper functions.
 *
 * Please note that xcb might use index -1 and -2 of the @p vector array internally,
 * so they must be valid!
 */
ulong xcb_send_request64(xcb_connection_t* c, int flags, iovec* vector, const(xcb_protocol_request_t)* request);

/**
 * @brief Send a file descriptor to the server in the next call to xcb_send_request.
 * @param c: The connection to the X server.
 * @param fd: The file descriptor to send.
 *
 * After this function returns, the file descriptor given is owned by xcb and
 * will be closed eventually.
 *
 * FIXME: How the heck is this supposed to work in a thread-safe way? There is a
 * race between two threads doing xcb_send_fd(); xcb_send_request(); at the same
 * time.
 */
void xcb_send_fd(xcb_connection_t* c, int fd);

/**
 * @brief Take over the write side of the socket
 * @param c: The connection to the X server.
 * @param return_socket: Callback function that will be called when xcb wants
 *                        to use the socket again.
 * @param closure: Argument to the callback function.
 * @param flags: A combination of flags from the xcb_send_request_flags_t enumeration.
 * @param sent: Location to the sequence number of the last sequence request.
 *              Must not be NULL.
 * @return 1 on success, else 0.
 *
 * xcb_take_socket allows external code to ask XCB for permission to
 * take over the write side of the socket and send raw data with
 * xcb_writev. xcb_take_socket provides the sequence number of the last
 * request XCB sent. The caller of xcb_take_socket must supply a
 * callback which XCB can call when it wants the write side of the
 * socket back to make a request. This callback synchronizes with the
 * external socket owner and flushes any output queues if appropriate.
 * If you are sending requests which won't cause a reply, please note the
 * comment for xcb_writev which explains some sequence number wrap issues.
 *
 * All replies that are generated while the socket is owned externally have
 * @p flags applied to them. For example, use XCB_REQUEST_CHECK if you don't
 * want errors to go to xcb's normal error handling, but instead having to be
 * picked up via xcb_wait_for_reply(), xcb_poll_for_reply() or
 * xcb_request_check().
 */

private alias return_socket_t = void function(void* closure);

int xcb_take_socket(xcb_connection_t* c, return_socket_t return_socket, void* closure, int flags, ulong* sent);

/**
 * @brief Send raw data to the X server.
 * @param c: The connection to the X server.
 * @param vector: Array of data to be sent.
 * @param count: Number of entries in @p vector.
 * @param requests: Number of requests that are being sent.
 * @return 1 on success, else 0.
 *
 * You must own the write-side of the socket (you've called
 * xcb_take_socket, and haven't returned from return_socket yet) to call
 * xcb_writev. Also, the iovec must have at least 1 byte of data in it.
 * You have to make sure that xcb can detect sequence number wraps correctly.
 * This means that the first request you send after xcb_take_socket must cause a
 * reply (e.g. just insert a GetInputFocus request). After every (1 << 16) - 1
 * requests without a reply, you have to insert a request which will cause a
 * reply. You can again use GetInputFocus for this. You do not have to wait for
 * any of the GetInputFocus replies, but can instead handle them via
 * xcb_discard_reply().
 */
int xcb_writev(xcb_connection_t* c, iovec* vector, int count, ulong requests);

/* xcb_in.c */

/**
 * @brief Wait for the reply of a given request.
 * @param c: The connection to the X server.
 * @param request: Sequence number of the request as returned by xcb_send_request().
 * @param e: Location to store errors in, or NULL. Ignored for unchecked requests.
 *
 * Returns the reply to the given request or returns null in the event of
 * errors. Blocks until the reply or error for the request arrives, or an I/O
 * error occurs.
 */
void* xcb_wait_for_reply(xcb_connection_t* c, uint request, xcb_generic_error_t** e);

/**
 * @brief Wait for the reply of a given request, with 64-bit sequence number
 * @param c: The connection to the X server.
 * @param request: 64-bit sequence number of the request as returned by xcb_send_request64().
 * @param e: Location to store errors in, or NULL. Ignored for unchecked requests.
 *
 * Returns the reply to the given request or returns null in the event of
 * errors. Blocks until the reply or error for the request arrives, or an I/O
 * error occurs.
 *
 * Unlike its xcb_wait_for_reply() counterpart, the given sequence number is not
 * automatically "widened" to 64-bit.
 */
void* xcb_wait_for_reply64(xcb_connection_t* c, ulong request, xcb_generic_error_t** e);

/**
 * @brief Poll for the reply of a given request.
 * @param c: The connection to the X server.
 * @param request: Sequence number of the request as returned by xcb_send_request().
 * @param reply: Location to store the reply in, must not be NULL.
 * @param e: Location to store errors in, or NULL. Ignored for unchecked requests.
 * @return 1 when the reply to the request was returned, else 0.
 *
 * Checks if the reply to the given request already received. Does not block.
 */
int xcb_poll_for_reply(xcb_connection_t* c, uint request, void** reply, xcb_generic_error_t** error);

/**
 * @brief Poll for the reply of a given request, with 64-bit sequence number.
 * @param c: The connection to the X server.
 * @param request: 64-bit sequence number of the request as returned by xcb_send_request().
 * @param reply: Location to store the reply in, must not be NULL.
 * @param e: Location to store errors in, or NULL. Ignored for unchecked requests.
 * @return 1 when the reply to the request was returned, else 0.
 *
 * Checks if the reply to the given request already received. Does not block.
 *
 * Unlike its xcb_poll_for_reply() counterpart, the given sequence number is not
 * automatically "widened" to 64-bit.
 */
int xcb_poll_for_reply64(xcb_connection_t* c, ulong request, void** reply, xcb_generic_error_t** error);

/**
 * @brief Don't use this, only needed by the generated code.
 * @param c: The connection to the X server.
 * @param reply: A reply that was received from the server
 * @param replylen: The size of the reply.
 * @return Pointer to the location where received file descriptors are stored.
 */
int* xcb_get_reply_fds(xcb_connection_t* c, void* reply, size_t replylen);

/* xcb_util.c */

/**
 * @param mask: The mask to check
 * @return The number of set bits in the mask
 */
int xcb_popcount(uint mask);

/**
 * @param list: The base of an array
 * @param len: The length of the array
 * @return The sum of all entries in the array.
 */
int xcb_sumof(ubyte* list, int len);
