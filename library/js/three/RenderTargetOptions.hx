package js.three;

import js.lib.*;

extern interface RenderTargetOptions
{
	@:optional var wrapS : haxe.extern.EitherType<Wrapping, {}>;
	@:optional var wrapT : haxe.extern.EitherType<Wrapping, {}>;
	@:optional var magFilter : haxe.extern.EitherType<MagnificationTextureFilter, {}>;
	@:optional var minFilter : haxe.extern.EitherType<MinificationTextureFilter, {}>;
	@:optional var generateMipmaps : haxe.extern.EitherType<Bool, {}>;
	@:optional var format : haxe.extern.EitherType<Float, {}>;
	@:optional var type : haxe.extern.EitherType<TextureDataType, {}>;
	@:optional var anisotropy : haxe.extern.EitherType<Float, {}>;
	@:optional var colorSpace : haxe.extern.EitherType<ColorSpace, {}>;
	@:optional var internalFormat : haxe.extern.EitherType<PixelFormatGPU, {}>;
	@:optional var depthBuffer : haxe.extern.EitherType<Bool, {}>;
	@:optional var stencilBuffer : haxe.extern.EitherType<Bool, {}>;
	@:optional var depthTexture : haxe.extern.EitherType<DepthTexture, {}>;
	/**
	 * Defines the count of MSAA samples. Can only be used with WebGL 2. Default is **0**.
	 * @default 0
	 */
	@:optional var samples : Float;
	/**
	 * @deprecated Use 'colorSpace' in three.js r152+. 
	 */
	@:optional var encoding : haxe.extern.EitherType<TextureEncoding, {}>;
}