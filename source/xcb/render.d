/*
 * This file generated automatically from render.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Render_API XCB Render API
 * @brief Render XCB Protocol Implementation.
 * @{
 **/

module xcb.render;

import xcb.xcb;
import xcb.xproto;

extern (C):

enum int XCB_RENDER_MAJOR_VERSION = 0;
enum int XCB_RENDER_MINOR_VERSION = 11;

extern (C) __gshared extern xcb_extension_t xcb_render_id;

enum xcb_render_pict_type_t {
	XCB_RENDER_PICT_TYPE_INDEXED = 0,
	XCB_RENDER_PICT_TYPE_DIRECT = 1
}

alias XCB_RENDER_PICT_TYPE_INDEXED = xcb_render_pict_type_t.XCB_RENDER_PICT_TYPE_INDEXED;
alias XCB_RENDER_PICT_TYPE_DIRECT = xcb_render_pict_type_t.XCB_RENDER_PICT_TYPE_DIRECT;

enum xcb_render_picture_enum_t {
	XCB_RENDER_PICTURE_NONE = 0
}

alias XCB_RENDER_PICTURE_NONE = xcb_render_picture_enum_t.XCB_RENDER_PICTURE_NONE;

enum xcb_render_pict_op_t {
	XCB_RENDER_PICT_OP_CLEAR = 0,
	XCB_RENDER_PICT_OP_SRC = 1,
	XCB_RENDER_PICT_OP_DST = 2,
	XCB_RENDER_PICT_OP_OVER = 3,
	XCB_RENDER_PICT_OP_OVER_REVERSE = 4,
	XCB_RENDER_PICT_OP_IN = 5,
	XCB_RENDER_PICT_OP_IN_REVERSE = 6,
	XCB_RENDER_PICT_OP_OUT = 7,
	XCB_RENDER_PICT_OP_OUT_REVERSE = 8,
	XCB_RENDER_PICT_OP_ATOP = 9,
	XCB_RENDER_PICT_OP_ATOP_REVERSE = 10,
	XCB_RENDER_PICT_OP_XOR = 11,
	XCB_RENDER_PICT_OP_ADD = 12,
	XCB_RENDER_PICT_OP_SATURATE = 13,
	XCB_RENDER_PICT_OP_DISJOINT_CLEAR = 16,
	XCB_RENDER_PICT_OP_DISJOINT_SRC = 17,
	XCB_RENDER_PICT_OP_DISJOINT_DST = 18,
	XCB_RENDER_PICT_OP_DISJOINT_OVER = 19,
	XCB_RENDER_PICT_OP_DISJOINT_OVER_REVERSE = 20,
	XCB_RENDER_PICT_OP_DISJOINT_IN = 21,
	XCB_RENDER_PICT_OP_DISJOINT_IN_REVERSE = 22,
	XCB_RENDER_PICT_OP_DISJOINT_OUT = 23,
	XCB_RENDER_PICT_OP_DISJOINT_OUT_REVERSE = 24,
	XCB_RENDER_PICT_OP_DISJOINT_ATOP = 25,
	XCB_RENDER_PICT_OP_DISJOINT_ATOP_REVERSE = 26,
	XCB_RENDER_PICT_OP_DISJOINT_XOR = 27,
	XCB_RENDER_PICT_OP_CONJOINT_CLEAR = 32,
	XCB_RENDER_PICT_OP_CONJOINT_SRC = 33,
	XCB_RENDER_PICT_OP_CONJOINT_DST = 34,
	XCB_RENDER_PICT_OP_CONJOINT_OVER = 35,
	XCB_RENDER_PICT_OP_CONJOINT_OVER_REVERSE = 36,
	XCB_RENDER_PICT_OP_CONJOINT_IN = 37,
	XCB_RENDER_PICT_OP_CONJOINT_IN_REVERSE = 38,
	XCB_RENDER_PICT_OP_CONJOINT_OUT = 39,
	XCB_RENDER_PICT_OP_CONJOINT_OUT_REVERSE = 40,
	XCB_RENDER_PICT_OP_CONJOINT_ATOP = 41,
	XCB_RENDER_PICT_OP_CONJOINT_ATOP_REVERSE = 42,
	XCB_RENDER_PICT_OP_CONJOINT_XOR = 43,
	XCB_RENDER_PICT_OP_MULTIPLY = 48,
	XCB_RENDER_PICT_OP_SCREEN = 49,
	XCB_RENDER_PICT_OP_OVERLAY = 50,
	XCB_RENDER_PICT_OP_DARKEN = 51,
	XCB_RENDER_PICT_OP_LIGHTEN = 52,
	XCB_RENDER_PICT_OP_COLOR_DODGE = 53,
	XCB_RENDER_PICT_OP_COLOR_BURN = 54,
	XCB_RENDER_PICT_OP_HARD_LIGHT = 55,
	XCB_RENDER_PICT_OP_SOFT_LIGHT = 56,
	XCB_RENDER_PICT_OP_DIFFERENCE = 57,
	XCB_RENDER_PICT_OP_EXCLUSION = 58,
	XCB_RENDER_PICT_OP_HSL_HUE = 59,
	XCB_RENDER_PICT_OP_HSL_SATURATION = 60,
	XCB_RENDER_PICT_OP_HSL_COLOR = 61,
	XCB_RENDER_PICT_OP_HSL_LUMINOSITY = 62
}

