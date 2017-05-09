package js.three;

import js.html.*;

@:native("THREE.Float32BufferAttribute")
extern class Float32BufferAttribute extends BufferAttribute
{
	function new(array:haxe.extern.EitherType<Iterable<Float>, haxe.extern.EitherType<ArrayLike<Float>, ArrayBuffer>>, itemSize:Float) : Void;
}