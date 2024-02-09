package js.three;

import js.three.textures.OffscreenCanvas;
import js.lib.*;
import js.html.*;
import haxe.extern.EitherType;

// https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.button
enum abstract MOUSE(Int)
{
    var LEFT = 0;
    var MIDDLE = 1;
    var RIGHT = 2;
    var ROTATE = 0;
    var DOLLY = 1;
    var PAN = 2;
}

enum abstract TOUCH(Int)
{
    var ROTATE = 0;
    var PAN = 1;
    var DOLLY_PAN = 2;
    var DOLLY_ROTATE = 3;
}

enum abstract CullFace(Int)
{
    var CullFaceNone = 0;
    var CullFaceBack = 1;
    var CullFaceFront = 2;
    var CullFaceFrontBack = 3;
}

enum abstract ShadowMapType(Int)
{
    var BasicShadowMap = 0;
    var PCFShadowMap = 1;
    var PCFSoftShadowMap = 2;
    var VSMShadowMap = 3;
}


enum abstract Side(Int)
{
    var FrontSide = 0;
    var BackSide = 1;
    var DoubleSide = 2;
}

enum abstract Blending(Int)
{
    var NoBlending = 0;
    var NormalBlending = 1;
    var AdditiveBlending = 2;
    var SubtractiveBlending = 3;
    var MultiplyBlending = 4;
    var CustomBlending = 5;
}


// custom blending equations
// (numbers start from 100 not to clash with other
// mappings to OpenGL constants defined in Texture.js)
enum abstract BlendingEquation(Int)
{
    var AddEquation = 100;
    var SubtractEquation = 101;
    var ReverseSubtractEquation = 102;
    var MinEquation = 103;
    var MaxEquation = 104;
}

// custom blending factors
enum abstract BlendingDstFactor(Int)
{
    var ZeroFactor = 200;
    var OneFactor = 201;
    var SrcColorFactor = 202;
    var OneMinusSrcColorFactor = 203;
    var SrcAlphaFactor = 204;
    var OneMinusSrcAlphaFactor = 205;
    var DstAlphaFactor = 206;
    var OneMinusDstAlphaFactor = 207;
    var DstColorFactor = 208;
    var OneMinusDstColorFactor = 209;
    var SrcAlphaSaturateFactor = 210;
    var ConstantColorFactor = 211;
    var OneMinusConstantColorFactor = 212;
    var ConstantAlphaFactor = 213;
    var OneMinusConstantAlphaFactor = 214;
}

enum abstract BlendingSrcFactor(Int)
{
    var ZeroFactor = 200;
    var OneFactor = 201;
    var SrcColorFactor = 202;
    var OneMinusSrcColorFactor = 203;
    var SrcAlphaFactor = 204;
    var OneMinusSrcAlphaFactor = 205;
    var DstAlphaFactor = 206;
    var OneMinusDstAlphaFactor = 207;
    var DstColorFactor = 208;
    var OneMinusDstColorFactor = 209;
    var SrcAlphaSaturateFactor = 210;
    var ConstantColorFactor = 211;
    var OneMinusConstantColorFactor = 212;
    var ConstantAlphaFactor = 213;
    var OneMinusConstantAlphaFactor = 214;
}

// depth modes
enum abstract DepthModes(Int)
{
    var NeverDepth = 0;
    var AlwaysDepth = 1;
    var LessDepth = 2;
    var LessEqualDepth = 3;
    var EqualDepth = 4;
    var GreaterEqualDepth = 5;
    var GreaterDepth = 6;
    var NotEqualDepth = 7;
}

// TEXTURE CONSTANTS
// Operations
enum abstract Combine(Int)
{
    var MultiplyOperation = 0;
    var MixOperation = 1;
    var AddOperation = 2;
}

// Tone Mapping modes
enum abstract ToneMapping(Int)
{
    var NoToneMapping = 0;
    var LinearToneMapping = 1;
    var ReinhardToneMapping = 2;
    var CineonToneMapping = 3;
    var ACESFilmicToneMapping = 4;
    var CustomToneMapping = 5;
    var AgXToneMapping = 6;
}

// Bind modes
enum abstract BindMode(String)
{
    var AttachedBindMode = "attached";
    var DetachedBindMode = "detached";
}

// Filters ===============================================

/**
* Texture Magnification Filter Modes.
* For use with a texture's {@link THREE.Texture.magFilter | magFilter} property,
* these define the texture magnification function to be used when the pixel being textured maps to an area less than or equal to one texture element (texel).
* @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
* @see {@link https://sbcode.net/threejs/mipmaps/ | Texture Mipmaps (non-official)}
*/
enum abstract MagnificationTextureFilter(Int)
{
    /** {@link NearestFilter} returns the value of the texture element that is nearest (in Manhattan distance) to the specified texture coordinates. */
    var NearestFilter = 1003;

