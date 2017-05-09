package js.three;

import js.html.*;

@:native("THREE.Float64BufferAttribute")
extern class Float64BufferAttribute extends BufferAttribute
{
	function new(array:haxe.extern.EitherType<Iterable<Float>, haxe.extern.EitherType<ArrayLike<Float>, ArrayBuffer>>, itemSize:Float) : Void;
}