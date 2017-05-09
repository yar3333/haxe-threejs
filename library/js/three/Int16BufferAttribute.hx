package js.three;

import js.html.*;

@:native("THREE.Int16BufferAttribute")
extern class Int16BufferAttribute extends BufferAttribute
{
	@:overload(function(array:haxe.extern.EitherType<Iterable<Float>,haxe.extern.EitherType<ArrayLike<Float>,ArrayBuffer>>,itemSize:Float):Void{})
	function new(array:ArrayLike<Float>, itemSize:Float, ?normalized:Bool) : Void;
}