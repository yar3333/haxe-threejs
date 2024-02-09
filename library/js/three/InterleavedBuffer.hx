package js.three;

import js.lib.*;

/**
 * **"Interleaved"** means that multiple attributes, possibly of different types, (e.g., _position, normal, uv, color_) are packed into a single array buffer.
 * An introduction into interleaved arrays can be found here: {@link https://blog.tojicode.com/2011/05/interleaved-array-basics.html | Interleaved array basics}
 * @see Example: {@link https://threejs.org/examples/#webgl_buffergeometry_points_interleaved | webgl / buffergeometry / points / interleaved}
 * @see {@link https://threejs.org/docs/index.html#api/en/core/InterleavedBuffer | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/InterleavedBuffer.js | Source}
 */
@:native("THREE.InterleavedBuffer")
extern class InterleavedBuffer
{
	/**
	 * A {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray | TypedArray} with a shared buffer. Stores the geometry data.
	 */
	var array : TypedArray;
	/**
	 * The number of {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray | TypedArray} elements per vertex.
	 * @remarks Expects a `Integer`
	 */
	var stride : Float;
	/**
	 * Defines the intended usage pattern of the data store for optimization purposes.
	 * Corresponds to the {@link BufferAttribute.usage | usage} parameter of
	 * {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/bufferData | WebGLRenderingContext.bufferData}.
	 * @remarks
	 * After the initial use of a buffer, its usage cannot be changed. Instead, instantiate a new one and set the desired usage before the next render.
	 * @see {@link https://threejs.org/docs/index.html#api/en/constants/BufferAttributeUsage | Buffer Attribute Usage Constants} for all possible values.
	 * @see {@link BufferAttribute.setUsage | setUsage}
	 * @defaultValue {@link THREE.StaticDrawUsage | THREE.StaticDrawUsage}.
	 */
	var usage : Usage;
	/**
	 * Object containing offset and count.
	 * @defaultValue `{ offset: number = 0; count: number = -1 }`
	 * @deprecated Will be removed in r169. Use "addUpdateRange()" instead.
	 */
	var updateRange : { /** * @defaultValue `0` */ var offset : Float; /** * @defaultValue `-1` */ var count : Float; };
	/**
	 * This can be used to only update some components of stored data. Use the {@link .addUpdateRange} function to add
	 * ranges to this array.
	 */
	var updateRanges : Array<{ /** * Position at which to start update. */ var start : Float; /** * The number of components to update. */ var count : Float; }>;
	/**
	 * A version number, incremented every time the {@link BufferAttribute.needsUpdate | needsUpdate} property is set to true.
	 * @remarks Expects a `Integer`
	 * @defaultValue `0`
	 */
	var version : Float;
	/**
	 * Gives the total number of elements in the array.
	 * @remarks Expects a `Integer`
	 * @defaultValue 0
	 */
	var count : Float;
	/**
	 * {@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	 * @remarks This gets automatically assigned and shouldn't be edited.
	 */
	var uuid : String;

	/**
	 * **"Interleaved"** means that multiple attributes, possibly of different types, (e.g., _position, normal, uv, color_) are packed into a single array buffer.
	 * An introduction into interleaved arrays can be found here: {@link https://blog.tojicode.com/2011/05/interleaved-array-basics.html | Interleaved array basics}
	 * @see Example: {@link https://threejs.org/examples/#webgl_buffergeometry_points_interleaved | webgl / buffergeometry / points / interleaved}
	 * @see {@link https://threejs.org/docs/index.html#api/en/core/InterleavedBuffer | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/InterleavedBuffer.js | Source}
	 */
	function new(array:TypedArray, stride:Float) : Void;
	/**
	 * Calls {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/set | TypedArray.set}( {@link value}, {@link offset} )
	 * on the {@link BufferAttribute.array | array}.
	 * @link BufferAttribute.array | array} at which to start copying. Expects a `Integer`. Default `0`.
	 * @throws `RangeError` When {@link offset} is negative or is too large.
	 */
	function set(value:ArrayLike<Float>, offset:Float) : InterleavedBuffer;
	/**
	 * Set {@link BufferAttribute.usage | usage}
	 * @remarks
	 * After the initial use of a buffer, its usage cannot be changed. Instead, instantiate a new one and set the desired usage before the next render.
	 * @see {@link https://threejs.org/docs/index.html#api/en/constants/BufferAttributeUsage | Buffer Attribute Usage Constants} for all possible values.
	 * @see {@link BufferAttribute.usage | usage}
	 * @link BufferAttribute.usage | usage} parameter of
	 * {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/bufferData | WebGLRenderingContext.bufferData}.
	 */
	function setUsage(value:Usage) : InterleavedBuffer;
	/**
	 * Adds a range of data in the data array to be updated on the GPU. Adds an object describing the range to the
	 * {@link .updateRanges} array.
	 */
	function addUpdateRange(start:Float, count:Float) : Void;
	/**
	 * Clears the {@link .updateRanges} array.
	 */
	function clearUpdateRanges() : Void;
	/**
	 * Copies another {@link InterleavedBuffer} to this {@link InterleavedBuffer} instance.
	 */
	function copy(source:InterleavedBuffer) : InterleavedBuffer;
	/**
	 * Copies data from {@link attribute}[{@link index2}] to {@link InterleavedBuffer.array | array}[{@link index1}].
	 */
	function copyAt(index1:Float, attribute:InterleavedBufferAttribute, index2:Float) : InterleavedBuffer;
	/**
	 * Creates a clone of this {@link InterleavedBuffer}.
	 */
	function clone(data:{}) : InterleavedBuffer;
	/**
	 * Serializes this {@link InterleavedBuffer}.
	 * Converting to {@link https://github.com/mrdoob/three.js/wiki/JSON-Geometry-format-4 | JSON Geometry format v4},
	 */
	function toJSON(data:{}) : { var uuid : String; var buffer : String; var type : String; var stride : Float; };
}