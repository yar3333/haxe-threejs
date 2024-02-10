package js.three;

/**
 * Texture Encodings.
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 * @deprecated Use {@link ColorSpace} in three.js r152+.
 */
@:jsRequire("three")
@:native("THREE")
extern enum abstract TextureEncoding(Int)
{
    /** @deprecated Use {@link LinearSRGBColorSpace} or {@link NoColorSpace} in three.js r152+. */
    var LinearEncoding; // = 3000;
    /** @deprecated Use {@link SRGBColorSpace} in three.js r152+. */
    var sRGBEncoding; // = 3001;
}