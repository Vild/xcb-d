/*
 * This file generated automatically from sync.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Sync_API XCB Sync API
 * @brief Sync XCB Protocol Implementation.
 * @{
 **/

module xcb.sync;

import xcb.xcb;
import xcb.xproto;

extern (C):

enum int XCB_SYNC_MAJOR_VERSION = 3;
enum int XCB_SYNC_MINOR_VERSION = 1;

extern (C) __gshared extern xcb_extension_t xcb_sync_id;

alias xcb_sync_alarm_t = uint;

/**
 * @brief xcb_sync_alarm_iterator_t
 **/
struct xcb_sync_alarm_iterator_t {
	xcb_sync_alarm_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_sync_alarmstate_t {
	XCB_SYNC_ALARMSTATE_ACTIVE = 0,
	XCB_SYNC_ALARMSTATE_INACTIVE = 1,
	XCB_SYNC_ALARMSTATE_DESTROYED = 2
}

alias XCB_SYNC_ALARMSTATE_ACTIVE = xcb_sync_alarmstate_t.XCB_SYNC_ALARMSTATE_ACTIVE;
alias XCB_SYNC_ALARMSTATE_INACTIVE = xcb_sync_alarmstate_t.XCB_SYNC_ALARMSTATE_INACTIVE;
alias XCB_SYNC_ALARMSTATE_DESTROYED = xcb_sync_alarmstate_t.XCB_SYNC_ALARMSTATE_DESTROYED;

alias xcb_sync_counter_t = uint;

/**
 * @brief xcb_sync_counter_iterator_t
 **/
struct xcb_sync_counter_iterator_t {
	xcb_sync_counter_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_sync_fence_t = uint;

/**
 * @brief xcb_sync_fence_iterator_t
 **/
struct xcb_sync_fence_iterator_t {
	xcb_sync_fence_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

enum xcb_sync_testtype_t {
	XCB_SYNC_TESTTYPE_POSITIVE_TRANSITION = 0,
	XCB_SYNC_TESTTYPE_NEGATIVE_TRANSITION = 1,
	XCB_SYNC_TESTTYPE_POSITIVE_COMPARISON = 2,
	XCB_SYNC_TESTTYPE_NEGATIVE_COMPARISON = 3
}

alias XCB_SYNC_TESTTYPE_POSITIVE_TRANSITION = xcb_sync_testtype_t.XCB_SYNC_TESTTYPE_POSITIVE_TRANSITION;
alias XCB_SYNC_TESTTYPE_NEGATIVE_TRANSITION = xcb_sync_testtype_t.XCB_SYNC_TESTTYPE_NEGATIVE_TRANSITION;
alias XCB_SYNC_TESTTYPE_POSITIVE_COMPARISON = xcb_sync_testtype_t.XCB_SYNC_TESTTYPE_POSITIVE_COMPARISON;
alias XCB_SYNC_TESTTYPE_NEGATIVE_COMPARISON = xcb_sync_testtype_t.XCB_SYNC_TESTTYPE_NEGATIVE_COMPARISON;

enum xcb_sync_valuetype_t {
	XCB_SYNC_VALUETYPE_ABSOLUTE = 0,
	XCB_SYNC_VALUETYPE_RELATIVE = 1
}

alias XCB_SYNC_VALUETYPE_ABSOLUTE = xcb_sync_valuetype_t.XCB_SYNC_VALUETYPE_ABSOLUTE;
alias XCB_SYNC_VALUETYPE_RELATIVE = xcb_sync_valuetype_t.XCB_SYNC_VALUETYPE_RELATIVE;

enum xcb_sync_ca_t {
	XCB_SYNC_CA_COUNTER = 1,
	XCB_SYNC_CA_VALUE_TYPE = 2,
	XCB_SYNC_CA_VALUE = 4,
	XCB_SYNC_CA_TEST_TYPE = 8,
	XCB_SYNC_CA_DELTA = 16,
	XCB_SYNC_CA_EVENTS = 32
}

alias XCB_SYNC_CA_COUNTER = xcb_sync_ca_t.XCB_SYNC_CA_COUNTER;
alias XCB_SYNC_CA_VALUE_TYPE = xcb_sync_ca_t.XCB_SYNC_CA_VALUE_TYPE;
alias XCB_SYNC_CA_VALUE = xcb_sync_ca_t.XCB_SYNC_CA_VALUE;
alias XCB_SYNC_CA_TEST_TYPE = xcb_sync_ca_t.XCB_SYNC_CA_TEST_TYPE;
alias XCB_SYNC_CA_DELTA = xcb_sync_ca_t.XCB_SYNC_CA_DELTA;
alias XCB_SYNC_CA_EVENTS = xcb_sync_ca_t.XCB_SYNC_CA_EVENTS;

/**
 * @brief xcb_sync_int64_t
 **/
struct xcb_sync_int64_t {
	int hi; /**<  */
	uint lo; /**<  */
}

/**
 * @brief xcb_sync_int64_iterator_t
 **/
struct xcb_sync_int64_iterator_t {
	xcb_sync_int64_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_sync_systemcounter_t
 **/
struct xcb_sync_systemcounter_t {
	xcb_sync_counter_t counter; /**<  */
	xcb_sync_int64_t resolution; /**<  */
	ushort name_len; /**<  */
}

/**
 * @brief xcb_sync_systemcounter_iterator_t
 **/
struct xcb_sync_systemcounter_iterator_t {
	xcb_sync_systemcounter_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_sync_trigger_t
 **/
struct xcb_sync_trigger_t {
	xcb_sync_counter_t counter; /**<  */
	uint wait_type; /**<  */
	xcb_sync_int64_t wait_value; /**<  */
	uint test_type; /**<  */
}

/**
 * @brief xcb_sync_trigger_iterator_t
 **/
struct xcb_sync_trigger_iterator_t {
	xcb_sync_trigger_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_sync_waitcondition_t
 **/
struct xcb_sync_waitcondition_t {
	xcb_sync_trigger_t trigger; /**<  */
	xcb_sync_int64_t event_threshold; /**<  */
}

/**
 * @brief xcb_sync_waitcondition_iterator_t
 **/
struct xcb_sync_waitcondition_iterator_t {
	xcb_sync_waitcondition_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_sync_counter. */
enum XCB_SYNC_COUNTER = 0;

/**
 * @brief xcb_sync_counter_error_t
 **/
struct xcb_sync_counter_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
	uint bad_counter; /**<  */
	ushort minor_opcode; /**<  */
	ubyte major_opcode; /**<  */
}

/** Opcode for xcb_sync_alarm. */
enum XCB_SYNC_ALARM = 1;

/**
 * @brief xcb_sync_alarm_error_t
 **/
struct xcb_sync_alarm_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
	uint bad_alarm; /**<  */
	ushort minor_opcode; /**<  */
	ubyte major_opcode; /**<  */
}

/**
 * @brief xcb_sync_initialize_cookie_t
 **/
struct xcb_sync_initialize_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_sync_initialize. */
enum XCB_SYNC_INITIALIZE = 0;

/**
 * @brief xcb_sync_initialize_request_t
 **/
struct xcb_sync_initialize_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte desired_major_version; /**<  */
	ubyte desired_minor_version; /**<  */
}

/**
 * @brief xcb_sync_initialize_reply_t
 **/
struct xcb_sync_initialize_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte major_version; /**<  */
	ubyte minor_version; /**<  */
	ubyte[22] pad1; /**<  */
}

/**
 * @brief xcb_sync_list_system_counters_cookie_t
 **/
struct xcb_sync_list_system_counters_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_sync_list_system_counters. */
enum XCB_SYNC_LIST_SYSTEM_COUNTERS = 1;

/**
 * @brief xcb_sync_list_system_counters_request_t
 **/
struct xcb_sync_list_system_counters_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_sync_list_system_counters_reply_t
 **/
struct xcb_sync_list_system_counters_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint counters_len; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_sync_create_counter. */
enum XCB_SYNC_CREATE_COUNTER = 2;

/**
 * @brief xcb_sync_create_counter_request_t
 **/
struct xcb_sync_create_counter_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_counter_t id; /**<  */
	xcb_sync_int64_t initial_value; /**<  */
}

/** Opcode for xcb_sync_destroy_counter. */
enum XCB_SYNC_DESTROY_COUNTER = 6;

/**
 * @brief xcb_sync_destroy_counter_request_t
 **/
struct xcb_sync_destroy_counter_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_counter_t counter; /**<  */
}

/**
 * @brief xcb_sync_query_counter_cookie_t
 **/
struct xcb_sync_query_counter_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_sync_query_counter. */
enum XCB_SYNC_QUERY_COUNTER = 5;

/**
 * @brief xcb_sync_query_counter_request_t
 **/
struct xcb_sync_query_counter_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_counter_t counter; /**<  */
}

