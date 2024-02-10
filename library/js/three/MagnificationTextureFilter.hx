package js.three;

/**
* Texture Magnification Filter Modes.
* For use with a texture's {@link THREE.Texture.magFilter | magFilter} property,
* these define the texture magnification function to be used when the pixel being textured maps to an area less than or equal to one texture element (texel).
* @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
* @see {@link https://sbcode.net/threejs/mipmaps/ | Texture Mipmaps (non-official)}
*/
@:jsRequire("three")
@:native("THREE")
extern enum abstract MagnificationTextureFilter(Int)
{
    /** {@link NearestFilter} returns the value of the texture element that is nearest (in Manhattan distance) to the specified texture coordinates. */
    var NearestFilter; // = 1003;

    /**
    * {@link LinearFilter} returns the weighted average of the four texture elements that are closest to the specified texture coordinates,
    * and can include items wrapped or repeated from other parts of a texture,
    * depending on the values of {@link THREE.Texture.wrapS | wrapS} and {@link THREE.Texture.wrapT | wrapT}, and on the exact mapping.
    */
    var LinearFilter; // = 1006;
}