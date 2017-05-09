package js.three;

import js.html.*;

@:native("THREE.Uint8BufferAttribute")
extern class Uint8BufferAttribute extends BufferAttribute
{
	@:overload(function(array:haxe.extern.EitherType<Iterable<Float>,haxe.extern.EitherType<ArrayLike<Float>,ArrayBuffer>>,itemSize:Float):Void{})
	function new(array:ArrayLike<Float>, itemSize:Float, ?normalized:Bool) : Void;
}