/**
 * @brief xcb_sync_query_counter_reply_t
 **/
struct xcb_sync_query_counter_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_sync_int64_t counter_value; /**<  */
}

/** Opcode for xcb_sync_await. */
enum XCB_SYNC_AWAIT = 7;

/**
 * @brief xcb_sync_await_request_t
 **/
struct xcb_sync_await_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/** Opcode for xcb_sync_change_counter. */
enum XCB_SYNC_CHANGE_COUNTER = 4;

/**
 * @brief xcb_sync_change_counter_request_t
 **/
struct xcb_sync_change_counter_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_counter_t counter; /**<  */
	xcb_sync_int64_t amount; /**<  */
}

/** Opcode for xcb_sync_set_counter. */
enum XCB_SYNC_SET_COUNTER = 3;

/**
 * @brief xcb_sync_set_counter_request_t
 **/
struct xcb_sync_set_counter_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_counter_t counter; /**<  */
	xcb_sync_int64_t value; /**<  */
}

/**
 * @brief xcb_sync_create_alarm_value_list_t
 **/
struct xcb_sync_create_alarm_value_list_t {
	xcb_sync_counter_t counter; /**<  */
	uint valueType; /**<  */
	xcb_sync_int64_t value; /**<  */
	uint testType; /**<  */
	xcb_sync_int64_t delta; /**<  */
	uint events; /**<  */
}

