package js;

@:native("THREE")
extern class Three
{
	static var REVISION(default, null) : String;
	
    static var CullFaceNone(default, null) = 0;
	static var CullFaceBack(default, null) = 1;
	static var CullFaceFront(default, null) = 2;
	static var CullFaceFrontBack(default, null) = 3;
	static var BasicShadowMap(default, null) = 0;
	static var PCFShadowMap(default, null) = 1;
	static var PCFSoftShadowMap(default, null) = 2;
	static var VSMShadowMap(default, null) = 3;
	static var FrontSide(default, null) = 0;
	static var BackSide(default, null) = 1;
	static var DoubleSide(default, null) = 2;
	static var NoBlending(default, null) = 0;
	static var NormalBlending(default, null) = 1;
	static var AdditiveBlending(default, null) = 2;
	static var SubtractiveBlending(default, null) = 3;
	static var MultiplyBlending(default, null) = 4;
	static var CustomBlending(default, null) = 5;
	static var AddEquation(default, null) = 100;
	static var SubtractEquation(default, null) = 101;
	static var ReverseSubtractEquation(default, null) = 102;
	static var MinEquation(default, null) = 103;
	static var MaxEquation(default, null) = 104;
	static var ZeroFactor(default, null) = 200;
	static var OneFactor(default, null) = 201;
	static var SrcColorFactor(default, null) = 202;
	static var OneMinusSrcColorFactor(default, null) = 203;
	static var SrcAlphaFactor(default, null) = 204;
	static var OneMinusSrcAlphaFactor(default, null) = 205;
	static var DstAlphaFactor(default, null) = 206;
	static var OneMinusDstAlphaFactor(default, null) = 207;
	static var DstColorFactor(default, null) = 208;
	static var OneMinusDstColorFactor(default, null) = 209;
	static var SrcAlphaSaturateFactor(default, null) = 210;
	static var ConstantColorFactor(default, null) = 211;
	static var OneMinusConstantColorFactor(default, null) = 212;
	static var ConstantAlphaFactor(default, null) = 213;
	static var OneMinusConstantAlphaFactor(default, null) = 214;
	static var NeverDepth(default, null) = 0;
	static var AlwaysDepth(default, null) = 1;
	static var LessDepth(default, null) = 2;
	static var LessEqualDepth(default, null) = 3;
	static var EqualDepth(default, null) = 4;
	static var GreaterEqualDepth(default, null) = 5;
	static var GreaterDepth(default, null) = 6;
	static var NotEqualDepth(default, null) = 7;
	static var MultiplyOperation(default, null) = 0;
	static var MixOperation(default, null) = 1;
	static var AddOperation(default, null) = 2;
	static var NoToneMapping(default, null) = 0;
	static var LinearToneMapping(default, null) = 1;
	static var ReinhardToneMapping(default, null) = 2;
	static var CineonToneMapping(default, null) = 3;
	static var ACESFilmicToneMapping(default, null) = 4;
	static var CustomToneMapping(default, null) = 5;
	static var AgXToneMapping(default, null) = 6;
	
    static var AttachedBindMode(default, null) : String; // "attached"
	static var DetachedBindMode(default, null) : String; // "detached"
	
    /**
	 * Maps the texture using the mesh's UV coordinates.
	 * @remarks This is the _default_ value and behaver for Texture Mapping.
	 */
	static var UVMapping(default, null) = 300;
	
    /**
	 * @remarks This is the _default_ value and behaver for Cube Texture Mapping.
	 */
	static var CubeReflectionMapping(default, null) = 301;
	static var CubeRefractionMapping(default, null) = 302;
	static var CubeUVReflectionMapping(default, null) = 306;
	static var EquirectangularReflectionMapping(default, null) = 303;
	static var EquirectangularRefractionMapping(default, null) = 304;

    /**
	 * With {@link RepeatWrapping} the texture will simply repeat to infinity. 
	 */
	static var RepeatWrapping(default, null) = 1000;
	
    /**
	 * With {@link ClampToEdgeWrapping} the last pixel of the texture stretches to the edge of the mesh.
	 * @remarks This is the _default_ value and behaver for Wrapping Mapping.
	 */
    static var ClampToEdgeWrapping(default, null) = 1001;

	/**
	 * With {@link MirroredRepeatWrapping} the texture will repeats to infinity, mirroring on each repeat. 
	 */
    static var MirroredRepeatWrapping(default, null) = 1002;

	/**
	 * {@link NearestFilter} returns the value of the texture element that is nearest (in Manhattan distance) to the specified texture coordinates. 
	 */
    static var NearestFilter(default, null) = 1003;

	/**
	 * {@link NearestMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured
	 * and uses the {@link NearestFilter} criterion (the texel nearest to the center of the pixel) to produce a texture value.
	 */
	static var NearestMipmapNearestFilter(default, null) = 1004;

	/**
	 * {@link NearestMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured
	 * and uses the {@link NearestFilter} criterion (the texel nearest to the center of the pixel) to produce a texture value.
	 */
	static var NearestMipMapNearestFilter(default, null) = 1004;

	/**
	 * {@link NearestMipmapLinearFilter} chooses the two mipmaps that most closely match the size of the pixel being textured
	 * and uses the {@link NearestFilter} criterion to produce a texture value from each mipmap.
	 * The final texture value is a weighted average of those two values.
	 */
	static var NearestMipmapLinearFilter(default, null) = 1005;

	/**
	 * {@link NearestMipMapLinearFilter} chooses the two mipmaps that most closely match the size of the pixel being textured
	 * and uses the {@link NearestFilter} criterion to produce a texture value from each mipmap.
	 * The final texture value is a weighted average of those two values.
	 */
	static var NearestMipMapLinearFilter(default, null) = 1005;

	/**
	 * {@link LinearFilter} returns the weighted average of the four texture elements that are closest to the specified texture coordinates,
	 * and can include items wrapped or repeated from other parts of a texture,
	 * depending on the values of {@link THREE.Texture.wrapS | wrapS} and {@link THREE.Texture.wrapT | wrapT}, and on the exact mapping.
	 */
	static var LinearFilter(default, null) = 1006;

	/**
	 * {@link LinearMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured and
	 * uses the {@link LinearFilter} criterion (a weighted average of the four texels that are closest to the center of the pixel) to produce a texture value.
	 */
	static var LinearMipmapNearestFilter(default, null) = 1007;

	/**
	 * {@link LinearMipMapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured and
	 * uses the {@link LinearFilter} criterion (a weighted average of the four texels that are closest to the center of the pixel) to produce a texture value.
	 */
	static var LinearMipMapNearestFilter(default, null) = 1007;

	/**
	 * {@link LinearMipmapLinearFilter} is the default and chooses the two mipmaps that most closely match the size of the pixel being textured and
	 * uses the {@link LinearFilter} criterion to produce a texture value from each mipmap.
	 * The final texture value is a weighted average of those two values.
	 */
	static var LinearMipmapLinearFilter(default, null) = 1008;

	/**
	 * {@link LinearMipMapLinearFilter} is the default and chooses the two mipmaps that most closely match the size of the pixel being textured and
	 * uses the {@link LinearFilter} criterion to produce a texture value from each mipmap.
	 * The final texture value is a weighted average of those two values.
	 */
	static var LinearMipMapLinearFilter(default, null) = 1008;

	static var UnsignedByteType(default, null) = 1009;
	static var ByteType(default, null) = 1010;
	static var ShortType(default, null) = 1011;
	static var UnsignedShortType(default, null) = 1012;
	static var IntType(default, null) = 1013;
	static var UnsignedIntType(default, null) = 1014;
	static var FloatType(default, null) = 1015;
	static var HalfFloatType(default, null) = 1016;
	static var UnsignedShort4444Type(default, null) = 1017;
	static var UnsignedShort5551Type(default, null) = 1018;
	static var UnsignedInt248Type(default, null) = 1020;

	/**
	 * {@link AlphaFormat} discards the red, green and blue components and reads just the alpha component. 
	 */
	static var AlphaFormat(default, null) = 1021;

	/**
	 * {@link RGBAFormat} discards the green and blue components and reads just the red component. (Can only be used with a WebGL 2 rendering context). 
	 */
	static var RGBAFormat(default, null) = 1023;

	/**
	 * {@link LuminanceFormat} reads each element as a single luminance component.
	 * This is then converted to a floating point, clamped to the range `[0,1]`, and then assembled into an RGBA element by
	 * placing the luminance value in the red, green and blue channels, and attaching `1.0` to the alpha channel.
	 */
	static var LuminanceFormat(default, null) = 1024;

	/**
	 * {@link LuminanceAlphaFormat} reads each element as a luminance/alpha double.
	 * The same process occurs as for the {@link LuminanceFormat}, except that the alpha channel may have values other than `1.0`.
	 */
	static var LuminanceAlphaFormat(default, null) = 1025;

	/**
	 * {@link DepthFormat} reads each element as a single depth value, converts it to floating point, and clamps to the range `[0,1]`.
	 * @remarks This is the default for {@link THREE.DepthTexture}.
	 */
	static var DepthFormat(default, null) = 1026;

	/**
	 * {@link DepthStencilFormat} reads each element is a pair of depth and stencil values.
	 * The depth component of the pair is interpreted as in {@link DepthFormat}.
	 * The stencil component is interpreted based on the depth + stencil internal format.
	 */
	static var DepthStencilFormat(default, null) = 1027;

	/**
	 * {@link RedFormat} discards the green and blue components and reads just the red component.
	 * @remarks Can only be used with a WebGL 2 rendering context.
	 */
	static var RedFormat(default, null) = 1028;

	/**
	 * {@link RedIntegerFormat} discards the green and blue components and reads just the red component.
	 * The texels are read as integers instead of floating point.
	 * @remarks Can only be used with a WebGL 2 rendering context.
	 */
	static var RedIntegerFormat(default, null) = 1029;

	/**
	 * {@link RGFormat} discards the alpha, and blue components and reads the red, and green components.
	 * @remarks Can only be used with a WebGL 2 rendering context.
	 */
	static var RGFormat(default, null) = 1030;

	/**
	 * {@link RGIntegerFormat} discards the alpha, and blue components and reads the red, and green components.
	 * The texels are read as integers instead of floating point.
	 * @remarks Can only be used with a WebGL 2 rendering context.
	 */
	static var RGIntegerFormat(default, null) = 1031;

	/**
	 * {@link RGBAIntegerFormat} reads the red, green, blue and alpha component
	 * @remarks This is the default for {@link THREE.Texture}.
	 */
	static var RGBAIntegerFormat(default, null) = 1033;

	static var _SRGBAFormat(default, null) = 1035;

	/**
	 * A DXT1-compressed image in an RGB image format.
	 * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
	 */
	static var RGB_S3TC_DXT1_Format(default, null) = 33776;

	/**
	 * A DXT1-compressed image in an RGB image format with a simple on/off alpha value.
	 * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
	 */
	static var RGBA_S3TC_DXT1_Format(default, null) = 33777;

	/**
	 * A DXT3-compressed image in an RGBA image format. Compared to a 32-bit RGBA texture, it offers 4:1 compression.
	 * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
	 */
	static var RGBA_S3TC_DXT3_Format(default, null) = 33778;

	/**
	 * A DXT5-compressed image in an RGBA image format. It also provides a 4:1 compression, but differs to the DXT3 compression in how the alpha compression is done.
	 * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
	 */
	static var RGBA_S3TC_DXT5_Format(default, null) = 33779;

	/**
	 * RGB compression in 4-bit mode. One block for each 4×4 pixels.
	 * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
	 */
	static var RGB_PVRTC_4BPPV1_Format(default, null) = 35840;

	/**
	 * RGB compression in 2-bit mode. One block for each 8×4 pixels.
	 * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
	 */
	static var RGB_PVRTC_2BPPV1_Format(default, null) = 35841;

	/**
	 * RGBA compression in 4-bit mode. One block for each 4×4 pixels.
	 * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
	 */
	static var RGBA_PVRTC_4BPPV1_Format(default, null) = 35842;

	/**
	 * RGBA compression in 2-bit mode. One block for each 8×4 pixels.
	 * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
	 */
	static var RGBA_PVRTC_2BPPV1_Format(default, null) = 35843;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_etc1_ (ETC1) or _WEBGL_compressed_texture_etc_ (ETC2) WebGL extension.
	 */
	static var RGB_ETC1_Format(default, null) = 36196;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_etc1_ (ETC1) or _WEBGL_compressed_texture_etc_ (ETC2) WebGL extension.
	 */
	static var RGB_ETC2_Format(default, null) = 37492;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_etc1_ (ETC1) or _WEBGL_compressed_texture_etc_ (ETC2) WebGL extension.
	 */
	static var RGBA_ETC2_EAC_Format(default, null) = 37496;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_4x4_Format(default, null) = 37808;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_5x4_Format(default, null) = 37809;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_5x5_Format(default, null) = 37810;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_6x5_Format(default, null) = 37811;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_6x6_Format(default, null) = 37812;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_8x5_Format(default, null) = 37813;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_8x6_Format(default, null) = 37814;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_8x8_Format(default, null) = 37815;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_10x5_Format(default, null) = 37816;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_10x6_Format(default, null) = 37817;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_10x8_Format(default, null) = 37818;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_10x10_Format(default, null) = 37819;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_12x10_Format(default, null) = 37820;

	/**
	 * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
	 */
	static var RGBA_ASTC_12x12_Format(default, null) = 37821;

	/**
	 * @remarks Require support for the _EXT_texture_compression_bptc_ WebGL extension.
	 */
	static var RGBA_BPTC_Format(default, null) = 36492;

	static var RGB_BPTC_SIGNED_Format(default, null) : Dynamic;
	static var RGB_BPTC_UNSIGNED_Format(default, null) : Dynamic;

	static var RED_RGTC1_Format(default, null) = 36283;
	static var SIGNED_RED_RGTC1_Format(default, null) = 36284;
	static var RED_GREEN_RGTC2_Format(default, null) = 36285;
	static var SIGNED_RED_GREEN_RGTC2_Format(default, null) = 36286;
	static var LoopOnce(default, null) = 2200;
	static var LoopRepeat(default, null) = 2201;
	static var LoopPingPong(default, null) = 2202;
	static var InterpolateDiscrete(default, null) = 2300;
	static var InterpolateLinear(default, null) = 2301;
	static var InterpolateSmooth(default, null) = 2302;
	static var ZeroCurvatureEnding(default, null) = 2400;
	static var ZeroSlopeEnding(default, null) = 2401;
	static var WrapAroundEnding(default, null) = 2402;
	static var NormalAnimationBlendMode(default, null) = 2500;
	static var AdditiveAnimationBlendMode(default, null) = 2501;
	static var TrianglesDrawMode(default, null) = 0;
	static var TriangleStripDrawMode(default, null) = 1;
	static var TriangleFanDrawMode(default, null) = 2;

	/**
	 * @deprecated Use {@link LinearSRGBColorSpace} or {@link NoColorSpace} in three.js r152+. 
	 */
	static var LinearEncoding(default, null) = 3000;

	/**
	 * @deprecated Use {@link SRGBColorSpace} in three.js r152+. 
	 */
	static var sRGBEncoding(default, null) = 3001;

	static var BasicDepthPacking(default, null) = 3200;
	static var RGBADepthPacking(default, null) = 3201;
	static var TangentSpaceNormalMap(default, null) = 0;
	static var ObjectSpaceNormalMap(default, null) = 1;
	static var NoColorSpace(default, null) : String; // ""
	static var SRGBColorSpace(default, null) : String; // "srgb"
	static var LinearSRGBColorSpace(default, null) : String; // "srgb-linear"
	static var DisplayP3ColorSpace(default, null) : String; // "display-p3"
	static var LinearDisplayP3ColorSpace(default, null) : Dynamic;
	static var LinearTransfer(default, null) : String; // "linear"
	static var SRGBTransfer(default, null) : String; // "srgb"
	static var Rec709Primaries(default, null) : String; // "rec709"
	static var P3Primaries(default, null) : String; // "p3"
	static var ZeroStencilOp(default, null) = 0;
	static var KeepStencilOp(default, null) = 7680;
	static var ReplaceStencilOp(default, null) = 7681;
	static var IncrementStencilOp(default, null) = 7682;
	static var DecrementStencilOp(default, null) = 7283;
	static var IncrementWrapStencilOp(default, null) = 34055;
	static var DecrementWrapStencilOp(default, null) = 34056;
	static var InvertStencilOp(default, null) = 5386;
	static var NeverStencilFunc(default, null) = 512;
	static var LessStencilFunc(default, null) = 513;
	static var EqualStencilFunc(default, null) = 514;
	static var LessEqualStencilFunc(default, null) = 515;
	static var GreaterStencilFunc(default, null) = 516;
	static var NotEqualStencilFunc(default, null) = 517;
	static var GreaterEqualStencilFunc(default, null) = 518;
	static var AlwaysStencilFunc(default, null) = 519;
	static var NeverCompare(default, null) = 512;
	static var LessCompare(default, null) = 513;
	static var EqualCompare(default, null) = 514;
	static var LessEqualCompare(default, null) = 515;
	static var GreaterCompare(default, null) = 516;
	static var NotEqualCompare(default, null) = 517;
	static var GreaterEqualCompare(default, null) = 518;
	static var AlwaysCompare(default, null) = 519;
	static var StaticDrawUsage(default, null) = 35044;
	static var DynamicDrawUsage(default, null) = 35048;
	static var StreamDrawUsage(default, null) = 35040;
	static var StaticReadUsage(default, null) = 35045;
	static var DynamicReadUsage(default, null) = 35049;
	static var StreamReadUsage(default, null) = 35041;
	static var StaticCopyUsage(default, null) = 35046;
	static var DynamicCopyUsage(default, null) = 35050;
	static var StreamCopyUsage(default, null) = 35042;
	
    static var GLSL1(default, null) : String; // "100"
	static var GLSL3(default, null) : String; // "300 es";
	
    static var WebGLCoordinateSystem(default, null) = 2000;
	static var WebGPUCoordinateSystem(default, null) = 2001;
	
    static var ColorManagement(default, null) : ColorManagement;
	static var _colorKeywords(default, null) : { var aliceblue : 0xf0f8ff; var antiquewhite : 0xfaebd7; var aqua : 0x00ffff; var aquamarine : 0x7fffd4; var azure : 0xf0ffff; var beige : 0xf5f5dc; var bisque : 0xffe4c4; var black : 0x000000; var blanchedalmond : 0xffebcd; var blue : 0x0000ff; var blueviolet : 0x8a2be2; var brown : 0xa52a2a; var burlywood : 0xdeb887; var cadetblue : 0x5f9ea0; var chartreuse : 0x7fff00; var chocolate : 0xd2691e; var coral : 0xff7f50; var cornflowerblue : 0x6495ed; var cornsilk : 0xfff8dc; var crimson : 0xdc143c; var cyan : 0x00ffff; var darkblue : 0x00008b; var darkcyan : 0x008b8b; var darkgoldenrod : 0xb8860b; var darkgray : 0xa9a9a9; var darkgreen : 0x006400; var darkgrey : 0xa9a9a9; var darkkhaki : 0xbdb76b; var darkmagenta : 0x8b008b; var darkolivegreen : 0x556b2f; var darkorange : 0xff8c00; var darkorchid : 0x9932cc; var darkred : 0x8b0000; var darksalmon : 0xe9967a; var darkseagreen : 0x8fbc8f; var darkslateblue : 0x483d8b; var darkslategray : 0x2f4f4f; var darkslategrey : 0x2f4f4f; var darkturquoise : 0x00ced1; var darkviolet : 0x9400d3; var deeppink : 0xff1493; var deepskyblue : 0x00bfff; var dimgray : 0x696969; var dimgrey : 0x696969; var dodgerblue : 0x1e90ff; var firebrick : 0xb22222; var floralwhite : 0xfffaf0; var forestgreen : 0x228b22; var fuchsia : 0xff00ff; var gainsboro : 0xdcdcdc; var ghostwhite : 0xf8f8ff; var gold : 0xffd700; var goldenrod : 0xdaa520; var gray : 0x808080; var green : 0x008000; var greenyellow : 0xadff2f; var grey : 0x808080; var honeydew : 0xf0fff0; var hotpink : 0xff69b4; var indianred : 0xcd5c5c; var indigo : 0x4b0082; var ivory : 0xfffff0; var khaki : 0xf0e68c; var lavender : 0xe6e6fa; var lavenderblush : 0xfff0f5; var lawngreen : 0x7cfc00; var lemonchiffon : 0xfffacd; var lightblue : 0xadd8e6; var lightcoral : 0xf08080; var lightcyan : 0xe0ffff; var lightgoldenrodyellow : 0xfafad2; var lightgray : 0xd3d3d3; var lightgreen : 0x90ee90; var lightgrey : 0xd3d3d3; var lightpink : 0xffb6c1; var lightsalmon : 0xffa07a; var lightseagreen : 0x20b2aa; var lightskyblue : 0x87cefa; var lightslategray : 0x778899; var lightslategrey : 0x778899; var lightsteelblue : 0xb0c4de; var lightyellow : 0xffffe0; var lime : 0x00ff00; var limegreen : 0x32cd32; var linen : 0xfaf0e6; var magenta : 0xff00ff; var maroon : 0x800000; var mediumaquamarine : 0x66cdaa; var mediumblue : 0x0000cd; var mediumorchid : 0xba55d3; var mediumpurple : 0x9370db; var mediumseagreen : 0x3cb371; var mediumslateblue : 0x7b68ee; var mediumspringgreen : 0x00fa9a; var mediumturquoise : 0x48d1cc; var mediumvioletred : 0xc71585; var midnightblue : 0x191970; var mintcream : 0xf5fffa; var mistyrose : 0xffe4e1; var moccasin : 0xffe4b5; var navajowhite : 0xffdead; var navy : 0x000080; var oldlace : 0xfdf5e6; var olive : 0x808000; var olivedrab : 0x6b8e23; var orange : 0xffa500; var orangered : 0xff4500; var orchid : 0xda70d6; var palegoldenrod : 0xeee8aa; var palegreen : 0x98fb98; var paleturquoise : 0xafeeee; var palevioletred : 0xdb7093; var papayawhip : 0xffefd5; var peachpuff : 0xffdab9; var peru : 0xcd853f; var pink : 0xffc0cb; var plum : 0xdda0dd; var powderblue : 0xb0e0e6; var purple : 0x800080; var rebeccapurple : 0x663399; var red : 0xff0000; var rosybrown : 0xbc8f8f; var royalblue : 0x4169e1; var saddlebrown : 0x8b4513; var salmon : 0xfa8072; var sandybrown : 0xf4a460; var seagreen : 0x2e8b57; var seashell : 0xfff5ee; var sienna : 0xa0522d; var silver : 0xc0c0c0; var skyblue : 0x87ceeb; var slateblue : 0x6a5acd; var slategray : 0x708090; var slategrey : 0x708090; var snow : 0xfffafa; var springgreen : 0x00ff7f; var steelblue : 0x4682b4; var tan : 0xd2b48c; var teal : 0x008080; var thistle : 0xd8bfd8; var tomato : 0xff6347; var turquoise : 0x40e0d0; var violet : 0xee82ee; var wheat : 0xf5deb3; var white : 0xffffff; var whitesmoke : 0xf5f5f5; var yellow : 0xffff00; var yellowgreen : 0x9acd32; };
	
    static var UniformsLib(default, null) : { var common : { var diffuse : IUniform<Color>; var opacity : IUniform<Float>; var map : IUniform<unknown>; var mapTransform : IUniform<Matrix3>; var alphaMap : IUniform<unknown>; var alphaMapTransform : IUniform<Matrix3>; var alphaTest : IUniform<Float>; }; var specularmap : { var specularMap : IUniform<unknown>; var specularMapTransform : IUniform<Matrix3>; }; var envmap : { var envMap : IUniform<unknown>; var flipEnvMap : IUniform<Float>; var reflectivity : IUniform<Float>; var ior : IUniform<Float>; var refractRatio : IUniform<Float>; }; var aomap : { var aoMap : IUniform<unknown>; var aoMapIntensity : IUniform<Float>; var aoMapTransform : IUniform<Matrix3>; }; var lightmap : { var lightMap : IUniform<Float>; var lightMapIntensity : IUniform<Float>; var lightMapTransform : IUniform<Matrix3>; }; var bumpmap : { var bumpMap : IUniform<unknown>; var bumpMapTransform : IUniform<Matrix3>; var bumpScale : IUniform<Float>; }; var normalmap : { var normalMap : IUniform<unknown>; var normalMapTransform : IUniform<Matrix3>; var normalScale : IUniform<Vector2>; }; var displacementmap : { var displacementMap : IUniform<unknown>; var displacementMapTransform : IUniform<Matrix3>; var displacementScale : IUniform<Float>; var displacementBias : IUniform<Float>; }; var emissivemap : { var emissiveMap : IUniform<unknown>; var emissiveMapTransform : IUniform<Matrix3>; }; var metalnessmap : { var metalnessMap : IUniform<unknown>; var metalnessMapTransform : IUniform<Matrix3>; }; var roughnessmap : { var roughnessMap : IUniform<unknown>; var roughnessMapTransform : IUniform<Matrix3>; }; var gradientmap : { var gradientMap : IUniform<unknown>; }; var fog : { var fogDensity : IUniform<Float>; var fogNear : IUniform<Float>; var fogFar : IUniform<Float>; var fogColor : IUniform<Color>; }; var lights : { var ambientLightColor : IUniform<Array<unknown>>; var lightProbe : IUniform<Array<unknown>>; var directionalLights : { var value : Array<unknown>; var properties : { var direction : {}; var color : {}; }; }; var directionalLightShadows : { var value : Array<unknown>; var properties : { var shadowBias : {}; var shadowNormalBias : {}; var shadowRadius : {}; var shadowMapSize : {}; }; }; var directionalShadowMap : IUniform<Array<unknown>>; var directionalShadowMatrix : IUniform<Array<unknown>>; var spotLights : { var value : Array<unknown>; var properties : { var color : {}; var position : {}; var direction : {}; var distance : {}; var coneCos : {}; var penumbraCos : {}; var decay : {}; }; }; var spotLightShadows : { var value : Array<unknown>; var properties : { var shadowBias : {}; var shadowNormalBias : {}; var shadowRadius : {}; var shadowMapSize : {}; }; }; var spotLightMap : IUniform<Array<unknown>>; var spotShadowMap : IUniform<Array<unknown>>; var spotLightMatrix : IUniform<Array<unknown>>; var pointLights : { var value : Array<unknown>; var properties : { var color : {}; var position : {}; var decay : {}; var distance : {}; }; }; var pointLightShadows : { var value : Array<unknown>; var properties : { var shadowBias : {}; var shadowNormalBias : {}; var shadowRadius : {}; var shadowMapSize : {}; var shadowCameraNear : {}; var shadowCameraFar : {}; }; }; var pointShadowMap : IUniform<Array<unknown>>; var pointShadowMatrix : IUniform<Array<unknown>>; var hemisphereLights : { var value : Array<unknown>; var properties : { var direction : {}; var skycolor : {}; var groundColor : {}; }; }; var rectAreaLights : { var value : Array<unknown>; var properties : { var color : {}; var position : {}; var width : {}; var height : {}; }; }; var ltc_1 : IUniform<unknown>; var ltc_2 : IUniform<unknown>; }; var points : { var diffuse : IUniform<Color>; var opacity : IUniform<Float>; var size : IUniform<Float>; var scale : IUniform<Float>; var map : IUniform<unknown>; var alphaMap : IUniform<unknown>; var alphaTest : IUniform<Float>; var uvTransform : IUniform<Matrix3>; }; var sprite : { var diffuse : IUniform<Color>; var opacity : IUniform<Float>; var center : IUniform<Vector2>; var rotation : IUniform<Float>; var map : IUniform<unknown>; var mapTransform : IUniform<Matrix3>; var alphaMap : IUniform<unknown>; var alphaTest : IUniform<Float>; }; };
	
    static var DefaultLoadingManager(default, null) : LoadingManager;
	
    static var LoaderUtils(default, null) : LoaderUtils;

	/**
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/math/MathUtils.js|src/math/MathUtils.js}
	 */
	static var DEG2RAD(default, null) : Float;
	static var RAD2DEG(default, null) : Float;
	static var MathUtils(default, null) : { var DEG2RAD : typeof DEG2RAD; var RAD2DEG : typeof RAD2DEG; var generateUUID : typeof generateUUID; var clamp : typeof clamp; var euclideanModulo : typeof euclideanModulo; var mapLinear : typeof mapLinear; var inverseLerp : typeof inverseLerp; var lerp : typeof lerp; var damp : typeof damp; var pingpong : typeof pingpong; var smoothstep : typeof smoothstep; var smootherstep : typeof smootherstep; var randInt : typeof randInt; var randFloat : typeof randFloat; var randFloatSpread : typeof randFloatSpread; var seededRandom : typeof seededRandom; var degToRad : typeof degToRad; var radToDeg : typeof radToDeg; var isPowerOfTwo : typeof isPowerOfTwo; var ceilPowerOfTwo : typeof ceilPowerOfTwo; var floorPowerOfTwo : typeof floorPowerOfTwo; var setQuaternionFromProperEuler : typeof setQuaternionFromProperEuler; var normalize : typeof normalize; var denormalize : typeof denormalize; };
	static var ShaderChunk(default, null) : { var alphahash_fragment : String; var alphahash_pars_fragment : String; var alphamap_fragment : String; var alphamap_pars_fragment : String; var alphatest_fragment : String; var alphatest_pars_fragment : String; var aomap_fragment : String; var aomap_pars_fragment : String; var batching_pars_vertex : String; var begin_vertex : String; var beginnormal_vertex : String; var bsdfs : String; var iridescence_fragment : String; var bumpmap_pars_fragment : String; var clipping_planes_fragment : String; var clipping_planes_pars_fragment : String; var clipping_planes_pars_vertex : String; var clipping_planes_vertex : String; var color_fragment : String; var color_pars_fragment : String; var color_pars_vertex : String; var color_vertex : String; var common : String; var cube_uv_reflection_fragment : String; var defaultnormal_vertex : String; var displacementmap_pars_vertex : String; var displacementmap_vertex : String; var emissivemap_fragment : String; var emissivemap_pars_fragment : String; var colorspace_fragment : String; var colorspace_pars_fragment : String; var envmap_fragment : String; var envmap_common_pars_fragment : String; var envmap_pars_fragment : String; var envmap_pars_vertex : String; var envmap_physical_pars_fragment : String; var envmap_vertex : String; var fog_vertex : String; var fog_pars_vertex : String; var fog_fragment : String; var fog_pars_fragment : String; var gradientmap_pars_fragment : String; var lightmap_fragment : String; var lightmap_pars_fragment : String; var lights_lambert_fragment : String; var lights_lambert_pars_fragment : String; var lights_pars_begin : String; var lights_toon_fragment : String; var lights_toon_pars_fragment : String; var lights_phong_fragment : String; var lights_phong_pars_fragment : String; var lights_physical_fragment : String; var lights_physical_pars_fragment : String; var lights_fragment_begin : String; var lights_fragment_maps : String; var lights_fragment_end : String; var logdepthbuf_fragment : String; var logdepthbuf_pars_fragment : String; var logdepthbuf_pars_vertex : String; var logdepthbuf_vertex : String; var map_fragment : String; var map_pars_fragment : String; var map_particle_fragment : String; var map_particle_pars_fragment : String; var metalnessmap_fragment : String; var metalnessmap_pars_fragment : String; var morphcolor_vertex : String; var morphnormal_vertex : String; var morphtarget_pars_vertex : String; var morphtarget_vertex : String; var normal_fragment_begin : String; var normal_fragment_maps : String; var normal_pars_fragment : String; var normal_pars_vertex : String; var normal_vertex : String; var normalmap_pars_fragment : String; var clearcoat_normal_fragment_begin : String; var clearcoat_normal_fragment_maps : String; var clearcoat_pars_fragment : String; var iridescence_pars_fragment : String; var opaque_fragment : String; var packing : String; var premultiplied_alpha_fragment : String; var project_vertex : String; var dithering_fragment : String; var dithering_pars_fragment : String; var roughnessmap_fragment : String; var roughnessmap_pars_fragment : String; var shadowmap_pars_fragment : String; var shadowmap_pars_vertex : String; var shadowmap_vertex : String; var shadowmask_pars_fragment : String; var skinbase_vertex : String; var skinning_pars_vertex : String; var skinning_vertex : String; var skinnormal_vertex : String; var specularmap_fragment : String; var specularmap_pars_fragment : String; var tonemapping_fragment : String; var tonemapping_pars_fragment : String; var transmission_fragment : String; var transmission_pars_fragment : String; var uv_pars_fragment : String; var uv_pars_vertex : String; var uv_vertex : String; var worldpos_vertex : String; var background_vert : String; var background_frag : String; var backgroundCube_vert : String; var backgroundCube_frag : String; var cube_vert : String; var cube_frag : String; var depth_vert : String; var depth_frag : String; var distanceRGBA_vert : String; var distanceRGBA_frag : String; var equirect_vert : String; var equirect_frag : String; var linedashed_vert : String; var linedashed_frag : String; var meshbasic_vert : String; var meshbasic_frag : String; var meshlambert_vert : String; var meshlambert_frag : String; var meshmatcap_vert : String; var meshmatcap_frag : String; var meshnormal_vert : String; var meshnormal_frag : String; var meshphong_vert : String; var meshphong_frag : String; var meshphysical_vert : String; var meshphysical_frag : String; var meshtoon_vert : String; var meshtoon_frag : String; var points_vert : String; var points_frag : String; var shadow_vert : String; var shadow_frag : String; var sprite_vert : String; var sprite_frag : String; };
	static var ShaderLib : { var basic : ShaderLibShader; var lambert : ShaderLibShader; var phong : ShaderLibShader; var standard : ShaderLibShader; var matcap : ShaderLibShader; var points : ShaderLibShader; var dashed : ShaderLibShader; var depth : ShaderLibShader; var normal : ShaderLibShader; var sprite : ShaderLibShader; var background : ShaderLibShader; var cube : ShaderLibShader; var equirect : ShaderLibShader; var distanceRGBA : ShaderLibShader; var shadow : ShaderLibShader; var physical : ShaderLibShader; };

	/**
	 * An implementation of the {@link Earcut} polygon triangulation algorithm
	 * @remarks
	 * The code is a port of {@link https://github.com/mapbox/earcut | mapbox/earcut}.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/Earcut | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/Earcut.js | Source}
	 */
	static var Earcut(default, null) : { /** * Triangulates the given shape definition by returning an array of triangles * @remarks * A triangle is defined by three consecutive integers representing vertex indices. */ function triangulate(data:Array<Float>, ?holeIndices:Array<Float>, ?dim:Float) : Array<Float>; };

	static function SRGBToLinear(c:Float) : Float;
	static function LinearToSRGB(c:Float) : Float;
	static function convertArray(array:Dynamic, type:Dynamic, forceClone:Bool) : Dynamic;
	static function isTypedArray(object:Dynamic) : Bool;
	static function getKeyframeOrder(times:Array<Float>) : Array<Float>;
	static function sortedArray(values:Array<Dynamic>, stride:Float, order:Array<Float>) : Array<Dynamic>;
	static function flattenJSON(jsonKeys:Array<String>, times:Array<Dynamic>, values:Array<Dynamic>, valuePropertyName:String) : Void;
	static function subclip(sourceClip:AnimationClip, name:String, startFrame:Float, endFrame:Float, fps:Float) : AnimationClip;
	static function makeClipAdditive(targetClip:AnimationClip, referenceFrame:Float, referenceClip:AnimationClip, fps:Float) : AnimationClip;
	static function generateUUID() : String;

	/**
	 * Clamps the x to be between a and b.
	 */
	static function clamp(value:Float, min:Float, max:Float) : Float;

	static function euclideanModulo(n:Int, m:Float) : Float;

	/**
	 * Linear mapping of x from range [a1, a2] to range [b1, b2].
	 */
	static function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float) : Float;

	static function inverseLerp(x:Float, y:Float, t:Float) : Float;

	/**
	 * Returns a value linearly interpolated from two known points based
	 * on the given interval - t = 0 will return x and t = 1 will return y.
	 */
	static function lerp(x:Float, y:Float, t:Float) : Float;

	/**
	 * Smoothly interpolate a number from x toward y in a spring-like
	 * manner using the dt to maintain frame rate independent movement.
	 */
	static function damp(x:Float, y:Float, lambda:Float, dt:Float) : Float;

	/**
	 * Returns a value that alternates between 0 and length.
	 */
	static function pingpong(x:Float, length:Float) : Float;

	static function smoothstep(x:Float, min:Float, max:Float) : Float;

	static function smootherstep(x:Float, min:Float, max:Float) : Float;

	/**
	 * Random integer from low to high interval.
	 */
	static function randInt(low:Float, high:Float) : Float;

	/**
	 * Random float from low to high interval.
	 */
	static function randFloat(low:Float, high:Float) : Float;

	/**
	 * Random float from - range / 2 to range / 2 interval.
	 */
	static function randFloatSpread(range:Float) : Float;

	/**
	 * Deterministic pseudo-random float in the interval [ 0, 1 ].
	 */
	static function seededRandom(seed:Float) : Float;

	static function degToRad(degrees:Float) : Float;
	static function radToDeg(radians:Float) : Float;
	static function isPowerOfTwo(value:Float) : Bool;
	static function ceilPowerOfTwo(value:Float) : Float;
	static function floorPowerOfTwo(value:Float) : Float;
	static function setQuaternionFromProperEuler(q:Quaternion, a:Float, b:Float, c:Float, order:String) : Void;
	static function denormalize(value:Float, array:haxe.extern.EitherType<Float32Array, haxe.extern.EitherType<Uint32Array, haxe.extern.EitherType<Uint16Array, haxe.extern.EitherType<Uint8Array, haxe.extern.EitherType<Int32Array, haxe.extern.EitherType<Int16Array, Int8Array>>>>>>) : Float;
	static function normalize(value:Float, array:haxe.extern.EitherType<Float32Array, haxe.extern.EitherType<Uint32Array, haxe.extern.EitherType<Uint16Array, haxe.extern.EitherType<Uint8Array, haxe.extern.EitherType<Int32Array, haxe.extern.EitherType<Int16Array, Int8Array>>>>>>) : Float;
	static function cloneUniforms<T:Dynamic<IUniform>>(uniformsSrc:T) : T;
	static function mergeUniforms(uniforms:Array<Dynamic<IUniform>>) : Dynamic<IUniform>;
	static function cloneUniformsGroups(src:Array<UniformsGroup>) : Array<UniformsGroup>;
	static function WebGLShader(gl:js.html.webgl.RenderingContext, type:String, string:String) : WebGLShader;
	static function WebGLUniformsGroups(gl:js.html.webgl.RenderingContext, info:WebGLInfo, capabilities:WebGLCapabilities, state:WebGLState) : { var dispose : Void->Void; var update : UniformsGroup->WebGLProgram->Void; var bind : UniformsGroup->WebGLProgram->Void; };
	static function createCanvasElement() : js.html.CanvasElement;

	/**
	 * Returns a half precision floating point value from the given single precision floating point value.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/DataUtils | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/DataUtils.js | Source}
	 */
	static function toHalfFloat(val:Float) : Float;

	/**
	 * Returns a single precision floating point value from the given half precision floating point value.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/DataUtils | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/DataUtils.js | Source}
	 */
	static function fromHalfFloat(val:Float) : Float;
}