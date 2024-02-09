package js.three;

import js.lib.*;

@:native("THREE.WebGLAttributes")
extern class WebGLAttributes
{
	function new(gl:haxe.extern.EitherType<WebGLRenderingContext, WebGL2RenderingContext>, capabilities:WebGLCapabilities) : Void;
	function get(attribute:haxe.extern.EitherType<BufferAttribute, haxe.extern.EitherType<InterleavedBufferAttribute, GLBufferAttribute>>) : haxe.extern.EitherType<, haxe.extern.EitherType<{ var buffer : WebGLBuffer; var type : Float; var bytesPerElement : Float; var version : Float; var size : Float; }, {}>>;
	function remove(attribute:haxe.extern.EitherType<BufferAttribute, haxe.extern.EitherType<InterleavedBufferAttribute, GLBufferAttribute>>) : Void;
	function update(attribute:haxe.extern.EitherType<BufferAttribute, haxe.extern.EitherType<InterleavedBufferAttribute, GLBufferAttribute>>, bufferType:Float) : Void;
}