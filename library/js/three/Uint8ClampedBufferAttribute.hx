package js.three;

import js.html.*;

@:native("THREE.Uint8ClampedBufferAttribute")
extern class Uint8ClampedBufferAttribute extends BufferAttribute
{
	function new(array:haxe.extern.EitherType<Iterable<Float>, haxe.extern.EitherType<ArrayLike<Float>, ArrayBuffer>>, itemSize:Float) : Void;
}