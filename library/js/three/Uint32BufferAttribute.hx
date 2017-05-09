package js.three;

import js.html.*;

@:native("THREE.Uint32BufferAttribute")
extern class Uint32BufferAttribute extends BufferAttribute
{
	function new(array:haxe.extern.EitherType<Iterable<Float>, haxe.extern.EitherType<ArrayLike<Float>, ArrayBuffer>>, itemSize:Float) : Void;
}