/** Opcode for xcb_sync_create_alarm. */
enum XCB_SYNC_CREATE_ALARM = 8;

/**
 * @brief xcb_sync_create_alarm_request_t
 **/
struct xcb_sync_create_alarm_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_alarm_t id; /**<  */
	uint value_mask; /**<  */
}

/**
 * @brief xcb_sync_change_alarm_value_list_t
 **/
struct xcb_sync_change_alarm_value_list_t {
	xcb_sync_counter_t counter; /**<  */
	uint valueType; /**<  */
	xcb_sync_int64_t value; /**<  */
	uint testType; /**<  */
	xcb_sync_int64_t delta; /**<  */
	uint events; /**<  */
}

/** Opcode for xcb_sync_change_alarm. */
enum XCB_SYNC_CHANGE_ALARM = 9;

/**
 * @brief xcb_sync_change_alarm_request_t
 **/
struct xcb_sync_change_alarm_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_alarm_t id; /**<  */
	uint value_mask; /**<  */
}

/** Opcode for xcb_sync_destroy_alarm. */
enum XCB_SYNC_DESTROY_ALARM = 11;

/**
 * @brief xcb_sync_destroy_alarm_request_t
 **/
struct xcb_sync_destroy_alarm_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_alarm_t alarm; /**<  */
}

/**
 * @brief xcb_sync_query_alarm_cookie_t
 **/
struct xcb_sync_query_alarm_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_sync_query_alarm. */
enum XCB_SYNC_QUERY_ALARM = 10;

/**
 * @brief xcb_sync_query_alarm_request_t
 **/
struct xcb_sync_query_alarm_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_alarm_t alarm; /**<  */
}

/**
 * @brief xcb_sync_query_alarm_reply_t
 **/
