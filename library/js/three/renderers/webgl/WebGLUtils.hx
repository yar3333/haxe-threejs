package js.three;

import js.html.webgl.WebGL2RenderingContext;
import js.three.Constants;

@:native("THREE.WebGLUtils")
extern class WebGLUtils
{
	function new(gl: haxe.extern.EitherType<js.html.webgl.RenderingContext, WebGL2RenderingContext>, extensions:Dynamic, capabilities:Dynamic) : Void;
	function convert(p:haxe.extern.EitherType<PixelFormat, haxe.extern.EitherType<CompressedPixelFormat, TextureDataType>>, ?encoding:TextureEncoding) : Float;
}