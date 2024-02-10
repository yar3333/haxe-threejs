package js.three;

/**
 * Texture Minification Filter Modes.
 * For use with a texture's {@link THREE.Texture.minFilter | minFilter} property,
 * these define the texture minifying function that is used whenever the pixel being textured maps to an area greater than one texture element (texel).
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 * @see {@link https://sbcode.net/threejs/mipmaps/ | Texture Mipmaps (non-official)}
 */
 @:jsRequire("three")
 @:native("THREE")
extern enum abstract MinificationTextureFilter(Int)
 {
     /** {@link NearestFilter} returns the value of the texture element that is nearest (in Manhattan distance) to the specified texture coordinates. */
     var NearestFilter; // = 1003;
 
     /**
     * {@link NearestMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured
     * and uses the {@link NearestFilter} criterion (the texel nearest to the center of the pixel) to produce a texture value.
     */
     var NearestMipmapNearestFilter; // = 1004;
     /**
     * {@link NearestMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured
     * and uses the {@link NearestFilter} criterion (the texel nearest to the center of the pixel) to produce a texture value.
     */
     var NearestMipMapNearestFilter; // = 1004;
 
     /**
     * {@link NearestMipmapLinearFilter} chooses the two mipmaps that most closely match the size of the pixel being textured
     * and uses the {@link NearestFilter} criterion to produce a texture value from each mipmap.
     * The final texture value is a weighted average of those two values.
     */
     var NearestMipmapLinearFilter; // = 1005;
     /**
     * {@link NearestMipMapLinearFilter} chooses the two mipmaps that most closely match the size of the pixel being textured
     * and uses the {@link NearestFilter} criterion to produce a texture value from each mipmap.
     * The final texture value is a weighted average of those two values.
     */
     var NearestMipMapLinearFilter; // = 1005;
 
     /**
     * {@link LinearFilter} returns the weighted average of the four texture elements that are closest to the specified texture coordinates,
     * and can include items wrapped or repeated from other parts of a texture,
     * depending on the values of {@link THREE.Texture.wrapS | wrapS} and {@link THREE.Texture.wrapT | wrapT}, and on the exact mapping.
     */
     var LinearFilter; // = 1006;
 
     /**
     * {@link LinearMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured and
     * uses the {@link LinearFilter} criterion (a weighted average of the four texels that are closest to the center of the pixel) to produce a texture value.
     */
     var LinearMipmapNearestFilter; // = 1007;
     /**
     * {@link LinearMipMapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured and
     * uses the {@link LinearFilter} criterion (a weighted average of the four texels that are closest to the center of the pixel) to produce a texture value.
     */
     var LinearMipMapNearestFilter; // = 1007;
 
     /**
     * {@link LinearMipmapLinearFilter} is the default and chooses the two mipmaps that most closely match the size of the pixel being textured and
     * uses the {@link LinearFilter} criterion to produce a texture value from each mipmap.
     * The final texture value is a weighted average of those two values.
     */
     var LinearMipmapLinearFilter; // = 1008;
 
     /**
     * {@link LinearMipMapLinearFilter} is the default and chooses the two mipmaps that most closely match the size of the pixel being textured and
     * uses the {@link LinearFilter} criterion to produce a texture value from each mipmap.
     * The final texture value is a weighted average of those two values.
     */
     var LinearMipMapLinearFilter; // = 1008;
 }