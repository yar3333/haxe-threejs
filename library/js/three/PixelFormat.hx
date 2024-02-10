package js.three;

import haxe.extern.EitherType;

/**
 * All Texture Pixel Formats Modes.
 * @remarks Note that the texture must have the correct {@link THREE.Texture.type} set, as described in  {@link TextureDataType}.
 * @see {@link WebGLRenderingContext.texImage2D} for details.
 * @see {@link WebGL1PixelFormat} and {@link WebGL2PixelFormat}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
typedef PixelFormat = EitherType<WebGL1PixelFormat, WebGL2PixelFormat>;