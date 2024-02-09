package js.three.core;

import js.lib.*;

/**
 * An instanced version of {@link THREE.BufferAttribute | BufferAttribute}.
 * @see {@link https://threejs.org/docs/index.html#api/en/core/InstancedBufferAttribute | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/InstancedBufferAttribute.js | Source}
 */
@:native("THREE.InstancedBufferAttribute")
extern class InstancedBufferAttribute extends BufferAttribute
{
	/**
	 * Defines how often a value of this buffer attribute should be repeated.
	 * A value of one means that each value of the instanced attribute is used for a single instance.
	 * A value of two means that each value is used for two consecutive instances (and so on).
	 * @defaultValue `1`
	 */
	var meshPerAttribute : Float;

	/**
	 * An instanced version of {@link THREE.BufferAttribute | BufferAttribute}.
	 * @see {@link https://threejs.org/docs/index.html#api/en/core/InstancedBufferAttribute | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/InstancedBufferAttribute.js | Source}
	 */
	function new(array:TypedArray, itemSize:Float, ?normalized:Bool, ?meshPerAttribute:Float) : Void;
}