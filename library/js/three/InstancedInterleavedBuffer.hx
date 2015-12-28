package js.three;

import js.html.*;

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedInterleavedBuffer.js">src/core/InstancedInterleavedBuffer.js</a>
 */
@:native("THREE.InstancedInterleavedBuffer")
extern class InstancedInterleavedBuffer extends InterleavedBuffer
{
	function new(array:ArrayLike<number>, stride:Float, ?meshPerAttribute:Float) : Void;
	var meshPerAttribute : Float;

	@:overload(function():InstancedInterleavedBuffer{})
	override function clone() : InterleavedBuffer;
	@:overload(function(source:InstancedInterleavedBuffer):InstancedInterleavedBuffer{})
	override function copy(source:InterleavedBuffer) : InterleavedBuffer;
}