struct xcb_sync_query_alarm_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	xcb_sync_trigger_t trigger; /**<  */
	xcb_sync_int64_t delta; /**<  */
	ubyte events; /**<  */
	ubyte state; /**<  */
	ubyte[2] pad1; /**<  */
}

/** Opcode for xcb_sync_set_priority. */
enum XCB_SYNC_SET_PRIORITY = 12;

/**
 * @brief xcb_sync_set_priority_request_t
 **/
struct xcb_sync_set_priority_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint id; /**<  */
	int priority; /**<  */
}

/**
 * @brief xcb_sync_get_priority_cookie_t
 **/
struct xcb_sync_get_priority_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_sync_get_priority. */
enum XCB_SYNC_GET_PRIORITY = 13;

/**
 * @brief xcb_sync_get_priority_request_t
 **/
struct xcb_sync_get_priority_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint id; /**<  */
}

/**
 * @brief xcb_sync_get_priority_reply_t
 **/
struct xcb_sync_get_priority_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	int priority; /**<  */
}

/** Opcode for xcb_sync_create_fence. */
enum XCB_SYNC_CREATE_FENCE = 14;

/**
 * @brief xcb_sync_create_fence_request_t
 **/
struct xcb_sync_create_fence_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_sync_fence_t fence; /**<  */
	ubyte initially_triggered; /**<  */
}

/** Opcode for xcb_sync_trigger_fence. */
enum XCB_SYNC_TRIGGER_FENCE = 15;

/**
 * @brief xcb_sync_trigger_fence_request_t
 **/
struct xcb_sync_trigger_fence_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_fence_t fence; /**<  */
}

/** Opcode for xcb_sync_reset_fence. */
enum XCB_SYNC_RESET_FENCE = 16;

/**
 * @brief xcb_sync_reset_fence_request_t
 **/
struct xcb_sync_reset_fence_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_fence_t fence; /**<  */
}

/** Opcode for xcb_sync_destroy_fence. */
enum XCB_SYNC_DESTROY_FENCE = 17;

/**
 * @brief xcb_sync_destroy_fence_request_t
 **/
struct xcb_sync_destroy_fence_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_fence_t fence; /**<  */
}

/**
 * @brief xcb_sync_query_fence_cookie_t
 **/
struct xcb_sync_query_fence_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_sync_query_fence. */
enum XCB_SYNC_QUERY_FENCE = 18;

/**
 * @brief xcb_sync_query_fence_request_t
 **/
struct xcb_sync_query_fence_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_sync_fence_t fence; /**<  */
}

/**
 * @brief xcb_sync_query_fence_reply_t
 **/
struct xcb_sync_query_fence_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	ubyte triggered; /**<  */
	ubyte[23] pad1; /**<  */
}

/** Opcode for xcb_sync_await_fence. */
enum XCB_SYNC_AWAIT_FENCE = 19;

/**
 * @brief xcb_sync_await_fence_request_t
 **/
struct xcb_sync_await_fence_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/** Opcode for xcb_sync_counter_notify. */
enum XCB_SYNC_COUNTER_NOTIFY = 0;

/**
 * @brief xcb_sync_counter_notify_event_t
 **/
struct xcb_sync_counter_notify_event_t {
	ubyte response_type; /**<  */
	ubyte kind; /**<  */
	ushort sequence; /**<  */
	xcb_sync_counter_t counter; /**<  */
	xcb_sync_int64_t wait_value; /**<  */
	xcb_sync_int64_t counter_value; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	ushort count; /**<  */
	ubyte destroyed; /**<  */
	ubyte pad0; /**<  */
}

/** Opcode for xcb_sync_alarm_notify. */
enum XCB_SYNC_ALARM_NOTIFY = 1;

/**
 * @brief xcb_sync_alarm_notify_event_t
 **/
