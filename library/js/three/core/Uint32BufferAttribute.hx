package js.three.core;
import js.lib.ArrayBuffer;

/**
 * A {@link THREE.BufferAttribute | BufferAttribute} for {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint32Array: Uint32Array}
 * {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray#typedarray_objects | TypedArray}
 * @see {@link THREE.BufferAttribute | BufferAttribute} for details and for inherited methods and properties.
 * @see {@link https://threejs.org/docs/index.html#api/en/core/bufferAttributeTypes/BufferAttributeTypes | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js | Source}
 */
@:jsRequire("three", "Uint32BufferAttribute")
@:native("THREE.Uint32BufferAttribute")
extern class Uint32BufferAttribute extends BufferAttribute
{
	/**
	 * A {@link THREE.BufferAttribute | BufferAttribute} for {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint32Array: Uint32Array}
	 * {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray#typedarray_objects | TypedArray}
	 * @see {@link THREE.BufferAttribute | BufferAttribute} for details and for inherited methods and properties.
	 * @see {@link https://threejs.org/docs/index.html#api/en/core/bufferAttributeTypes/BufferAttributeTypes | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js | Source}
	 */
	function new(array:haxe.extern.EitherType<Iterable<Float>, haxe.extern.EitherType<ArrayLike<Float>, haxe.extern.EitherType<ArrayBuffer, Float>>>, itemSize:Float, ?normalized:Bool) : Void;
}