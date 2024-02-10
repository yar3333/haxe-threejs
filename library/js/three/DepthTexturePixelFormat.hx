package js.three;

/**
 * All Texture Pixel Formats Modes for {@link THREE.DepthTexture}.
 * @see {@link WebGLRenderingContext.texImage2D} for details.
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
@:jsRequire("three")
@:native("THREE")
extern enum abstract DepthTexturePixelFormat(Int)
{
    var DepthFormat; // = 1026;
    var DepthStencilFormat; // = 1027;
}