alias XCB_RENDER_PICT_OP_CLEAR = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CLEAR;
alias XCB_RENDER_PICT_OP_SRC = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_SRC;
alias XCB_RENDER_PICT_OP_DST = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DST;
alias XCB_RENDER_PICT_OP_OVER = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_OVER;
alias XCB_RENDER_PICT_OP_OVER_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_OVER_REVERSE;
alias XCB_RENDER_PICT_OP_IN = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_IN;
alias XCB_RENDER_PICT_OP_IN_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_IN_REVERSE;
alias XCB_RENDER_PICT_OP_OUT = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_OUT;
alias XCB_RENDER_PICT_OP_OUT_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_OUT_REVERSE;
alias XCB_RENDER_PICT_OP_ATOP = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_ATOP;
alias XCB_RENDER_PICT_OP_ATOP_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_ATOP_REVERSE;
alias XCB_RENDER_PICT_OP_XOR = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_XOR;
alias XCB_RENDER_PICT_OP_ADD = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_ADD;
alias XCB_RENDER_PICT_OP_SATURATE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_SATURATE;
alias XCB_RENDER_PICT_OP_DISJOINT_CLEAR = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_CLEAR;
alias XCB_RENDER_PICT_OP_DISJOINT_SRC = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_SRC;
alias XCB_RENDER_PICT_OP_DISJOINT_DST = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_DST;
alias XCB_RENDER_PICT_OP_DISJOINT_OVER = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_OVER;
alias XCB_RENDER_PICT_OP_DISJOINT_OVER_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_OVER_REVERSE;
alias XCB_RENDER_PICT_OP_DISJOINT_IN = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_IN;
alias XCB_RENDER_PICT_OP_DISJOINT_IN_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_IN_REVERSE;
alias XCB_RENDER_PICT_OP_DISJOINT_OUT = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_OUT;
alias XCB_RENDER_PICT_OP_DISJOINT_OUT_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_OUT_REVERSE;
alias XCB_RENDER_PICT_OP_DISJOINT_ATOP = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_ATOP;
alias XCB_RENDER_PICT_OP_DISJOINT_ATOP_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_ATOP_REVERSE;
alias XCB_RENDER_PICT_OP_DISJOINT_XOR = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DISJOINT_XOR;
alias XCB_RENDER_PICT_OP_CONJOINT_CLEAR = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_CLEAR;
alias XCB_RENDER_PICT_OP_CONJOINT_SRC = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_SRC;
alias XCB_RENDER_PICT_OP_CONJOINT_DST = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_DST;
alias XCB_RENDER_PICT_OP_CONJOINT_OVER = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_OVER;
alias XCB_RENDER_PICT_OP_CONJOINT_OVER_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_OVER_REVERSE;
alias XCB_RENDER_PICT_OP_CONJOINT_IN = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_IN;
alias XCB_RENDER_PICT_OP_CONJOINT_IN_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_IN_REVERSE;
alias XCB_RENDER_PICT_OP_CONJOINT_OUT = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_OUT;
alias XCB_RENDER_PICT_OP_CONJOINT_OUT_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_OUT_REVERSE;
alias XCB_RENDER_PICT_OP_CONJOINT_ATOP = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_ATOP;
alias XCB_RENDER_PICT_OP_CONJOINT_ATOP_REVERSE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_ATOP_REVERSE;
alias XCB_RENDER_PICT_OP_CONJOINT_XOR = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_CONJOINT_XOR;
alias XCB_RENDER_PICT_OP_MULTIPLY = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_MULTIPLY;
alias XCB_RENDER_PICT_OP_SCREEN = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_SCREEN;
alias XCB_RENDER_PICT_OP_OVERLAY = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_OVERLAY;
alias XCB_RENDER_PICT_OP_DARKEN = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DARKEN;
alias XCB_RENDER_PICT_OP_LIGHTEN = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_LIGHTEN;
alias XCB_RENDER_PICT_OP_COLOR_DODGE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_COLOR_DODGE;
alias XCB_RENDER_PICT_OP_COLOR_BURN = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_COLOR_BURN;
alias XCB_RENDER_PICT_OP_HARD_LIGHT = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_HARD_LIGHT;
alias XCB_RENDER_PICT_OP_SOFT_LIGHT = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_SOFT_LIGHT;
alias XCB_RENDER_PICT_OP_DIFFERENCE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_DIFFERENCE;
alias XCB_RENDER_PICT_OP_EXCLUSION = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_EXCLUSION;
alias XCB_RENDER_PICT_OP_HSL_HUE = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_HSL_HUE;
alias XCB_RENDER_PICT_OP_HSL_SATURATION = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_HSL_SATURATION;
alias XCB_RENDER_PICT_OP_HSL_COLOR = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_HSL_COLOR;
alias XCB_RENDER_PICT_OP_HSL_LUMINOSITY = xcb_render_pict_op_t.XCB_RENDER_PICT_OP_HSL_LUMINOSITY;

enum xcb_render_poly_edge_t {
	XCB_RENDER_POLY_EDGE_SHARP = 0,
	XCB_RENDER_POLY_EDGE_SMOOTH = 1
}

alias XCB_RENDER_POLY_EDGE_SHARP = xcb_render_poly_edge_t.XCB_RENDER_POLY_EDGE_SHARP;
alias XCB_RENDER_POLY_EDGE_SMOOTH = xcb_render_poly_edge_t.XCB_RENDER_POLY_EDGE_SMOOTH;

enum xcb_render_poly_mode_t {
	XCB_RENDER_POLY_MODE_PRECISE = 0,
	XCB_RENDER_POLY_MODE_IMPRECISE = 1
}

alias XCB_RENDER_POLY_MODE_PRECISE = xcb_render_poly_mode_t.XCB_RENDER_POLY_MODE_PRECISE;
alias XCB_RENDER_POLY_MODE_IMPRECISE = xcb_render_poly_mode_t.XCB_RENDER_POLY_MODE_IMPRECISE;

enum xcb_render_cp_t {
	XCB_RENDER_CP_REPEAT = 1,
	XCB_RENDER_CP_ALPHA_MAP = 2,
	XCB_RENDER_CP_ALPHA_X_ORIGIN = 4,
	XCB_RENDER_CP_ALPHA_Y_ORIGIN = 8,
	XCB_RENDER_CP_CLIP_X_ORIGIN = 16,
	XCB_RENDER_CP_CLIP_Y_ORIGIN = 32,
	XCB_RENDER_CP_CLIP_MASK = 64,
	XCB_RENDER_CP_GRAPHICS_EXPOSURE = 128,
	XCB_RENDER_CP_SUBWINDOW_MODE = 256,
	XCB_RENDER_CP_POLY_EDGE = 512,
	XCB_RENDER_CP_POLY_MODE = 1024,
	XCB_RENDER_CP_DITHER = 2048,
	XCB_RENDER_CP_COMPONENT_ALPHA = 4096
}

alias XCB_RENDER_CP_REPEAT = xcb_render_cp_t.XCB_RENDER_CP_REPEAT;
alias XCB_RENDER_CP_ALPHA_MAP = xcb_render_cp_t.XCB_RENDER_CP_ALPHA_MAP;
alias XCB_RENDER_CP_ALPHA_X_ORIGIN = xcb_render_cp_t.XCB_RENDER_CP_ALPHA_X_ORIGIN;
alias XCB_RENDER_CP_ALPHA_Y_ORIGIN = xcb_render_cp_t.XCB_RENDER_CP_ALPHA_Y_ORIGIN;
alias XCB_RENDER_CP_CLIP_X_ORIGIN = xcb_render_cp_t.XCB_RENDER_CP_CLIP_X_ORIGIN;
alias XCB_RENDER_CP_CLIP_Y_ORIGIN = xcb_render_cp_t.XCB_RENDER_CP_CLIP_Y_ORIGIN;
alias XCB_RENDER_CP_CLIP_MASK = xcb_render_cp_t.XCB_RENDER_CP_CLIP_MASK;
alias XCB_RENDER_CP_GRAPHICS_EXPOSURE = xcb_render_cp_t.XCB_RENDER_CP_GRAPHICS_EXPOSURE;
alias XCB_RENDER_CP_SUBWINDOW_MODE = xcb_render_cp_t.XCB_RENDER_CP_SUBWINDOW_MODE;
alias XCB_RENDER_CP_POLY_EDGE = xcb_render_cp_t.XCB_RENDER_CP_POLY_EDGE;
alias XCB_RENDER_CP_POLY_MODE = xcb_render_cp_t.XCB_RENDER_CP_POLY_MODE;
alias XCB_RENDER_CP_DITHER = xcb_render_cp_t.XCB_RENDER_CP_DITHER;
alias XCB_RENDER_CP_COMPONENT_ALPHA = xcb_render_cp_t.XCB_RENDER_CP_COMPONENT_ALPHA;

enum xcb_render_sub_pixel_t {
	XCB_RENDER_SUB_PIXEL_UNKNOWN = 0,
	XCB_RENDER_SUB_PIXEL_HORIZONTAL_RGB = 1,
	XCB_RENDER_SUB_PIXEL_HORIZONTAL_BGR = 2,
	XCB_RENDER_SUB_PIXEL_VERTICAL_RGB = 3,
	XCB_RENDER_SUB_PIXEL_VERTICAL_BGR = 4,
	XCB_RENDER_SUB_PIXEL_NONE = 5
}

alias XCB_RENDER_SUB_PIXEL_UNKNOWN = xcb_render_sub_pixel_t.XCB_RENDER_SUB_PIXEL_UNKNOWN;
alias XCB_RENDER_SUB_PIXEL_HORIZONTAL_RGB = xcb_render_sub_pixel_t.XCB_RENDER_SUB_PIXEL_HORIZONTAL_RGB;
alias XCB_RENDER_SUB_PIXEL_HORIZONTAL_BGR = xcb_render_sub_pixel_t.XCB_RENDER_SUB_PIXEL_HORIZONTAL_BGR;
alias XCB_RENDER_SUB_PIXEL_VERTICAL_RGB = xcb_render_sub_pixel_t.XCB_RENDER_SUB_PIXEL_VERTICAL_RGB;
alias XCB_RENDER_SUB_PIXEL_VERTICAL_BGR = xcb_render_sub_pixel_t.XCB_RENDER_SUB_PIXEL_VERTICAL_BGR;
alias XCB_RENDER_SUB_PIXEL_NONE = xcb_render_sub_pixel_t.XCB_RENDER_SUB_PIXEL_NONE;