    /**
    * {@link LinearFilter} returns the weighted average of the four texture elements that are closest to the specified texture coordinates,
    * and can include items wrapped or repeated from other parts of a texture,
    * depending on the values of {@link THREE.Texture.wrapS | wrapS} and {@link THREE.Texture.wrapT | wrapT}, and on the exact mapping.
    */
    var LinearFilter = 1006;
}


/**
 * Texture Minification Filter Modes.
 * For use with a texture's {@link THREE.Texture.minFilter | minFilter} property,
 * these define the texture minifying function that is used whenever the pixel being textured maps to an area greater than one texture element (texel).
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 * @see {@link https://sbcode.net/threejs/mipmaps/ | Texture Mipmaps (non-official)}
 */
enum abstract MinificationTextureFilter(Int)
{
    /** {@link NearestFilter} returns the value of the texture element that is nearest (in Manhattan distance) to the specified texture coordinates. */
    var NearestFilter = 1003;

    /**
    * {@link NearestMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured
    * and uses the {@link NearestFilter} criterion (the texel nearest to the center of the pixel) to produce a texture value.
    */
    var NearestMipmapNearestFilter = 1004;
    /**
    * {@link NearestMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured
    * and uses the {@link NearestFilter} criterion (the texel nearest to the center of the pixel) to produce a texture value.
    */
    var NearestMipMapNearestFilter = 1004;

    /**
    * {@link NearestMipmapLinearFilter} chooses the two mipmaps that most closely match the size of the pixel being textured
    * and uses the {@link NearestFilter} criterion to produce a texture value from each mipmap.
    * The final texture value is a weighted average of those two values.
    */
    var NearestMipmapLinearFilter = 1005;
    /**
    * {@link NearestMipMapLinearFilter} chooses the two mipmaps that most closely match the size of the pixel being textured
    * and uses the {@link NearestFilter} criterion to produce a texture value from each mipmap.
    * The final texture value is a weighted average of those two values.
    */
    var NearestMipMapLinearFilter = 1005;

    /**
    * {@link LinearFilter} returns the weighted average of the four texture elements that are closest to the specified texture coordinates,
    * and can include items wrapped or repeated from other parts of a texture,
    * depending on the values of {@link THREE.Texture.wrapS | wrapS} and {@link THREE.Texture.wrapT | wrapT}, and on the exact mapping.
    */
    var LinearFilter = 1006;

    /**
    * {@link LinearMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured and
    * uses the {@link LinearFilter} criterion (a weighted average of the four texels that are closest to the center of the pixel) to produce a texture value.
    */
    var LinearMipmapNearestFilter = 1007;
    /**
    * {@link LinearMipMapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured and
    * uses the {@link LinearFilter} criterion (a weighted average of the four texels that are closest to the center of the pixel) to produce a texture value.
    */
    var LinearMipMapNearestFilter = 1007;

    /**
    * {@link LinearMipmapLinearFilter} is the default and chooses the two mipmaps that most closely match the size of the pixel being textured and
    * uses the {@link LinearFilter} criterion to produce a texture value from each mipmap.
    * The final texture value is a weighted average of those two values.
    */
    var LinearMipmapLinearFilter = 1008;

    /**
    * {@link LinearMipMapLinearFilter} is the default and chooses the two mipmaps that most closely match the size of the pixel being textured and
    * uses the {@link LinearFilter} criterion to produce a texture value from each mipmap.
    * The final texture value is a weighted average of those two values.
    */
    var LinearMipMapLinearFilter = 1008;
}

// Mapping modes ==========================================
/**
 * Texture Mapping Modes for non-cube Textures
 * @remarks {@link UVMapping} is the _default_ value and behaver for Texture Mapping.
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
 enum abstract Mapping(Int)
{
    /**
    * Maps the texture using the mesh's UV coordinates.
    * @remarks This is the _default_ value and behaver for Texture Mapping.
    */
    var UVMapping = 300;
    var EquirectangularReflectionMapping = 303;
    var EquirectangularRefractionMapping = 304;
}

/**
 * Texture Mapping Modes for cube Textures
 * @remarks {@link CubeReflectionMapping} is the _default_ value and behaver for Cube Texture Mapping.
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
enum abstract CubeTextureMapping(Int)
{
    /**
    * @remarks This is the _default_ value and behaver for Cube Texture Mapping.
    */
    var CubeReflectionMapping = 301;
    var CubeRefractionMapping = 302;
    var CubeUVReflectionMapping = 306;
}
    
