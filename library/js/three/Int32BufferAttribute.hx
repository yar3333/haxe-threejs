package js.three;

import js.html.*;

@:native("THREE.Int32BufferAttribute")
extern class Int32BufferAttribute extends BufferAttribute
{
	@:overload(function(array:haxe.extern.EitherType<Iterable<Float>,haxe.extern.EitherType<ArrayLike<Float>,ArrayBuffer>>,itemSize:Float):Void{})
	override function new(array:ArrayLike<Float>, itemSize:Float, ?normalized:Bool) : Void;
}