enum xcb_render_repeat_t {
	XCB_RENDER_REPEAT_NONE = 0,
	XCB_RENDER_REPEAT_NORMAL = 1,
	XCB_RENDER_REPEAT_PAD = 2,
	XCB_RENDER_REPEAT_REFLECT = 3
}

alias XCB_RENDER_REPEAT_NONE = xcb_render_repeat_t.XCB_RENDER_REPEAT_NONE;
alias XCB_RENDER_REPEAT_NORMAL = xcb_render_repeat_t.XCB_RENDER_REPEAT_NORMAL;
alias XCB_RENDER_REPEAT_PAD = xcb_render_repeat_t.XCB_RENDER_REPEAT_PAD;
alias XCB_RENDER_REPEAT_REFLECT = xcb_render_repeat_t.XCB_RENDER_REPEAT_REFLECT;

alias xcb_render_glyph_t = uint;

/**
 * @brief xcb_render_glyph_iterator_t
 **/
struct xcb_render_glyph_iterator_t {
	xcb_render_glyph_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_render_glyphset_t = uint;

/**
 * @brief xcb_render_glyphset_iterator_t
 **/
struct xcb_render_glyphset_iterator_t {
	xcb_render_glyphset_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_render_picture_t = uint;

/**
 * @brief xcb_render_picture_iterator_t
 **/
struct xcb_render_picture_iterator_t {
	xcb_render_picture_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_render_pictformat_t = uint;

/**
 * @brief xcb_render_pictformat_iterator_t
 **/
struct xcb_render_pictformat_iterator_t {
	xcb_render_pictformat_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

alias xcb_render_fixed_t = int;

/**
 * @brief xcb_render_fixed_iterator_t
 **/
struct xcb_render_fixed_iterator_t {
	xcb_render_fixed_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_render_pict_format. */
enum XCB_RENDER_PICT_FORMAT = 0;

/**
 * @brief xcb_render_pict_format_error_t
 **/
struct xcb_render_pict_format_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_render_picture. */
enum XCB_RENDER_PICTURE = 1;

/**
 * @brief xcb_render_picture_error_t
 **/
struct xcb_render_picture_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_render_pict_op. */
enum XCB_RENDER_PICT_OP = 2;

/**
 * @brief xcb_render_pict_op_error_t
 **/
struct xcb_render_pict_op_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_render_glyph_set. */
enum XCB_RENDER_GLYPH_SET = 3;

/**
 * @brief xcb_render_glyph_set_error_t
 **/
struct xcb_render_glyph_set_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/** Opcode for xcb_render_glyph. */
enum XCB_RENDER_GLYPH = 4;

/**
 * @brief xcb_render_glyph_error_t
 **/
struct xcb_render_glyph_error_t {
	ubyte response_type; /**<  */
	ubyte error_code; /**<  */
	ushort sequence; /**<  */
}

/**
 * @brief xcb_render_directformat_t
 **/
struct xcb_render_directformat_t {
	ushort red_shift; /**<  */
	ushort red_mask; /**<  */
	ushort green_shift; /**<  */
	ushort green_mask; /**<  */
	ushort blue_shift; /**<  */
	ushort blue_mask; /**<  */
	ushort alpha_shift; /**<  */
	ushort alpha_mask; /**<  */
}

/**
 * @brief xcb_render_directformat_iterator_t
 **/
struct xcb_render_directformat_iterator_t {
	xcb_render_directformat_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_pictforminfo_t
 **/
struct xcb_render_pictforminfo_t {
	xcb_render_pictformat_t id; /**<  */
	ubyte type; /**<  */
	ubyte depth; /**<  */
	ubyte[2] pad0; /**<  */
	xcb_render_directformat_t direct; /**<  */
	xcb_colormap_t colormap; /**<  */
}

/**
 * @brief xcb_render_pictforminfo_iterator_t
 **/
struct xcb_render_pictforminfo_iterator_t {
	xcb_render_pictforminfo_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_pictvisual_t
 **/
struct xcb_render_pictvisual_t {
	xcb_visualid_t visual; /**<  */
	xcb_render_pictformat_t format; /**<  */
}

/**
 * @brief xcb_render_pictvisual_iterator_t
 **/
struct xcb_render_pictvisual_iterator_t {
	xcb_render_pictvisual_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_pictdepth_t
 **/
struct xcb_render_pictdepth_t {
	ubyte depth; /**<  */
	ubyte pad0; /**<  */
	ushort num_visuals; /**<  */
	ubyte[4] pad1; /**<  */
}

/**
 * @brief xcb_render_pictdepth_iterator_t
 **/
struct xcb_render_pictdepth_iterator_t {
	xcb_render_pictdepth_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_pictscreen_t
 **/
struct xcb_render_pictscreen_t {
	uint num_depths; /**<  */
	xcb_render_pictformat_t fallback; /**<  */
}

/**
 * @brief xcb_render_pictscreen_iterator_t
 **/
struct xcb_render_pictscreen_iterator_t {
	xcb_render_pictscreen_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_indexvalue_t
 **/
struct xcb_render_indexvalue_t {
	uint pixel; /**<  */
	ushort red; /**<  */
	ushort green; /**<  */
	ushort blue; /**<  */
	ushort alpha; /**<  */
}

/**
 * @brief xcb_render_indexvalue_iterator_t
 **/
struct xcb_render_indexvalue_iterator_t {
	xcb_render_indexvalue_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_color_t
 **/
struct xcb_render_color_t {
	ushort red; /**<  */
	ushort green; /**<  */
	ushort blue; /**<  */
	ushort alpha; /**<  */
}

/**
 * @brief xcb_render_color_iterator_t
 **/
struct xcb_render_color_iterator_t {
	xcb_render_color_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_pointfix_t
 **/
struct xcb_render_pointfix_t {
	xcb_render_fixed_t x; /**<  */
	xcb_render_fixed_t y; /**<  */
}

/**
 * @brief xcb_render_pointfix_iterator_t
 **/
struct xcb_render_pointfix_iterator_t {
	xcb_render_pointfix_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_linefix_t
 **/
struct xcb_render_linefix_t {
	xcb_render_pointfix_t p1; /**<  */
	xcb_render_pointfix_t p2; /**<  */
}

/**
 * @brief xcb_render_linefix_iterator_t
 **/
struct xcb_render_linefix_iterator_t {
	xcb_render_linefix_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_triangle_t
 **/
struct xcb_render_triangle_t {
	xcb_render_pointfix_t p1; /**<  */
	xcb_render_pointfix_t p2; /**<  */
	xcb_render_pointfix_t p3; /**<  */
}

/**
 * @brief xcb_render_triangle_iterator_t
 **/
struct xcb_render_triangle_iterator_t {
	xcb_render_triangle_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_trapezoid_t
 **/
struct xcb_render_trapezoid_t {
	xcb_render_fixed_t top; /**<  */
	xcb_render_fixed_t bottom; /**<  */
	xcb_render_linefix_t left; /**<  */
	xcb_render_linefix_t right; /**<  */
}

/**
 * @brief xcb_render_trapezoid_iterator_t
 **/
struct xcb_render_trapezoid_iterator_t {
	xcb_render_trapezoid_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_glyphinfo_t
 **/
struct xcb_render_glyphinfo_t {
	ushort width; /**<  */
	ushort height; /**<  */
	short x; /**<  */
	short y; /**<  */
	short x_off; /**<  */
	short y_off; /**<  */
}

/**
 * @brief xcb_render_glyphinfo_iterator_t
 **/
struct xcb_render_glyphinfo_iterator_t {
	xcb_render_glyphinfo_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_query_version_cookie_t
 **/
struct xcb_render_query_version_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_render_query_version. */
enum XCB_RENDER_QUERY_VERSION = 0;

/**
 * @brief xcb_render_query_version_request_t
 **/
struct xcb_render_query_version_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	uint client_major_version; /**<  */
	uint client_minor_version; /**<  */
}

/**
 * @brief xcb_render_query_version_reply_t
 **/
struct xcb_render_query_version_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint major_version; /**<  */
	uint minor_version; /**<  */
	ubyte[16] pad1; /**<  */
}

/**
 * @brief xcb_render_query_pict_formats_cookie_t
 **/
struct xcb_render_query_pict_formats_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_render_query_pict_formats. */
enum XCB_RENDER_QUERY_PICT_FORMATS = 1;

/**
 * @brief xcb_render_query_pict_formats_request_t
 **/
struct xcb_render_query_pict_formats_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
}

/**
 * @brief xcb_render_query_pict_formats_reply_t
 **/
struct xcb_render_query_pict_formats_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_formats; /**<  */
	uint num_screens; /**<  */
	uint num_depths; /**<  */
	uint num_visuals; /**<  */
	uint num_subpixel; /**<  */
	ubyte[4] pad1; /**<  */
}

/**
 * @brief xcb_render_query_pict_index_values_cookie_t
 **/
struct xcb_render_query_pict_index_values_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_render_query_pict_index_values. */
enum XCB_RENDER_QUERY_PICT_INDEX_VALUES = 2;

/**
 * @brief xcb_render_query_pict_index_values_request_t
 **/
struct xcb_render_query_pict_index_values_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_pictformat_t format; /**<  */
}

/**
 * @brief xcb_render_query_pict_index_values_reply_t
 **/
struct xcb_render_query_pict_index_values_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_values; /**<  */
	ubyte[20] pad1; /**<  */
}

/** Opcode for xcb_render_create_picture. */
enum XCB_RENDER_CREATE_PICTURE = 4;

/**
 * @brief xcb_render_create_picture_request_t
 **/
struct xcb_render_create_picture_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t pid; /**<  */
	xcb_drawable_t drawable; /**<  */
	xcb_render_pictformat_t format; /**<  */
	uint value_mask; /**<  */
}

/** Opcode for xcb_render_change_picture. */
enum XCB_RENDER_CHANGE_PICTURE = 5;

/**
 * @brief xcb_render_change_picture_request_t
 **/
struct xcb_render_change_picture_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
	uint value_mask; /**<  */
}

/** Opcode for xcb_render_set_picture_clip_rectangles. */
enum XCB_RENDER_SET_PICTURE_CLIP_RECTANGLES = 6;

/**
 * @brief xcb_render_set_picture_clip_rectangles_request_t
 **/
struct xcb_render_set_picture_clip_rectangles_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
	short clip_x_origin; /**<  */
	short clip_y_origin; /**<  */
}

/** Opcode for xcb_render_free_picture. */
enum XCB_RENDER_FREE_PICTURE = 7;

/**
 * @brief xcb_render_free_picture_request_t
 **/
struct xcb_render_free_picture_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
}

/** Opcode for xcb_render_composite. */
enum XCB_RENDER_COMPOSITE = 8;

/**
 * @brief xcb_render_composite_request_t
 **/
struct xcb_render_composite_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte op; /**<  */
	ubyte[3] pad0; /**<  */
	xcb_render_picture_t src; /**<  */
	xcb_render_picture_t mask; /**<  */
	xcb_render_picture_t dst; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
	short mask_x; /**<  */
	short mask_y; /**<  */
	short dst_x; /**<  */
	short dst_y; /**<  */
	ushort width; /**<  */
	ushort height; /**<  */
}

/** Opcode for xcb_render_trapezoids. */
enum XCB_RENDER_TRAPEZOIDS = 10;

/**
 * @brief xcb_render_trapezoids_request_t
 **/
struct xcb_render_trapezoids_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte op; /**<  */
	ubyte[3] pad0; /**<  */
	xcb_render_picture_t src; /**<  */
	xcb_render_picture_t dst; /**<  */
	xcb_render_pictformat_t mask_format; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
}

/** Opcode for xcb_render_triangles. */
enum XCB_RENDER_TRIANGLES = 11;

/**
 * @brief xcb_render_triangles_request_t
 **/
struct xcb_render_triangles_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte op; /**<  */
	ubyte[3] pad0; /**<  */
	xcb_render_picture_t src; /**<  */
	xcb_render_picture_t dst; /**<  */
	xcb_render_pictformat_t mask_format; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
}

/** Opcode for xcb_render_tri_strip. */
enum XCB_RENDER_TRI_STRIP = 12;

/**
 * @brief xcb_render_tri_strip_request_t
 **/
struct xcb_render_tri_strip_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte op; /**<  */
	ubyte[3] pad0; /**<  */
	xcb_render_picture_t src; /**<  */
	xcb_render_picture_t dst; /**<  */
	xcb_render_pictformat_t mask_format; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
}

/** Opcode for xcb_render_tri_fan. */
enum XCB_RENDER_TRI_FAN = 13;

/**
 * @brief xcb_render_tri_fan_request_t
 **/
struct xcb_render_tri_fan_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte op; /**<  */
	ubyte[3] pad0; /**<  */
	xcb_render_picture_t src; /**<  */
	xcb_render_picture_t dst; /**<  */
	xcb_render_pictformat_t mask_format; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
}

/** Opcode for xcb_render_create_glyph_set. */
enum XCB_RENDER_CREATE_GLYPH_SET = 17;

/**
 * @brief xcb_render_create_glyph_set_request_t
 **/
struct xcb_render_create_glyph_set_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_glyphset_t gsid; /**<  */
	xcb_render_pictformat_t format; /**<  */
}

/** Opcode for xcb_render_reference_glyph_set. */
enum XCB_RENDER_REFERENCE_GLYPH_SET = 18;

/**
 * @brief xcb_render_reference_glyph_set_request_t
 **/
struct xcb_render_reference_glyph_set_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_glyphset_t gsid; /**<  */
	xcb_render_glyphset_t existing; /**<  */
}