/**
 * Texture Mapping Modes for any type of Textures
 * @see {@link Mapping} and {@link CubeTextureMapping}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
 typedef AnyMapping = EitherType<Mapping, CubeTextureMapping>;

 /**
 * Texture Wrapping Modes
 * @remarks {@link ClampToEdgeWrapping} is the _default_ value and behaver for Wrapping Mapping.
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
 enum abstract Wrapping(Int)
 {
    // Wrapping modes ==========================================

    /** With {@link RepeatWrapping} the texture will simply repeat to infinity. */
    var RepeatWrapping = 1000;
    /**
    * With {@link ClampToEdgeWrapping} the last pixel of the texture stretches to the edge of the mesh.
    * @remarks This is the _default_ value and behaver for Wrapping Mapping.
    */
    var ClampToEdgeWrapping = 1001;
    /** With {@link MirroredRepeatWrapping} the texture will repeats to infinity, mirroring on each repeat. */
    var MirroredRepeatWrapping = 1002;
 }

 
/**
 * Texture all Magnification and Minification Filter Modes.
 * @see {@link MagnificationTextureFilter} and {@link MinificationTextureFilter}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 * @see {@link https://sbcode.net/threejs/mipmaps/ | Texture Mipmaps (non-official)}
 */
typedef TextureFilter = EitherType<MagnificationTextureFilter, MinificationTextureFilter>;

enum abstract AttributeGPUType(Int)
{
    var FloatType = 1015;
    var IntType = 1013;
}

/**
 * Texture Types.
 * @remarks Must correspond to the correct {@link PixelFormat | format}.
 * @see {@link THREE.Texture.type}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
enum abstract TextureDataType(Int)
{
    var UnsignedByteType = 1009;
    var ByteType = 1010;
    var ShortType = 1011;
    var UnsignedShortType = 1012;
    var IntType = 1013;
    var UnsignedIntType = 1014;
    var FloatType = 1015;
    var HalfFloatType = 1016;
    var UnsignedShort4444Type = 1017;
    var UnsignedShort5551Type = 1018;
    var UnsignedInt248Type = 1020;    
}

/**
 * Texture Pixel Formats Modes. Compatible only with {@link WebGLRenderingContext | WebGL 1 Rendering Context}.
 * @remarks Note that the texture must have the correct {@link THREE.Texture.type} set, as described in  {@link TextureDataType}.
 * @see {@link WebGLRenderingContext.texImage2D} for details.
 * @see {@link WebGL2PixelFormat} and {@link PixelFormat}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
enum abstract WebGL1PixelFormat(Int)
{
    /** {@link AlphaFormat} discards the red, green and blue components and reads just the alpha component. */
    var AlphaFormat = 1021;

    /**
    * {@link LuminanceFormat} reads each element as a single luminance component.
    * This is then converted to a floating point, clamped to the range `[0,1]`, and then assembled into an RGBA element by
    * placing the luminance value in the red, green and blue channels, and attaching `1.0` to the alpha channel.
    */
    var LuminanceFormat = 1024;

    /**
    * {@link LuminanceAlphaFormat} reads each element as a luminance/alpha double.
    * The same process occurs as for the {@link LuminanceFormat}, except that the alpha channel may have values other than `1.0`.
    */
    var LuminanceAlphaFormat = 1025;

    /**
    * {@link DepthFormat} reads each element as a single depth value, converts it to floating point, and clamps to the range `[0,1]`.
    * @remarks This is the default for {@link THREE.DepthTexture}.
    */
    var DepthFormat = 1026;

    /**
    * {@link DepthStencilFormat} reads each element is a pair of depth and stencil values.
    * The depth component of the pair is interpreted as in {@link DepthFormat}.
    * The stencil component is interpreted based on the depth + stencil internal format.
    */
    var DepthStencilFormat = 1027;

    /**
    * {@link RedFormat} discards the green and blue components and reads just the red component.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RedFormat = 1028;

    /**
    * {@link RedIntegerFormat} discards the green and blue components and reads just the red component.
    * The texels are read as integers instead of floating point.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RedIntegerFormat = 1029;

    /**
    * {@link RGFormat} discards the alpha, and blue components and reads the red, and green components.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RGFormat = 1030;

    var _SRGBAFormat = 1035; // fallback for WebGL 1
}

/**
 * Texture Pixel Formats Modes. Compatible only with {@link WebGL2RenderingContext | WebGL 2 Rendering Context}.
 * @remarks Note that the texture must have the correct {@link THREE.Texture.type} set, as described in  {@link TextureDataType}.
 * @see {@link WebGLRenderingContext.texImage2D} for details.
 * @see {@link WebGL2PixelFormat} and {@link PixelFormat}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
enum abstract WebGL2PixelFormat(Int)
{
    /** {@link AlphaFormat} discards the red, green and blue components and reads just the alpha component. */
    var AlphaFormat = 1021;

    /** {@link RGBAFormat} discards the green and blue components and reads just the red component. (Can only be used with a WebGL 2 rendering context). */
    var RGBAFormat = 1023;

    /**
    * {@link LuminanceFormat} reads each element as a single luminance component.
    * This is then converted to a floating point, clamped to the range `[0,1]`, and then assembled into an RGBA element by
    * placing the luminance value in the red, green and blue channels, and attaching `1.0` to the alpha channel.
    */
    var LuminanceFormat = 1024;

    /**
    * {@link LuminanceAlphaFormat} reads each element as a luminance/alpha double.
    * The same process occurs as for the {@link LuminanceFormat}, except that the alpha channel may have values other than `1.0`.
    */
    var LuminanceAlphaFormat = 1025;

    /**
    * {@link DepthFormat} reads each element as a single depth value, converts it to floating point, and clamps to the range `[0,1]`.
    * @remarks This is the default for {@link THREE.DepthTexture}.
    */
    var DepthFormat = 1026;

    /**
    * {@link DepthStencilFormat} reads each element is a pair of depth and stencil values.
    * The depth component of the pair is interpreted as in {@link DepthFormat}.
    * The stencil component is interpreted based on the depth + stencil internal format.
    */
    var DepthStencilFormat = 1027;

    /**
    * {@link RedFormat} discards the green and blue components and reads just the red component.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RedFormat = 1028;

    /**
    * {@link RedIntegerFormat} discards the green and blue components and reads just the red component.
    * The texels are read as integers instead of floating point.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RedIntegerFormat = 1029;

    /**
    * {@link RGFormat} discards the alpha, and blue components and reads the red, and green components.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RGFormat = 1030;

    /**
    * {@link RGIntegerFormat} discards the alpha, and blue components and reads the red, and green components.
    * The texels are read as integers instead of floating point.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RGIntegerFormat = 1031;

    /**
    * {@link RGBAIntegerFormat} reads the red, green, blue and alpha component
    * @remarks This is the default for {@link THREE.Texture}.
    */
    var RGBAIntegerFormat = 1033;

    var _SRGBAFormat = 1035; // fallback for WebGL 1
}

