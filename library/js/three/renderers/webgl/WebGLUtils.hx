package js.three.renderers.webgl;

import js.html.webgl.WebGL2RenderingContext;

@:jsRequire("three", "WebGLUtils")
@:native("THREE.WebGLUtils")
extern class WebGLUtils
{
	function new(gl: haxe.extern.EitherType<js.html.webgl.RenderingContext, WebGL2RenderingContext>, extensions:Dynamic, capabilities:Dynamic) : Void;
	function convert(p:haxe.extern.EitherType<PixelFormat, haxe.extern.EitherType<CompressedPixelFormat, TextureDataType>>, ?encoding:TextureEncoding) : Float;
}