/** Opcode for xcb_render_free_glyph_set. */
enum XCB_RENDER_FREE_GLYPH_SET = 19;

/**
 * @brief xcb_render_free_glyph_set_request_t
 **/
struct xcb_render_free_glyph_set_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_glyphset_t glyphset; /**<  */
}

/** Opcode for xcb_render_add_glyphs. */
enum XCB_RENDER_ADD_GLYPHS = 20;

/**
 * @brief xcb_render_add_glyphs_request_t
 **/
struct xcb_render_add_glyphs_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_glyphset_t glyphset; /**<  */
	uint glyphs_len; /**<  */
}

/** Opcode for xcb_render_free_glyphs. */
enum XCB_RENDER_FREE_GLYPHS = 22;

/**
 * @brief xcb_render_free_glyphs_request_t
 **/
struct xcb_render_free_glyphs_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_glyphset_t glyphset; /**<  */
}

/** Opcode for xcb_render_composite_glyphs_8. */
enum XCB_RENDER_COMPOSITE_GLYPHS_8 = 23;

/**
 * @brief xcb_render_composite_glyphs_8_request_t
 **/
struct xcb_render_composite_glyphs_8_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte op; /**<  */
	ubyte[3] pad0; /**<  */
	xcb_render_picture_t src; /**<  */
	xcb_render_picture_t dst; /**<  */
	xcb_render_pictformat_t mask_format; /**<  */
	xcb_render_glyphset_t glyphset; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
}