/**
 * All Texture Pixel Formats Modes.
 * @remarks Note that the texture must have the correct {@link THREE.Texture.type} set, as described in  {@link TextureDataType}.
 * @see {@link WebGLRenderingContext.texImage2D} for details.
 * @see {@link WebGL1PixelFormat} and {@link WebGL2PixelFormat}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
typedef PixelFormat = EitherType<WebGL1PixelFormat, WebGL2PixelFormat>;

/**
 * All Texture Pixel Formats Modes for {@link THREE.DepthTexture}.
 * @see {@link WebGLRenderingContext.texImage2D} for details.
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
enum abstract DepthTexturePixelFormat(Int)
{
    var DepthFormat = 1026;
    var DepthStencilFormat = 1027;
}

/**
 * For use with a {@link THREE.CompressedTexture}'s {@link THREE.CompressedTexture.format | .format} property.
 * @remarks Compressed Require support for correct WebGL extension.
 */
enum abstract CompressedPixelFormat(Int)
{
    // Compressed texture formats ===========================================================
    // DDS / ST3C Compressed texture formats

    /**
    * A DXT1-compressed image in an RGB image format.
    * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
    */
    var RGB_S3TC_DXT1_Format = 33776;
    /**
    * A DXT1-compressed image in an RGB image format with a simple on/off alpha value.
    * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
    */
    var RGBA_S3TC_DXT1_Format = 33777;
    /**
    * A DXT3-compressed image in an RGBA image format. Compared to a 32-bit RGBA texture, it offers 4:1 compression.
    * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
    */
    var RGBA_S3TC_DXT3_Format = 33778;
    /**
    * A DXT5-compressed image in an RGBA image format. It also provides a 4:1 compression, but differs to the DXT3 compression in how the alpha compression is done.
    * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
    */
    var RGBA_S3TC_DXT5_Format = 33779;
    
    // PVRTC compressed './texture formats ==============
    
    /**
    * RGB compression in 4-bit mode. One block for each 4×4 pixels.
    * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
    */
    var RGB_PVRTC_4BPPV1_Format = 35840;
    /**
    * RGB compression in 2-bit mode. One block for each 8×4 pixels.
    * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
    */
    var RGB_PVRTC_2BPPV1_Format = 35841;
    /**
    * RGBA compression in 4-bit mode. One block for each 4×4 pixels.
    * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
    */
    var RGBA_PVRTC_4BPPV1_Format = 35842;
    /**
    * RGBA compression in 2-bit mode. One block for each 8×4 pixels.
    * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
    */
    var RGBA_PVRTC_2BPPV1_Format = 35843;
    
