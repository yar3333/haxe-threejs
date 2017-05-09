package js.three;

import js.html.*;

@:native("THREE.Int16BufferAttribute")
extern class Int16BufferAttribute extends BufferAttribute
{
	function new(array:haxe.extern.EitherType<Iterable<Float>, haxe.extern.EitherType<ArrayLike<Float>, ArrayBuffer>>, itemSize:Float) : Void;
}