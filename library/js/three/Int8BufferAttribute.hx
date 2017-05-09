package js.three;

import js.html.*;

@:native("THREE.Int8BufferAttribute")
extern class Int8BufferAttribute extends BufferAttribute
{
	function new(array:haxe.extern.EitherType<Iterable<Float>, haxe.extern.EitherType<ArrayLike<Float>, ArrayBuffer>>, itemSize:Float) : Void;
}