    // ETC compressed texture formats ======================
    
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_etc1_ (ETC1) or _WEBGL_compressed_texture_etc_ (ETC2) WebGL extension.
    */
    var RGB_ETC1_Format = 36196;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_etc1_ (ETC1) or _WEBGL_compressed_texture_etc_ (ETC2) WebGL extension.
    */
    var RGB_ETC2_Format = 37492;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_etc1_ (ETC1) or _WEBGL_compressed_texture_etc_ (ETC2) WebGL extension.
    */
    var RGBA_ETC2_EAC_Format = 37496;
    
    // ASTC compressed texture formats
    
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_4x4_Format = 37808;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_5x4_Format = 37809;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_5x5_Format = 37810;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_6x5_Format = 37811;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_6x6_Format = 37812;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_8x5_Format = 37813;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_8x6_Format = 37814;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_8x8_Format = 37815;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_10x5_Format = 37816;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_10x6_Format = 37817;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_10x8_Format = 37818;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_10x10_Format = 37819;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_12x10_Format = 37820;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_12x12_Format = 37821;
    
    // BPTC compressed texture formats ========================
    
    /**
    * @remarks Require support for the _EXT_texture_compression_bptc_ WebGL extension.
    */
    var RGBA_BPTC_Format = 36492;
    var RGB_BPTC_SIGNED_Format = 36494;
    var RGB_BPTC_UNSIGNED_Format = 36495;
    
    // RGTC compressed texture formats ===========================
    var RED_RGTC1_Format = 36283;
    var SIGNED_RED_RGTC1_Format = 36284;
    var RED_GREEN_RGTC2_Format = 36285;
    var SIGNED_RED_GREEN_RGTC2_Format = 36286;
}

 /**
 * All Possible Texture Pixel Formats Modes. For any Type or SubType of Textures.
 * @remarks Note that the texture must have the correct {@link THREE.Texture.type} set, as described in {@link TextureDataType}.
 * @see {@link WebGLRenderingContext.texImage2D} for details.
 * @see {@link PixelFormat} and {@link DepthTexturePixelFormat} and {@link CompressedPixelFormat}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
typedef AnyPixelFormat = EitherType<PixelFormat, EitherType<DepthTexturePixelFormat, CompressedPixelFormat>>;

enum abstract AnimationActionLoopStyles(Int)
{
    var LoopOnce = 2200;
    var LoopRepeat = 2201;
    var LoopPingPong = 2202;
}

enum abstract InterpolationModes(Int)
{
    var InterpolateDiscrete = 2300;
    var InterpolateLinear = 2301;
    var InterpolateSmooth = 2302;
}

enum abstract InterpolationEndingModes(Int)
{
    var ZeroCurvatureEnding = 2400;
    var ZeroSlopeEnding = 2401;
    var WrapAroundEnding = 2402;
}


enum abstract AnimationBlendMode(Int)
{
    var NormalAnimationBlendMode = 2500;
    var AdditiveAnimationBlendMode = 2501;
}

enum abstract TrianglesDrawModes(Int)
{
    var TrianglesDrawMode = 0;
    var TriangleStripDrawMode = 1;
    var TriangleFanDrawMode = 2;
}

/**
 * Texture Encodings.
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 * @deprecated Use {@link ColorSpace} in three.js r152+.
 */
enum abstract TextureEncoding(Int)
{
    /** @deprecated Use {@link LinearSRGBColorSpace} or {@link NoColorSpace} in three.js r152+. */
    var LinearEncoding = 3000;
    /** @deprecated Use {@link SRGBColorSpace} in three.js r152+. */
    var sRGBEncoding = 3001;
}

enum abstract DepthPackingStrategies(Int)
{
    var BasicDepthPacking = 3200;
    var RGBADepthPacking = 3201;
}

enum abstract NormalMapTypes(Int)
{
    var TangentSpaceNormalMap = 0;
    var ObjectSpaceNormalMap = 1;
}

enum abstract ColorSpace(String)
{
    var NoColorSpace = "";
    var SRGBColorSpace = "srgb";
    var LinearSRGBColorSpace = "srgb-linear";
    var DisplayP3ColorSpace = "display-p3";
    var LinearDisplayP3ColorSpace = "display-p3-linear";
}

enum abstract ColorSpaceTransfer(String)
{
    var LinearTransfer = "linear";
    var SRGBTransfer = "srgb";
}

enum abstract ColorSpacePrimaries(String)
{
    var Rec709Primaries = "rec709";
    var P3Primaries = "p3";
}

