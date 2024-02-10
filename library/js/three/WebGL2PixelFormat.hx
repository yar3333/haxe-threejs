package js.three;

/**
 * Texture Pixel Formats Modes. Compatible only with {@link WebGL2RenderingContext | WebGL 2 Rendering Context}.
 * @remarks Note that the texture must have the correct {@link THREE.Texture.type} set, as described in  {@link TextureDataType}.
 * @see {@link WebGLRenderingContext.texImage2D} for details.
 * @see {@link WebGL2PixelFormat} and {@link PixelFormat}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
@:jsRequire("three")
@:native("THREE")
extern enum abstract WebGL2PixelFormat(Int)
{
    /** {@link AlphaFormat} discards the red, green and blue components and reads just the alpha component. */
    var AlphaFormat; // = 1021;

    /** {@link RGBAFormat} discards the green and blue components and reads just the red component. (Can only be used with a WebGL 2 rendering context). */
    var RGBAFormat; // = 1023;

    /**
    * {@link LuminanceFormat} reads each element as a single luminance component.
    * This is then converted to a floating point, clamped to the range `[0,1]`, and then assembled into an RGBA element by
    * placing the luminance value in the red, green and blue channels, and attaching `1.0` to the alpha channel.
    */
    var LuminanceFormat; // = 1024;

    /**
    * {@link LuminanceAlphaFormat} reads each element as a luminance/alpha double.
    * The same process occurs as for the {@link LuminanceFormat}, except that the alpha channel may have values other than `1.0`.
    */
    var LuminanceAlphaFormat; // = 1025;

    /**
    * {@link DepthFormat} reads each element as a single depth value, converts it to floating point, and clamps to the range `[0,1]`.
    * @remarks This is the default for {@link THREE.DepthTexture}.
    */
    var DepthFormat; // = 1026;

    /**
    * {@link DepthStencilFormat} reads each element is a pair of depth and stencil values.
    * The depth component of the pair is interpreted as in {@link DepthFormat}.
    * The stencil component is interpreted based on the depth + stencil internal format.
    */
    var DepthStencilFormat; // = 1027;

    /**
    * {@link RedFormat} discards the green and blue components and reads just the red component.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RedFormat; // = 1028;

    /**
    * {@link RedIntegerFormat} discards the green and blue components and reads just the red component.
    * The texels are read as integers instead of floating point.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RedIntegerFormat; // = 1029;

    /**
    * {@link RGFormat} discards the alpha, and blue components and reads the red, and green components.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RGFormat; // = 1030;

    /**
    * {@link RGIntegerFormat} discards the alpha, and blue components and reads the red, and green components.
    * The texels are read as integers instead of floating point.
    * @remarks Can only be used with a WebGL 2 rendering context.
    */
    var RGIntegerFormat; // = 1031;

    /**
    * {@link RGBAIntegerFormat} reads the red, green, blue and alpha component
    * @remarks This is the default for {@link THREE.Texture}.
    */
    var RGBAIntegerFormat; // = 1033;

    var _SRGBAFormat; // = 1035; // fallback for WebGL 1
}