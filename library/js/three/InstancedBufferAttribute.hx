package js.three;

import js.html.*;

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedBufferAttribute.js">src/core/InstancedBufferAttribute.js</a>
 */
@:native("THREE.InstancedBufferAttribute")
extern class InstancedBufferAttribute extends BufferAttribute
{
	function new(data:ArrayLike<number>, itemSize:Float, ?meshPerAttribute:Float) : Void;
	var meshPerAttribute : Float;

	@:overload(function():InstancedBufferAttribute{})
	override function clone() : BufferAttribute;
	@:overload(function(source:InstancedBufferAttribute):InstancedBufferAttribute{})
	override function copy(source:BufferAttribute) : BufferAttribute;
}