enum abstract StencilOp(Int)
{
    var ZeroStencilOp = 0;
    var KeepStencilOp = 7680;
    var ReplaceStencilOp = 7681;
    var IncrementStencilOp = 7682;
    var DecrementStencilOp = 7283;
    var IncrementWrapStencilOp = 34055;
    var DecrementWrapStencilOp = 34056;
    var InvertStencilOp = 5386;
}

enum abstract StencilFunc(Int)
{
    var NeverStencilFunc = 512;
    var LessStencilFunc = 513;
    var EqualStencilFunc = 514;
    var LessEqualStencilFunc = 515;
    var GreaterStencilFunc = 516;
    var NotEqualStencilFunc = 517;
    var GreaterEqualStencilFunc = 518;
    var AlwaysStencilFunc = 519;
}

enum abstract TextureComparisonFunction(Int)
{
    var NeverCompare = 512;
    var LessCompare = 513;
    var EqualCompare = 514;
    var LessEqualCompare = 515;
    var GreaterCompare = 516;
    var NotEqualCompare = 517;
    var GreaterEqualCompare = 518;
    var AlwaysCompare = 519;
}

enum abstract Usage(Int)
{
    var StaticDrawUsage = 35044;
    var DynamicDrawUsage = 35048;
    var StreamDrawUsage = 35040;
    var StaticReadUsage = 35045;
    var DynamicReadUsage = 35049;
    var StreamReadUsage = 35041;
    var StaticCopyUsage = 35046;
    var DynamicCopyUsage = 35050;
    var StreamCopyUsage = 35042;
}

enum abstract GLSLVersion(String)
{
    var GLSL1 = "100";
    var GLSL3 = "300 es";
}

enum abstract CoordinateSystem(Int)
{
    var WebGLCoordinateSystem = 2000;
    var WebGPUCoordinateSystem = 2001;
}

