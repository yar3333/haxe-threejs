package js.three.renderers.webgl;

import js.html.webgl.WebGL2RenderingContext;
import js.three.core.BufferAttribute;
import js.three.core.InterleavedBufferAttribute;
import js.three.core.GLBufferAttribute;
import js.html.webgl.WebGLBuffer;

@:native("THREE.WebGLAttributes")
extern class WebGLAttributes
{
	function new(gl:haxe.extern.EitherType<js.html.webgl.RenderingContext, WebGL2RenderingContext>, capabilities:WebGLCapabilities) : Void;
	function get(attribute:haxe.extern.EitherType<BufferAttribute, haxe.extern.EitherType<InterleavedBufferAttribute, GLBufferAttribute>>) : { var buffer : WebGLBuffer; var type : Float; var bytesPerElement : Float; var version : Float; var size : Float; };
	function remove(attribute:haxe.extern.EitherType<BufferAttribute, haxe.extern.EitherType<InterleavedBufferAttribute, GLBufferAttribute>>) : Void;
	function update(attribute:haxe.extern.EitherType<BufferAttribute, haxe.extern.EitherType<InterleavedBufferAttribute, GLBufferAttribute>>, bufferType:Float) : Void;
}