/** Opcode for xcb_render_composite_glyphs_16. */
enum XCB_RENDER_COMPOSITE_GLYPHS_16 = 24;

/**
 * @brief xcb_render_composite_glyphs_16_request_t
 **/
struct xcb_render_composite_glyphs_16_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte op; /**<  */
	ubyte[3] pad0; /**<  */
	xcb_render_picture_t src; /**<  */
	xcb_render_picture_t dst; /**<  */
	xcb_render_pictformat_t mask_format; /**<  */
	xcb_render_glyphset_t glyphset; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
}

/** Opcode for xcb_render_composite_glyphs_32. */
enum XCB_RENDER_COMPOSITE_GLYPHS_32 = 25;

/**
 * @brief xcb_render_composite_glyphs_32_request_t
 **/
struct xcb_render_composite_glyphs_32_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte op; /**<  */
	ubyte[3] pad0; /**<  */
	xcb_render_picture_t src; /**<  */
	xcb_render_picture_t dst; /**<  */
	xcb_render_pictformat_t mask_format; /**<  */
	xcb_render_glyphset_t glyphset; /**<  */
	short src_x; /**<  */
	short src_y; /**<  */
}

/** Opcode for xcb_render_fill_rectangles. */
enum XCB_RENDER_FILL_RECTANGLES = 26;

/**
 * @brief xcb_render_fill_rectangles_request_t
 **/
struct xcb_render_fill_rectangles_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	ubyte op; /**<  */
	ubyte[3] pad0; /**<  */
	xcb_render_picture_t dst; /**<  */
	xcb_render_color_t color; /**<  */
}

/** Opcode for xcb_render_create_cursor. */
enum XCB_RENDER_CREATE_CURSOR = 27;

/**
 * @brief xcb_render_create_cursor_request_t
 **/
struct xcb_render_create_cursor_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_cursor_t cid; /**<  */
	xcb_render_picture_t source; /**<  */
	ushort x; /**<  */
	ushort y; /**<  */
}

/**
 * @brief xcb_render_transform_t
 **/
struct xcb_render_transform_t {
	xcb_render_fixed_t matrix11; /**<  */
	xcb_render_fixed_t matrix12; /**<  */
	xcb_render_fixed_t matrix13; /**<  */
	xcb_render_fixed_t matrix21; /**<  */
	xcb_render_fixed_t matrix22; /**<  */
	xcb_render_fixed_t matrix23; /**<  */
	xcb_render_fixed_t matrix31; /**<  */
	xcb_render_fixed_t matrix32; /**<  */
	xcb_render_fixed_t matrix33; /**<  */
}

/**
 * @brief xcb_render_transform_iterator_t
 **/
struct xcb_render_transform_iterator_t {
	xcb_render_transform_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_render_set_picture_transform. */
enum XCB_RENDER_SET_PICTURE_TRANSFORM = 28;

/**
 * @brief xcb_render_set_picture_transform_request_t
 **/
struct xcb_render_set_picture_transform_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
	xcb_render_transform_t transform; /**<  */
}

/**
 * @brief xcb_render_query_filters_cookie_t
 **/
struct xcb_render_query_filters_cookie_t {
	uint sequence; /**<  */
}

/** Opcode for xcb_render_query_filters. */
enum XCB_RENDER_QUERY_FILTERS = 29;

/**
 * @brief xcb_render_query_filters_request_t
 **/
struct xcb_render_query_filters_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_drawable_t drawable; /**<  */
}

/**
 * @brief xcb_render_query_filters_reply_t
 **/
struct xcb_render_query_filters_reply_t {
	ubyte response_type; /**<  */
	ubyte pad0; /**<  */
	ushort sequence; /**<  */
	uint length; /**<  */
	uint num_aliases; /**<  */
	uint num_filters; /**<  */
	ubyte[16] pad1; /**<  */
}

/** Opcode for xcb_render_set_picture_filter. */
enum XCB_RENDER_SET_PICTURE_FILTER = 30;

/**
 * @brief xcb_render_set_picture_filter_request_t
 **/
struct xcb_render_set_picture_filter_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
	ushort filter_len; /**<  */
	ubyte[2] pad0; /**<  */
}

/**
 * @brief xcb_render_animcursorelt_t
 **/
struct xcb_render_animcursorelt_t {
	xcb_cursor_t cursor; /**<  */
	uint delay; /**<  */
}

/**
 * @brief xcb_render_animcursorelt_iterator_t
 **/
struct xcb_render_animcursorelt_iterator_t {
	xcb_render_animcursorelt_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_render_create_anim_cursor. */
enum XCB_RENDER_CREATE_ANIM_CURSOR = 31;

/**
 * @brief xcb_render_create_anim_cursor_request_t
 **/
struct xcb_render_create_anim_cursor_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_cursor_t cid; /**<  */
}

/**
 * @brief xcb_render_spanfix_t
 **/
struct xcb_render_spanfix_t {
	xcb_render_fixed_t l; /**<  */
	xcb_render_fixed_t r; /**<  */
	xcb_render_fixed_t y; /**<  */
}

/**
 * @brief xcb_render_spanfix_iterator_t
 **/
struct xcb_render_spanfix_iterator_t {
	xcb_render_spanfix_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/**
 * @brief xcb_render_trap_t
 **/
struct xcb_render_trap_t {
	xcb_render_spanfix_t top; /**<  */
	xcb_render_spanfix_t bot; /**<  */
}

/**
 * @brief xcb_render_trap_iterator_t
 **/
struct xcb_render_trap_iterator_t {
	xcb_render_trap_t* data; /**<  */
	int rem; /**<  */
	int index; /**<  */
}

/** Opcode for xcb_render_add_traps. */
enum XCB_RENDER_ADD_TRAPS = 32;

/**
 * @brief xcb_render_add_traps_request_t
 **/
struct xcb_render_add_traps_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
	short x_off; /**<  */
	short y_off; /**<  */
}

/** Opcode for xcb_render_create_solid_fill. */
enum XCB_RENDER_CREATE_SOLID_FILL = 33;

/**
 * @brief xcb_render_create_solid_fill_request_t
 **/
struct xcb_render_create_solid_fill_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
	xcb_render_color_t color; /**<  */
}

/** Opcode for xcb_render_create_linear_gradient. */
enum XCB_RENDER_CREATE_LINEAR_GRADIENT = 34;

/**
 * @brief xcb_render_create_linear_gradient_request_t
 **/
struct xcb_render_create_linear_gradient_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
	xcb_render_pointfix_t p1; /**<  */
	xcb_render_pointfix_t p2; /**<  */
	uint num_stops; /**<  */
}

/** Opcode for xcb_render_create_radial_gradient. */
enum XCB_RENDER_CREATE_RADIAL_GRADIENT = 35;

/**
 * @brief xcb_render_create_radial_gradient_request_t
 **/
struct xcb_render_create_radial_gradient_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
	xcb_render_pointfix_t inner; /**<  */
	xcb_render_pointfix_t outer; /**<  */
	xcb_render_fixed_t inner_radius; /**<  */
	xcb_render_fixed_t outer_radius; /**<  */
	uint num_stops; /**<  */
}

/** Opcode for xcb_render_create_conical_gradient. */
enum XCB_RENDER_CREATE_CONICAL_GRADIENT = 36;

/**
 * @brief xcb_render_create_conical_gradient_request_t
 **/
struct xcb_render_create_conical_gradient_request_t {
	ubyte major_opcode; /**<  */
	ubyte minor_opcode; /**<  */
	ushort length; /**<  */
	xcb_render_picture_t picture; /**<  */
	xcb_render_pointfix_t center; /**<  */
	xcb_render_fixed_t angle; /**<  */
	uint num_stops; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_glyph_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_glyph_t)
 */