/**
 * For use with a texture's {@link THREE.Texture.internalFormat} property, these define how elements of a {@link THREE.Texture}, or texels, are stored on the GPU.
 * - `R8` stores the red component on 8 bits.
 * - `R8_SNORM` stores the red component on 8 bits. The component is stored as normalized.
 * - `R8I` stores the red component on 8 bits. The component is stored as an integer.
 * - `R8UI` stores the red component on 8 bits. The component is stored as an unsigned integer.
 * - `R16I` stores the red component on 16 bits. The component is stored as an integer.
 * - `R16UI` stores the red component on 16 bits. The component is stored as an unsigned integer.
 * - `R16F` stores the red component on 16 bits. The component is stored as floating point.
 * - `R32I` stores the red component on 32 bits. The component is stored as an integer.
 * - `R32UI` stores the red component on 32 bits. The component is stored as an unsigned integer.
 * - `R32F` stores the red component on 32 bits. The component is stored as floating point.
 * - `RG8` stores the red and green components on 8 bits each.
 * - `RG8_SNORM` stores the red and green components on 8 bits each. Every component is stored as normalized.
 * - `RG8I` stores the red and green components on 8 bits each. Every component is stored as an integer.
 * - `RG8UI` stores the red and green components on 8 bits each. Every component is stored as an unsigned integer.
 * - `RG16I` stores the red and green components on 16 bits each. Every component is stored as an integer.
 * - `RG16UI` stores the red and green components on 16 bits each. Every component is stored as an unsigned integer.
 * - `RG16F` stores the red and green components on 16 bits each. Every component is stored as floating point.
 * - `RG32I` stores the red and green components on 32 bits each. Every component is stored as an integer.
 * - `RG32UI` stores the red and green components on 32 bits. Every component is stored as an unsigned integer.
 * - `RG32F` stores the red and green components on 32 bits. Every component is stored as floating point.
 * - `RGB8` stores the red, green, and blue components on 8 bits each. RGB8_SNORM` stores the red, green, and blue components on 8 bits each. Every component is stored as normalized.
 * - `RGB8I` stores the red, green, and blue components on 8 bits each. Every component is stored as an integer.
 * - `RGB8UI` stores the red, green, and blue components on 8 bits each. Every component is stored as an unsigned integer.
 * - `RGB16I` stores the red, green, and blue components on 16 bits each. Every component is stored as an integer.
 * - `RGB16UI` stores the red, green, and blue components on 16 bits each. Every component is stored as an unsigned integer.
 * - `RGB16F` stores the red, green, and blue components on 16 bits each. Every component is stored as floating point
 * - `RGB32I` stores the red, green, and blue components on 32 bits each. Every component is stored as an integer.
 * - `RGB32UI` stores the red, green, and blue components on 32 bits each. Every component is stored as an unsigned integer.
 * - `RGB32F` stores the red, green, and blue components on 32 bits each. Every component is stored as floating point
 * - `R11F_G11F_B10F` stores the red, green, and blue components respectively on 11 bits, 11 bits, and 10bits. Every component is stored as floating point.
 * - `RGB565` stores the red, green, and blue components respectively on 5 bits, 6 bits, and 5 bits.
 * - `RGB9_E5` stores the red, green, and blue components on 9 bits each.
 * - `RGBA8` stores the red, green, blue, and alpha components on 8 bits each.
 * - `RGBA8_SNORM` stores the red, green, blue, and alpha components on 8 bits. Every component is stored as normalized.
 * - `RGBA8I` stores the red, green, blue, and alpha components on 8 bits each. Every component is stored as an integer.
 * - `RGBA8UI` stores the red, green, blue, and alpha components on 8 bits. Every component is stored as an unsigned integer.
 * - `RGBA16I` stores the red, green, blue, and alpha components on 16 bits. Every component is stored as an integer.
 * - `RGBA16UI` stores the red, green, blue, and alpha components on 16 bits. Every component is stored as an unsigned integer.
 * - `RGBA16F` stores the red, green, blue, and alpha components on 16 bits. Every component is stored as floating point.
 * - `RGBA32I` stores the red, green, blue, and alpha components on 32 bits. Every component is stored as an integer.
 * - `RGBA32UI` stores the red, green, blue, and alpha components on 32 bits. Every component is stored as an unsigned integer.
 * - `RGBA32F` stores the red, green, blue, and alpha components on 32 bits. Every component is stored as floating point.
 * - `RGB5_A1` stores the red, green, blue, and alpha components respectively on 5 bits, 5 bits, 5 bits, and 1 bit.
 * - `RGB10_A2` stores the red, green, blue, and alpha components respectively on 10 bits, 10 bits, 10 bits and 2 bits.
 * - `RGB10_A2UI` stores the red, green, blue, and alpha components respectively on 10 bits, 10 bits, 10 bits and 2 bits. Every component is stored as an unsigned integer.
 * - `SRGB8` stores the red, green, and blue components on 8 bits each.
 * - `SRGB8_ALPHA8` stores the red, green, blue, and alpha components on 8 bits each.
 * - `DEPTH_COMPONENT16` stores the depth component on 16bits.
 * - `DEPTH_COMPONENT24` stores the depth component on 24bits.
 * - `DEPTH_COMPONENT32F` stores the depth component on 32bits. The component is stored as floating point.
 * - `DEPTH24_STENCIL8` stores the depth, and stencil components respectively on 24 bits and 8 bits. The stencil component is stored as an unsigned integer.
 * - `DEPTH32F_STENCIL8` stores the depth, and stencil components respectively on 32 bits and 8 bits. The depth component is stored as floating point, and the stencil component as an unsigned integer.
 * @remark Note that the texture must have the correct {@link THREE.Texture.type} set, as well as the correct {@link THREE.Texture.format}.
 * @see {@link WebGLRenderingContext.texImage2D} and {@link WebGLRenderingContext.texImage3D} for more details regarding the possible combination
 * of {@link THREE.Texture.format}, {@link THREE.Texture.internalFormat}, and {@link THREE.Texture.type}.
 * @see {@link https://registry.khronos.org/webgl/specs/latest/2.0/ | WebGL2 Specification} and
 * {@link https://registry.khronos.org/OpenGL/specs/es/3.0/es_spec_3.0.pdf | OpenGL ES 3.0 Specification} For more in-depth information regarding internal formats.
 */
