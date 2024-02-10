package js.three.core;

import js.three.Constants;
import js.three.textures.DepthTexture;

extern interface RenderTargetOptions
{
	@:optional var wrapS : Wrapping;
	@:optional var wrapT : Wrapping;
	@:optional var magFilter : MagnificationTextureFilter;
	@:optional var minFilter : MinificationTextureFilter;
	@:optional var generateMipmaps : Bool;
	@:optional var format : Float;
	@:optional var type : TextureDataType;
	@:optional var anisotropy : Float;
	@:optional var colorSpace : ColorSpace;
	@:optional var internalFormat : PixelFormatGPU;
	@:optional var depthBuffer : Bool;
	@:optional var stencilBuffer : Bool;
	@:optional var depthTexture : DepthTexture;
	/**
	 * Defines the count of MSAA samples. Can only be used with WebGL 2. Default is **0**.
	 * @default 0
	 */
	@:optional var samples : Float;
	/**
	 * @deprecated Use 'colorSpace' in three.js r152+. 
	 */
	@:optional var encoding : TextureEncoding;
}