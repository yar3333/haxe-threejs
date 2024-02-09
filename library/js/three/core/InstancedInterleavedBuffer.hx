package js.three.core;

import js.lib.*;

/**
 * An instanced version of {@link THREE.InterleavedBuffer | InterleavedBuffer}.
 * @see {@link https://threejs.org/docs/index.html#api/en/core/InstancedInterleavedBuffer | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/InstancedInterleavedBuffer.js | Source}
 */
@:native("THREE.InstancedInterleavedBuffer")
extern class InstancedInterleavedBuffer extends InterleavedBuffer
{
	/**
	 * @defaultValue `1`
	 */
	var meshPerAttribute : Float;

	/**
	 * An instanced version of {@link THREE.InterleavedBuffer | InterleavedBuffer}.
	 * @see {@link https://threejs.org/docs/index.html#api/en/core/InstancedInterleavedBuffer | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/InstancedInterleavedBuffer.js | Source}
	 */
	function new(array:TypedArray, stride:Float, ?meshPerAttribute:Float) : Void;
}