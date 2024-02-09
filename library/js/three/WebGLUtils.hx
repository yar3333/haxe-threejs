package js.three;

import js.lib.*;

@:native("THREE.WebGLUtils")
extern class WebGLUtils
{
	function new(gl:haxe.extern.EitherType<WebGLRenderingContext, WebGL2RenderingContext>, extensions:Dynamic, capabilities:Dynamic) : Void;
	function convert(p:haxe.extern.EitherType<PixelFormat, haxe.extern.EitherType<CompressedPixelFormat, TextureDataType>>, ?encoding:TextureEncoding) : Float;
}