struct xcb_sync_alarm_notify_event_t {
	ubyte response_type; /**<  */
	ubyte kind; /**<  */
	ushort sequence; /**<  */
	xcb_sync_alarm_t alarm; /**<  */
	xcb_sync_int64_t counter_value; /**<  */
	xcb_sync_int64_t alarm_value; /**<  */
	xcb_timestamp_t timestamp; /**<  */
	ubyte state; /**<  */
	ubyte[3] pad0; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_sync_alarm_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_sync_alarm_t)
 */
void xcb_sync_alarm_next(xcb_sync_alarm_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_sync_alarm_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_sync_alarm_end(xcb_sync_alarm_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_sync_counter_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_sync_counter_t)
 */
void xcb_sync_counter_next(xcb_sync_counter_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_sync_counter_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_sync_counter_end(xcb_sync_counter_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_sync_fence_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_sync_fence_t)
 */
void xcb_sync_fence_next(xcb_sync_fence_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_sync_fence_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_sync_fence_end(xcb_sync_fence_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_sync_int64_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_sync_int64_t)
 */
void xcb_sync_int64_next(xcb_sync_int64_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_sync_int64_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_sync_int64_end(xcb_sync_int64_iterator_t i /**< */ );

int xcb_sync_systemcounter_sizeof(const void* _buffer /**< */ );

char* xcb_sync_systemcounter_name(const xcb_sync_systemcounter_t* R /**< */ );

int xcb_sync_systemcounter_name_length(const xcb_sync_systemcounter_t* R /**< */ );

xcb_generic_iterator_t xcb_sync_systemcounter_name_end(const xcb_sync_systemcounter_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_sync_systemcounter_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_sync_systemcounter_t)
 */
void xcb_sync_systemcounter_next(xcb_sync_systemcounter_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_sync_systemcounter_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_sync_systemcounter_end(xcb_sync_systemcounter_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_sync_trigger_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_sync_trigger_t)
 */
void xcb_sync_trigger_next(xcb_sync_trigger_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_sync_trigger_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_sync_trigger_end(xcb_sync_trigger_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_sync_waitcondition_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_sync_waitcondition_t)
 */
void xcb_sync_waitcondition_next(xcb_sync_waitcondition_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_sync_waitcondition_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_sync_waitcondition_end(xcb_sync_waitcondition_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_sync_initialize_cookie_t xcb_sync_initialize(xcb_connection_t* c /**< */ , ubyte desired_major_version /**< */ ,
	ubyte desired_minor_version /**< */ );

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
xcb_sync_initialize_cookie_t xcb_sync_initialize_unchecked(xcb_connection_t* c /**< */ , ubyte desired_major_version /**< */ ,
	ubyte desired_minor_version /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_sync_initialize_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_sync_initialize_reply_t* xcb_sync_initialize_reply(xcb_connection_t* c /**< */ , xcb_sync_initialize_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_sync_list_system_counters_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_sync_list_system_counters_cookie_t xcb_sync_list_system_counters(xcb_connection_t* c /**< */ );

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
xcb_sync_list_system_counters_cookie_t xcb_sync_list_system_counters_unchecked(xcb_connection_t* c /**< */ );

int xcb_sync_list_system_counters_counters_length(const xcb_sync_list_system_counters_reply_t* R /**< */ );

xcb_sync_systemcounter_iterator_t xcb_sync_list_system_counters_counters_iterator(const xcb_sync_list_system_counters_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_sync_list_system_counters_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_sync_list_system_counters_reply_t* xcb_sync_list_system_counters_reply(xcb_connection_t* c /**< */ ,
	xcb_sync_list_system_counters_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_sync_create_counter_checked(xcb_connection_t* c /**< */ , xcb_sync_counter_t id /**< */ ,
	xcb_sync_int64_t initial_value /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_create_counter(xcb_connection_t* c /**< */ , xcb_sync_counter_t id /**< */ , xcb_sync_int64_t initial_value /**< */ );

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
xcb_void_cookie_t xcb_sync_destroy_counter_checked(xcb_connection_t* c /**< */ , xcb_sync_counter_t counter /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_destroy_counter(xcb_connection_t* c /**< */ , xcb_sync_counter_t counter /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_sync_query_counter_cookie_t xcb_sync_query_counter(xcb_connection_t* c /**< */ , xcb_sync_counter_t counter /**< */ );

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
xcb_sync_query_counter_cookie_t xcb_sync_query_counter_unchecked(xcb_connection_t* c /**< */ , xcb_sync_counter_t counter /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_sync_query_counter_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_sync_query_counter_reply_t* xcb_sync_query_counter_reply(xcb_connection_t* c /**< */ , xcb_sync_query_counter_cookie_t cookie /**< */ ,
	xcb_generic_error_t** e /**< */ );

int xcb_sync_await_sizeof(const void* _buffer /**< */ , uint wait_list_len /**< */ );

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
xcb_void_cookie_t xcb_sync_await_checked(xcb_connection_t* c /**< */ , uint wait_list_len /**< */ , const xcb_sync_waitcondition_t* wait_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_await(xcb_connection_t* c /**< */ , uint wait_list_len /**< */ , const xcb_sync_waitcondition_t* wait_list /**< */ );

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
xcb_void_cookie_t xcb_sync_change_counter_checked(xcb_connection_t* c /**< */ , xcb_sync_counter_t counter /**< */ , xcb_sync_int64_t amount /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_change_counter(xcb_connection_t* c /**< */ , xcb_sync_counter_t counter /**< */ , xcb_sync_int64_t amount /**< */ );

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
xcb_void_cookie_t xcb_sync_set_counter_checked(xcb_connection_t* c /**< */ , xcb_sync_counter_t counter /**< */ , xcb_sync_int64_t value /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_set_counter(xcb_connection_t* c /**< */ , xcb_sync_counter_t counter /**< */ , xcb_sync_int64_t value /**< */ );

int xcb_sync_create_alarm_value_list_serialize(void** _buffer /**< */ , uint value_mask /**< */ ,
	const xcb_sync_create_alarm_value_list_t* _aux /**< */ );

int xcb_sync_create_alarm_value_list_unpack(const void* _buffer /**< */ , uint value_mask /**< */ , xcb_sync_create_alarm_value_list_t* _aux /**< */ );

int xcb_sync_create_alarm_value_list_sizeof(const void* _buffer /**< */ , uint value_mask /**< */ );

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
xcb_void_cookie_t xcb_sync_create_alarm_checked(xcb_connection_t* c /**< */ , xcb_sync_alarm_t id /**< */ ,
	uint value_mask /**< */ , const void* value_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_create_alarm(xcb_connection_t* c /**< */ , xcb_sync_alarm_t id /**< */ , uint value_mask /**< */ ,
	const void* value_list /**< */ );

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
xcb_void_cookie_t xcb_sync_create_alarm_aux_checked(xcb_connection_t* c /**< */ , xcb_sync_alarm_t id /**< */ , uint value_mask /**< */ ,
	const xcb_sync_create_alarm_value_list_t* value_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_create_alarm_aux(xcb_connection_t* c /**< */ , xcb_sync_alarm_t id /**< */ , uint value_mask /**< */ ,
	const xcb_sync_create_alarm_value_list_t* value_list /**< */ );

int xcb_sync_change_alarm_value_list_serialize(void** _buffer /**< */ , uint value_mask /**< */ ,
	const xcb_sync_change_alarm_value_list_t* _aux /**< */ );

int xcb_sync_change_alarm_value_list_unpack(const void* _buffer /**< */ , uint value_mask /**< */ , xcb_sync_change_alarm_value_list_t* _aux /**< */ );

int xcb_sync_change_alarm_value_list_sizeof(const void* _buffer /**< */ , uint value_mask /**< */ );

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
xcb_void_cookie_t xcb_sync_change_alarm_checked(xcb_connection_t* c /**< */ , xcb_sync_alarm_t id /**< */ ,
	uint value_mask /**< */ , const void* value_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_change_alarm(xcb_connection_t* c /**< */ , xcb_sync_alarm_t id /**< */ , uint value_mask /**< */ ,
	const void* value_list /**< */ );

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
xcb_void_cookie_t xcb_sync_change_alarm_aux_checked(xcb_connection_t* c /**< */ , xcb_sync_alarm_t id /**< */ , uint value_mask /**< */ ,
	const xcb_sync_change_alarm_value_list_t* value_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_change_alarm_aux(xcb_connection_t* c /**< */ , xcb_sync_alarm_t id /**< */ , uint value_mask /**< */ ,
	const xcb_sync_change_alarm_value_list_t* value_list /**< */ );

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
xcb_void_cookie_t xcb_sync_destroy_alarm_checked(xcb_connection_t* c /**< */ , xcb_sync_alarm_t alarm /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_destroy_alarm(xcb_connection_t* c /**< */ , xcb_sync_alarm_t alarm /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_sync_query_alarm_cookie_t xcb_sync_query_alarm(xcb_connection_t* c /**< */ , xcb_sync_alarm_t alarm /**< */ );

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
xcb_sync_query_alarm_cookie_t xcb_sync_query_alarm_unchecked(xcb_connection_t* c /**< */ , xcb_sync_alarm_t alarm /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_sync_query_alarm_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_sync_query_alarm_reply_t* xcb_sync_query_alarm_reply(xcb_connection_t* c /**< */ ,
	xcb_sync_query_alarm_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_sync_set_priority_checked(xcb_connection_t* c /**< */ , uint id /**< */ , int priority /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_set_priority(xcb_connection_t* c /**< */ , uint id /**< */ , int priority /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_sync_get_priority_cookie_t xcb_sync_get_priority(xcb_connection_t* c /**< */ , uint id /**< */ );

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
xcb_sync_get_priority_cookie_t xcb_sync_get_priority_unchecked(xcb_connection_t* c /**< */ , uint id /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_sync_get_priority_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_sync_get_priority_reply_t* xcb_sync_get_priority_reply(xcb_connection_t* c /**< */ ,
	xcb_sync_get_priority_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

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
xcb_void_cookie_t xcb_sync_create_fence_checked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_sync_fence_t fence /**< */ , ubyte initially_triggered /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_create_fence(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ , xcb_sync_fence_t fence /**< */ ,
	ubyte initially_triggered /**< */ );

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
xcb_void_cookie_t xcb_sync_trigger_fence_checked(xcb_connection_t* c /**< */ , xcb_sync_fence_t fence /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_trigger_fence(xcb_connection_t* c /**< */ , xcb_sync_fence_t fence /**< */ );

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
xcb_void_cookie_t xcb_sync_reset_fence_checked(xcb_connection_t* c /**< */ , xcb_sync_fence_t fence /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_reset_fence(xcb_connection_t* c /**< */ , xcb_sync_fence_t fence /**< */ );

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
xcb_void_cookie_t xcb_sync_destroy_fence_checked(xcb_connection_t* c /**< */ , xcb_sync_fence_t fence /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_destroy_fence(xcb_connection_t* c /**< */ , xcb_sync_fence_t fence /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_sync_query_fence_cookie_t xcb_sync_query_fence(xcb_connection_t* c /**< */ , xcb_sync_fence_t fence /**< */ );

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
xcb_sync_query_fence_cookie_t xcb_sync_query_fence_unchecked(xcb_connection_t* c /**< */ , xcb_sync_fence_t fence /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_sync_query_fence_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_sync_query_fence_reply_t* xcb_sync_query_fence_reply(xcb_connection_t* c /**< */ ,
	xcb_sync_query_fence_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_sync_await_fence_sizeof(const void* _buffer /**< */ , uint fence_list_len /**< */ );

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
xcb_void_cookie_t xcb_sync_await_fence_checked(xcb_connection_t* c /**< */ , uint fence_list_len /**< */ , const xcb_sync_fence_t* fence_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_sync_await_fence(xcb_connection_t* c /**< */ , uint fence_list_len /**< */ , const xcb_sync_fence_t* fence_list /**< */ );

/**
 * @}
 */
