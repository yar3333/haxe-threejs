package js.three;

/**
 * For use with a {@link THREE.CompressedTexture}'s {@link THREE.CompressedTexture.format | .format} property.
 * @remarks Compressed Require support for correct WebGL extension.
 */
@:jsRequire("three")
@:native("THREE")
extern enum abstract CompressedPixelFormat(Int)
{
    // Compressed texture formats ===========================================================
    // DDS / ST3C Compressed texture formats

    /**
    * A DXT1-compressed image in an RGB image format.
    * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
    */
    var RGB_S3TC_DXT1_Format; // = 33776;
    /**
    * A DXT1-compressed image in an RGB image format with a simple on/off alpha value.
    * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
    */
    var RGBA_S3TC_DXT1_Format; // = 33777;
    /**
    * A DXT3-compressed image in an RGBA image format. Compared to a 32-bit RGBA texture, it offers 4:1 compression.
    * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
    */
    var RGBA_S3TC_DXT3_Format; // = 33778;
    /**
    * A DXT5-compressed image in an RGBA image format. It also provides a 4:1 compression, but differs to the DXT3 compression in how the alpha compression is done.
    * @remarks Require support for the _WEBGL_compressed_texture_s3tc_ WebGL extension.
    */
    var RGBA_S3TC_DXT5_Format; // = 33779;
    
    // PVRTC compressed './texture formats ==============
    
    /**
    * RGB compression in 4-bit mode. One block for each 4?4 pixels.
    * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
    */
    var RGB_PVRTC_4BPPV1_Format; // = 35840;
    /**
    * RGB compression in 2-bit mode. One block for each 8?4 pixels.
    * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
    */
    var RGB_PVRTC_2BPPV1_Format; // = 35841;
    /**
    * RGBA compression in 4-bit mode. One block for each 4?4 pixels.
    * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
    */
    var RGBA_PVRTC_4BPPV1_Format; // = 35842;
    /**
    * RGBA compression in 2-bit mode. One block for each 8?4 pixels.
    * @remarks Require support for the _WEBGL_compressed_texture_pvrtc_ WebGL extension.
    */
    var RGBA_PVRTC_2BPPV1_Format; // = 35843;
    
    // ETC compressed texture formats ======================
    
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_etc1_ (ETC1) or _WEBGL_compressed_texture_etc_ (ETC2) WebGL extension.
    */
    var RGB_ETC1_Format; // = 36196;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_etc1_ (ETC1) or _WEBGL_compressed_texture_etc_ (ETC2) WebGL extension.
    */
    var RGB_ETC2_Format; // = 37492;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_etc1_ (ETC1) or _WEBGL_compressed_texture_etc_ (ETC2) WebGL extension.
    */
    var RGBA_ETC2_EAC_Format; // = 37496;
    
    // ASTC compressed texture formats
    
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_4x4_Format; // = 37808;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_5x4_Format; // = 37809;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_5x5_Format; // = 37810;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_6x5_Format; // = 37811;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_6x6_Format; // = 37812;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_8x5_Format; // = 37813;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_8x6_Format; // = 37814;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_8x8_Format; // = 37815;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_10x5_Format; // = 37816;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_10x6_Format; // = 37817;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_10x8_Format; // = 37818;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_10x10_Format; // = 37819;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_12x10_Format; // = 37820;
    /**
    * @remarks Require support for the _WEBGL_compressed_texture_astc_ WebGL extension.
    */
    var RGBA_ASTC_12x12_Format; // = 37821;
    
    // BPTC compressed texture formats ========================
    
    /**
    * @remarks Require support for the _EXT_texture_compression_bptc_ WebGL extension.
    */
    var RGBA_BPTC_Format; // = 36492;
    var RGB_BPTC_SIGNED_Format; // = 36494;
    var RGB_BPTC_UNSIGNED_Format; // = 36495;
    
    // RGTC compressed texture formats ===========================
    var RED_RGTC1_Format; // = 36283;
    var SIGNED_RED_RGTC1_Format; // = 36284;
    var RED_GREEN_RGTC2_Format; // = 36285;
    var SIGNED_RED_GREEN_RGTC2_Format; // = 36286;
}