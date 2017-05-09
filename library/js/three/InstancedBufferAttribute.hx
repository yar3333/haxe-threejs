package js.three;

import js.html.*;

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedBufferAttribute.js">src/core/InstancedBufferAttribute.js</a>
 */
@:native("THREE.InstancedBufferAttribute")
extern class InstancedBufferAttribute extends BufferAttribute
{
	var meshPerAttribute : Float;

	/**
	 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedBufferAttribute.js">src/core/InstancedBufferAttribute.js</a>
	 */
	function new(data:ArrayLike<Float>, itemSize:Float, ?meshPerAttribute:Float) : Void;
}