enum abstract PixelFormatGPU(String)
{
    var ALPHA = "ALPHA";
    var RGB = "RGB";
    var RGBA = "RGBA";
    var LUMINANCE = "LUMINANCE";
    var LUMINANCE_ALPHA = "LUMINANCE_ALPHA";
    var RED_INTEGER = "RED_INTEGER";
    var R8 = "R8";
    var R8_SNORM = "R8_SNORM";
    var R8I = "R8I";
    var R8UI = "R8UI";
    var R16I = "R16I";
    var R16UI = "R16UI";
    var R16F = "R16F";
    var R32I = "R32I";
    var R32UI = "R32UI";
    var R32F = "R32F";
    var RG8 = "RG8";
    var RG8_SNORM = "RG8_SNORM";
    var RG8I = "RG8I";
    var RG8UI = "RG8UI";
    var RG16I = "RG16I";
    var RG16UI = "RG16UI";
    var RG16F = "RG16F";
    var RG32I = "RG32I";
    var RG32UI = "RG32UI";
    var RG32F = "RG32F";
    var RGB565 = "RGB565";
    var RGB8 = "RGB8";
    var RGB8_SNORM = "RGB8_SNORM";
    var RGB8I = "RGB8I";
    var RGB8UI = "RGB8UI";
    var RGB16I = "RGB16I";
    var RGB16UI = "RGB16UI";
    var RGB16F = "RGB16F";
    var RGB32I = "RGB32I";
    var RGB32UI = "RGB32UI";
    var RGB32F = "RGB32F";
    var RGB9_E5 = "RGB9_E5";
    var SRGB8 = "SRGB8";
    var R11F_G11F_B10F = "R11F_G11F_B10F";
    var RGBA4 = "RGBA4";
    var RGBA8 = "RGBA8";
    var RGBA8_SNORM = "RGBA8_SNORM";
    var RGBA8I = "RGBA8I";
    var RGBA8UI = "RGBA8UI";
    var RGBA16I = "RGBA16I";
    var RGBA16UI = "RGBA16UI";
    var RGBA16F = "RGBA16F";
    var RGBA32I = "RGBA32I";
    var RGBA32UI = "RGBA32UI";
    var RGBA32F = "RGBA32F";
    var RGB5_A1 = "RGB5_A1";
    var RGB10_A2 = "RGB10_A2";
    var RGB10_A2UI = "RGB10_A2UI";
    var SRGB8_ALPHA8 = "SRGB8_ALPHA8";
    var DEPTH_COMPONENT16 = "DEPTH_COMPONENT16";
    var DEPTH_COMPONENT24 = "DEPTH_COMPONENT24";
    var DEPTH_COMPONENT32F = "DEPTH_COMPONENT32F";
    var DEPTH24_STENCIL8 = "DEPTH24_STENCIL8";
    var DEPTH32F_STENCIL8 = "DEPTH32F_STENCIL8";
}

typedef TexImageSource = EitherType<ImageBitmap, EitherType<ImageData, EitherType<ImageElement, EitherType<CanvasElement, EitherType<VideoElement, EitherType<OffscreenCanvas, VideoFrame>>>>>>;
typedef CanvasImageSource = EitherType<ImageBitmap, EitherType<ImageElement, EitherType<CanvasElement, EitherType<VideoElement, EitherType<OffscreenCanvas, VideoFrame>>>>>;

@:native("VideoFrame")
extern class VideoFrame
{
    @:overload(function(image: CanvasImageSource, ?init: VideoFrameInit) : VideoFrame {})
    function new(data: BufferSource, init: VideoFrameBufferInit) : Void;
}

interface VideoFrameBufferInit
{
    var codedHeight: Int;
    var codedWidth: Int;
    @:optional var colorSpace: VideoColorSpaceInit;
    @:optional var displayHeight: Int;
    @:optional var displayWidth: Int;
    @:optional var duration: Float;
    var format: VideoPixelFormat;
    @:optional var layout: Array<PlaneLayout>;
    var timestamp: Float;
    @:optional var visibleRect: DOMRectInit;
}

interface VideoColorSpaceInit
{
    @:optional var fullRange: Bool;
    @:optional var matrix: VideoMatrixCoefficients;
    @:optional var primaries: VideoColorPrimaries;
    @:optional var transfer: Dynamic; //VideoTransferCharacteristics;
}

enum abstract VideoPixelFormat(String)
{
    var BGRA = "BGRA";
    var BGRX = "BGRX";
    var I420 = "I420";
    var I420A = "I420A";
    var I422 = "I422";
    var I444 = "I444";
    var NV12 = "NV12";
    var RGBA = "RGBA";
    var RGBX = "RGBX";
}

interface PlaneLayout
{
    var offset: Int;
    var stride: Int;
}

interface DOMRectInit
{
    @:optional var height: Int;
    @:optional var width: Int;
    @:optional var x: Int;
    @:optional var y: Int;
}

enum abstract VideoMatrixCoefficients(String)
{
    var bt470bg = "bt470bg";
    var bt709 = "bt709";
    var rgb = "rgb";
    var smpte170m = "smpte170m";
}

enum abstract VideoColorPrimaries(String)
{
    var bt470bg = "bt470bg";
    var bt709 = "bt709";
    var smpte170m = "smpte170m";
}

interface VideoFrameInit
{
    @:optional var alpha: AlphaOption;
    @:optional var displayHeight: Int;
    @:optional var displayWidth: Int;
    @:optional var duration: Float;
    @:optional var timestamp: Float;
    @:optional var visibleRect: DOMRectInit;
}

enum abstract AlphaOption(String)
{
    var discard = "discard";
    var keep = "keep";
}

@:native("WebGLBuffer")
extern class WebGLBuffer
{
    function new(): Void;
}