void xcb_render_glyph_next(xcb_render_glyph_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_glyph_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_glyph_end(xcb_render_glyph_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_glyphset_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_glyphset_t)
 */
void xcb_render_glyphset_next(xcb_render_glyphset_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_glyphset_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_glyphset_end(xcb_render_glyphset_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_picture_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_picture_t)
 */
void xcb_render_picture_next(xcb_render_picture_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_picture_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_picture_end(xcb_render_picture_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_pictformat_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_pictformat_t)
 */
void xcb_render_pictformat_next(xcb_render_pictformat_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_pictformat_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_pictformat_end(xcb_render_pictformat_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_fixed_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_fixed_t)
 */
void xcb_render_fixed_next(xcb_render_fixed_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_fixed_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_fixed_end(xcb_render_fixed_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_directformat_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_directformat_t)
 */
void xcb_render_directformat_next(xcb_render_directformat_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_directformat_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_directformat_end(xcb_render_directformat_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_pictforminfo_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_pictforminfo_t)
 */
void xcb_render_pictforminfo_next(xcb_render_pictforminfo_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_pictforminfo_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_pictforminfo_end(xcb_render_pictforminfo_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_pictvisual_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_pictvisual_t)
 */
void xcb_render_pictvisual_next(xcb_render_pictvisual_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_pictvisual_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_pictvisual_end(xcb_render_pictvisual_iterator_t i /**< */ );

int xcb_render_pictdepth_sizeof(const void* _buffer /**< */ );

xcb_render_pictvisual_t* xcb_render_pictdepth_visuals(const xcb_render_pictdepth_t* R /**< */ );

int xcb_render_pictdepth_visuals_length(const xcb_render_pictdepth_t* R /**< */ );

xcb_render_pictvisual_iterator_t xcb_render_pictdepth_visuals_iterator(const xcb_render_pictdepth_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_pictdepth_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_pictdepth_t)
 */
void xcb_render_pictdepth_next(xcb_render_pictdepth_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_pictdepth_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_pictdepth_end(xcb_render_pictdepth_iterator_t i /**< */ );

int xcb_render_pictscreen_sizeof(const void* _buffer /**< */ );

int xcb_render_pictscreen_depths_length(const xcb_render_pictscreen_t* R /**< */ );

xcb_render_pictdepth_iterator_t xcb_render_pictscreen_depths_iterator(const xcb_render_pictscreen_t* R /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_pictscreen_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_pictscreen_t)
 */
void xcb_render_pictscreen_next(xcb_render_pictscreen_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_pictscreen_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_pictscreen_end(xcb_render_pictscreen_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_indexvalue_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_indexvalue_t)
 */
void xcb_render_indexvalue_next(xcb_render_indexvalue_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_indexvalue_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_indexvalue_end(xcb_render_indexvalue_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_color_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_color_t)
 */
void xcb_render_color_next(xcb_render_color_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_color_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_color_end(xcb_render_color_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_pointfix_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_pointfix_t)
 */
void xcb_render_pointfix_next(xcb_render_pointfix_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_pointfix_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_pointfix_end(xcb_render_pointfix_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_linefix_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_linefix_t)
 */
void xcb_render_linefix_next(xcb_render_linefix_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_linefix_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_linefix_end(xcb_render_linefix_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_triangle_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_triangle_t)
 */
void xcb_render_triangle_next(xcb_render_triangle_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_triangle_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_triangle_end(xcb_render_triangle_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_trapezoid_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_trapezoid_t)
 */
void xcb_render_trapezoid_next(xcb_render_trapezoid_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_trapezoid_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_trapezoid_end(xcb_render_trapezoid_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_glyphinfo_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_glyphinfo_t)
 */
void xcb_render_glyphinfo_next(xcb_render_glyphinfo_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_glyphinfo_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_glyphinfo_end(xcb_render_glyphinfo_iterator_t i /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_render_query_version_cookie_t xcb_render_query_version(xcb_connection_t* c /**< */ , uint client_major_version /**< */ ,
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
xcb_render_query_version_cookie_t xcb_render_query_version_unchecked(xcb_connection_t* c /**< */ ,
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
 * xcb_render_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_render_query_version_reply_t* xcb_render_query_version_reply(xcb_connection_t* c /**< */ ,
	xcb_render_query_version_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_render_query_pict_formats_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_render_query_pict_formats_cookie_t xcb_render_query_pict_formats(xcb_connection_t* c /**< */ );

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
xcb_render_query_pict_formats_cookie_t xcb_render_query_pict_formats_unchecked(xcb_connection_t* c /**< */ );

xcb_render_pictforminfo_t* xcb_render_query_pict_formats_formats(const xcb_render_query_pict_formats_reply_t* R /**< */ );

int xcb_render_query_pict_formats_formats_length(const xcb_render_query_pict_formats_reply_t* R /**< */ );

xcb_render_pictforminfo_iterator_t xcb_render_query_pict_formats_formats_iterator(const xcb_render_query_pict_formats_reply_t* R /**< */ );

int xcb_render_query_pict_formats_screens_length(const xcb_render_query_pict_formats_reply_t* R /**< */ );

xcb_render_pictscreen_iterator_t xcb_render_query_pict_formats_screens_iterator(const xcb_render_query_pict_formats_reply_t* R /**< */ );

uint* xcb_render_query_pict_formats_subpixels(const xcb_render_query_pict_formats_reply_t* R /**< */ );

int xcb_render_query_pict_formats_subpixels_length(const xcb_render_query_pict_formats_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_render_query_pict_formats_subpixels_end(const xcb_render_query_pict_formats_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_render_query_pict_formats_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_render_query_pict_formats_reply_t* xcb_render_query_pict_formats_reply(xcb_connection_t* c /**< */ ,
	xcb_render_query_pict_formats_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_render_query_pict_index_values_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_render_query_pict_index_values_cookie_t xcb_render_query_pict_index_values(xcb_connection_t* c /**< */ , xcb_render_pictformat_t format /**< */ );

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
xcb_render_query_pict_index_values_cookie_t xcb_render_query_pict_index_values_unchecked(xcb_connection_t* c /**< */ ,
	xcb_render_pictformat_t format /**< */ );

xcb_render_indexvalue_t* xcb_render_query_pict_index_values_values(const xcb_render_query_pict_index_values_reply_t* R /**< */ );

int xcb_render_query_pict_index_values_values_length(const xcb_render_query_pict_index_values_reply_t* R /**< */ );

xcb_render_indexvalue_iterator_t xcb_render_query_pict_index_values_values_iterator(const xcb_render_query_pict_index_values_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_render_query_pict_index_values_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_render_query_pict_index_values_reply_t* xcb_render_query_pict_index_values_reply(xcb_connection_t* c /**< */ ,
	xcb_render_query_pict_index_values_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_render_create_picture_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_render_create_picture_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t pid /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_render_pictformat_t format /**< */ , uint value_mask /**< */ , const uint* value_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_create_picture(xcb_connection_t* c /**< */ , xcb_render_picture_t pid /**< */ , xcb_drawable_t drawable /**< */ ,
	xcb_render_pictformat_t format /**< */ , uint value_mask /**< */ , const uint* value_list /**< */ );

int xcb_render_change_picture_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_render_change_picture_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	uint value_mask /**< */ , const uint* value_list /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_change_picture(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	uint value_mask /**< */ , const uint* value_list /**< */ );

int xcb_render_set_picture_clip_rectangles_sizeof(const void* _buffer /**< */ , uint rectangles_len /**< */ );

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
xcb_void_cookie_t xcb_render_set_picture_clip_rectangles_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	short clip_x_origin /**< */ , short clip_y_origin /**< */ , uint rectangles_len /**< */ , const xcb_rectangle_t* rectangles /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_set_picture_clip_rectangles(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	short clip_x_origin /**< */ , short clip_y_origin /**< */ , uint rectangles_len /**< */ , const xcb_rectangle_t* rectangles /**< */ );

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
xcb_void_cookie_t xcb_render_free_picture_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_free_picture(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ );

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
xcb_void_cookie_t xcb_render_composite_checked(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t mask /**< */ , xcb_render_picture_t dst /**< */ , short src_x /**< */ , short src_y /**< */ , short mask_x /**< */ , short mask_y /**< */ ,
	short dst_x /**< */ , short dst_y /**< */ , ushort width /**< */ , ushort height /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_composite(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ , xcb_render_picture_t mask /**< */ ,
	xcb_render_picture_t dst /**< */ , short src_x /**< */ , short src_y /**< */ , short mask_x /**< */ , short mask_y /**< */ , short dst_x /**< */ , short dst_y /**< */ ,
	ushort width /**< */ , ushort height /**< */ );

int xcb_render_trapezoids_sizeof(const void* _buffer /**< */ , uint traps_len /**< */ );

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
xcb_void_cookie_t xcb_render_trapezoids_checked(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t dst /**< */ , xcb_render_pictformat_t mask_format /**< */ , short src_x /**< */ , short src_y /**< */ , uint traps_len /**< */ ,
	const xcb_render_trapezoid_t* traps /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_trapezoids(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ , xcb_render_picture_t dst /**< */ ,
	xcb_render_pictformat_t mask_format /**< */ , short src_x /**< */ , short src_y /**< */ , uint traps_len /**< */ ,
	const xcb_render_trapezoid_t* traps /**< */ );

int xcb_render_triangles_sizeof(const void* _buffer /**< */ , uint triangles_len /**< */ );

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
xcb_void_cookie_t xcb_render_triangles_checked(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t dst /**< */ , xcb_render_pictformat_t mask_format /**< */ , short src_x /**< */ , short src_y /**< */ , uint triangles_len /**< */ ,
	const xcb_render_triangle_t* triangles /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_triangles(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ , xcb_render_picture_t dst /**< */ ,
	xcb_render_pictformat_t mask_format /**< */ , short src_x /**< */ , short src_y /**< */ , uint triangles_len /**< */ ,
	const xcb_render_triangle_t* triangles /**< */ );

int xcb_render_tri_strip_sizeof(const void* _buffer /**< */ , uint points_len /**< */ );

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
xcb_void_cookie_t xcb_render_tri_strip_checked(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t dst /**< */ , xcb_render_pictformat_t mask_format /**< */ , short src_x /**< */ , short src_y /**< */ , uint points_len /**< */ ,
	const xcb_render_pointfix_t* points /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_tri_strip(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ , xcb_render_picture_t dst /**< */ ,
	xcb_render_pictformat_t mask_format /**< */ , short src_x /**< */ , short src_y /**< */ , uint points_len /**< */ ,
	const xcb_render_pointfix_t* points /**< */ );

int xcb_render_tri_fan_sizeof(const void* _buffer /**< */ , uint points_len /**< */ );

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
xcb_void_cookie_t xcb_render_tri_fan_checked(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t dst /**< */ , xcb_render_pictformat_t mask_format /**< */ , short src_x /**< */ , short src_y /**< */ , uint points_len /**< */ ,
	const xcb_render_pointfix_t* points /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_tri_fan(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ , xcb_render_picture_t dst /**< */ ,
	xcb_render_pictformat_t mask_format /**< */ , short src_x /**< */ , short src_y /**< */ , uint points_len /**< */ ,
	const xcb_render_pointfix_t* points /**< */ );

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
xcb_void_cookie_t xcb_render_create_glyph_set_checked(xcb_connection_t* c /**< */ , xcb_render_glyphset_t gsid /**< */ ,
	xcb_render_pictformat_t format /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_create_glyph_set(xcb_connection_t* c /**< */ , xcb_render_glyphset_t gsid /**< */ ,
	xcb_render_pictformat_t format /**< */ );

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
xcb_void_cookie_t xcb_render_reference_glyph_set_checked(xcb_connection_t* c /**< */ , xcb_render_glyphset_t gsid /**< */ ,
	xcb_render_glyphset_t existing /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_reference_glyph_set(xcb_connection_t* c /**< */ , xcb_render_glyphset_t gsid /**< */ ,
	xcb_render_glyphset_t existing /**< */ );

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
xcb_void_cookie_t xcb_render_free_glyph_set_checked(xcb_connection_t* c /**< */ , xcb_render_glyphset_t glyphset /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_free_glyph_set(xcb_connection_t* c /**< */ , xcb_render_glyphset_t glyphset /**< */ );

int xcb_render_add_glyphs_sizeof(const void* _buffer /**< */ , uint data_len /**< */ );

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
xcb_void_cookie_t xcb_render_add_glyphs_checked(xcb_connection_t* c /**< */ , xcb_render_glyphset_t glyphset /**< */ , uint glyphs_len /**< */ ,
	const uint* glyphids /**< */ , const xcb_render_glyphinfo_t* glyphs /**< */ , uint data_len /**< */ , const ubyte* data /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_add_glyphs(xcb_connection_t* c /**< */ , xcb_render_glyphset_t glyphset /**< */ , uint glyphs_len /**< */ ,
	const uint* glyphids /**< */ , const xcb_render_glyphinfo_t* glyphs /**< */ , uint data_len /**< */ , const ubyte* data /**< */ );

int xcb_render_free_glyphs_sizeof(const void* _buffer /**< */ , uint glyphs_len /**< */ );

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
xcb_void_cookie_t xcb_render_free_glyphs_checked(xcb_connection_t* c /**< */ , xcb_render_glyphset_t glyphset /**< */ , uint glyphs_len /**< */ ,
	const xcb_render_glyph_t* glyphs /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_free_glyphs(xcb_connection_t* c /**< */ , xcb_render_glyphset_t glyphset /**< */ , uint glyphs_len /**< */ ,
	const xcb_render_glyph_t* glyphs /**< */ );

int xcb_render_composite_glyphs_8_sizeof(const void* _buffer /**< */ , uint glyphcmds_len /**< */ );

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
xcb_void_cookie_t xcb_render_composite_glyphs_8_checked(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t dst /**< */ , xcb_render_pictformat_t mask_format /**< */ , xcb_render_glyphset_t glyphset /**< */ , short src_x /**< */ ,
	short src_y /**< */ , uint glyphcmds_len /**< */ , const ubyte* glyphcmds /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_composite_glyphs_8(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t dst /**< */ , xcb_render_pictformat_t mask_format /**< */ , xcb_render_glyphset_t glyphset /**< */ , short src_x /**< */ ,
	short src_y /**< */ , uint glyphcmds_len /**< */ , const ubyte* glyphcmds /**< */ );

int xcb_render_composite_glyphs_16_sizeof(const void* _buffer /**< */ , uint glyphcmds_len /**< */ );

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
xcb_void_cookie_t xcb_render_composite_glyphs_16_checked(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t dst /**< */ , xcb_render_pictformat_t mask_format /**< */ , xcb_render_glyphset_t glyphset /**< */ , short src_x /**< */ ,
	short src_y /**< */ , uint glyphcmds_len /**< */ , const ubyte* glyphcmds /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_composite_glyphs_16(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t dst /**< */ , xcb_render_pictformat_t mask_format /**< */ , xcb_render_glyphset_t glyphset /**< */ , short src_x /**< */ ,
	short src_y /**< */ , uint glyphcmds_len /**< */ , const ubyte* glyphcmds /**< */ );

int xcb_render_composite_glyphs_32_sizeof(const void* _buffer /**< */ , uint glyphcmds_len /**< */ );

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
xcb_void_cookie_t xcb_render_composite_glyphs_32_checked(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t dst /**< */ , xcb_render_pictformat_t mask_format /**< */ , xcb_render_glyphset_t glyphset /**< */ , short src_x /**< */ ,
	short src_y /**< */ , uint glyphcmds_len /**< */ , const ubyte* glyphcmds /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_composite_glyphs_32(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t src /**< */ ,
	xcb_render_picture_t dst /**< */ , xcb_render_pictformat_t mask_format /**< */ , xcb_render_glyphset_t glyphset /**< */ , short src_x /**< */ ,
	short src_y /**< */ , uint glyphcmds_len /**< */ , const ubyte* glyphcmds /**< */ );

int xcb_render_fill_rectangles_sizeof(const void* _buffer /**< */ , uint rects_len /**< */ );

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
xcb_void_cookie_t xcb_render_fill_rectangles_checked(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t dst /**< */ ,
	xcb_render_color_t color /**< */ , uint rects_len /**< */ , const xcb_rectangle_t* rects /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_fill_rectangles(xcb_connection_t* c /**< */ , ubyte op /**< */ , xcb_render_picture_t dst /**< */ ,
	xcb_render_color_t color /**< */ , uint rects_len /**< */ , const xcb_rectangle_t* rects /**< */ );

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
xcb_void_cookie_t xcb_render_create_cursor_checked(xcb_connection_t* c /**< */ , xcb_cursor_t cid /**< */ ,
	xcb_render_picture_t source /**< */ , ushort x /**< */ , ushort y /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_create_cursor(xcb_connection_t* c /**< */ , xcb_cursor_t cid /**< */ ,
	xcb_render_picture_t source /**< */ , ushort x /**< */ , ushort y /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_transform_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_transform_t)
 */
void xcb_render_transform_next(xcb_render_transform_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_transform_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_transform_end(xcb_render_transform_iterator_t i /**< */ );

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
xcb_void_cookie_t xcb_render_set_picture_transform_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_render_transform_t transform /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_set_picture_transform(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_render_transform_t transform /**< */ );

int xcb_render_query_filters_sizeof(const void* _buffer /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_render_query_filters_cookie_t xcb_render_query_filters(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ );

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
xcb_render_query_filters_cookie_t xcb_render_query_filters_unchecked(xcb_connection_t* c /**< */ , xcb_drawable_t drawable /**< */ );

ushort* xcb_render_query_filters_aliases(const xcb_render_query_filters_reply_t* R /**< */ );

int xcb_render_query_filters_aliases_length(const xcb_render_query_filters_reply_t* R /**< */ );

xcb_generic_iterator_t xcb_render_query_filters_aliases_end(const xcb_render_query_filters_reply_t* R /**< */ );

int xcb_render_query_filters_filters_length(const xcb_render_query_filters_reply_t* R /**< */ );

xcb_str_iterator_t xcb_render_query_filters_filters_iterator(const xcb_render_query_filters_reply_t* R /**< */ );

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_render_query_filters_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
xcb_render_query_filters_reply_t* xcb_render_query_filters_reply(xcb_connection_t* c /**< */ ,
	xcb_render_query_filters_cookie_t cookie /**< */ , xcb_generic_error_t** e /**< */ );

int xcb_render_set_picture_filter_sizeof(const void* _buffer /**< */ , uint values_len /**< */ );

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
xcb_void_cookie_t xcb_render_set_picture_filter_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	ushort filter_len /**< */ , const char* filter /**< */ , uint values_len /**< */ , const xcb_render_fixed_t* values /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_set_picture_filter(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ , ushort filter_len /**< */ ,
	const char* filter /**< */ , uint values_len /**< */ , const xcb_render_fixed_t* values /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_animcursorelt_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_animcursorelt_t)
 */
void xcb_render_animcursorelt_next(xcb_render_animcursorelt_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_animcursorelt_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_animcursorelt_end(xcb_render_animcursorelt_iterator_t i /**< */ );

int xcb_render_create_anim_cursor_sizeof(const void* _buffer /**< */ , uint cursors_len /**< */ );

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
xcb_void_cookie_t xcb_render_create_anim_cursor_checked(xcb_connection_t* c /**< */ , xcb_cursor_t cid /**< */ , uint cursors_len /**< */ ,
	const xcb_render_animcursorelt_t* cursors /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_create_anim_cursor(xcb_connection_t* c /**< */ , xcb_cursor_t cid /**< */ , uint cursors_len /**< */ ,
	const xcb_render_animcursorelt_t* cursors /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_spanfix_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_spanfix_t)
 */
void xcb_render_spanfix_next(xcb_render_spanfix_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_spanfix_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_spanfix_end(xcb_render_spanfix_iterator_t i /**< */ );

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_render_trap_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_render_trap_t)
 */
void xcb_render_trap_next(xcb_render_trap_iterator_t* i /**< */ );

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_render_trap_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
xcb_generic_iterator_t xcb_render_trap_end(xcb_render_trap_iterator_t i /**< */ );

int xcb_render_add_traps_sizeof(const void* _buffer /**< */ , uint traps_len /**< */ );

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
xcb_void_cookie_t xcb_render_add_traps_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ , short x_off /**< */ , short y_off /**< */ ,
	uint traps_len /**< */ , const xcb_render_trap_t* traps /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_add_traps(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ , short x_off /**< */ , short y_off /**< */ ,
	uint traps_len /**< */ , const xcb_render_trap_t* traps /**< */ );

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
xcb_void_cookie_t xcb_render_create_solid_fill_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_render_color_t color /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_create_solid_fill(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ , xcb_render_color_t color /**< */ );

int xcb_render_create_linear_gradient_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_render_create_linear_gradient_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_render_pointfix_t p1 /**< */ , xcb_render_pointfix_t p2 /**< */ , uint num_stops /**< */ , const xcb_render_fixed_t* stops /**< */ ,
	const xcb_render_color_t* colors /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_create_linear_gradient(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_render_pointfix_t p1 /**< */ , xcb_render_pointfix_t p2 /**< */ , uint num_stops /**< */ , const xcb_render_fixed_t* stops /**< */ ,
	const xcb_render_color_t* colors /**< */ );

int xcb_render_create_radial_gradient_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_render_create_radial_gradient_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_render_pointfix_t inner /**< */ , xcb_render_pointfix_t outer /**< */ , xcb_render_fixed_t inner_radius /**< */ ,
	xcb_render_fixed_t outer_radius /**< */ , uint num_stops /**< */ , const xcb_render_fixed_t* stops /**< */ ,
	const xcb_render_color_t* colors /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_create_radial_gradient(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_render_pointfix_t inner /**< */ , xcb_render_pointfix_t outer /**< */ , xcb_render_fixed_t inner_radius /**< */ ,
	xcb_render_fixed_t outer_radius /**< */ , uint num_stops /**< */ , const xcb_render_fixed_t* stops /**< */ ,
	const xcb_render_color_t* colors /**< */ );

int xcb_render_create_conical_gradient_sizeof(const void* _buffer /**< */ );

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
xcb_void_cookie_t xcb_render_create_conical_gradient_checked(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_render_pointfix_t center /**< */ , xcb_render_fixed_t angle /**< */ , uint num_stops /**< */ , const xcb_render_fixed_t* stops /**< */ ,
	const xcb_render_color_t* colors /**< */ );

/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
xcb_void_cookie_t xcb_render_create_conical_gradient(xcb_connection_t* c /**< */ , xcb_render_picture_t picture /**< */ ,
	xcb_render_pointfix_t center /**< */ , xcb_render_fixed_t angle /**< */ , uint num_stops /**< */ , const xcb_render_fixed_t* stops /**< */ ,
	const xcb_render_color_t* colors /**< */ );

/**
 * @}
 */
