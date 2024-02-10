package js.three.core;

import haxe.extern.EitherType;
import js.lib.ArrayBufferView;
import js.three.Constants;
import js.three.math.Matrix3;
import js.three.math.Matrix4;

/**
 * This class stores data for an attribute (such as vertex positions, face indices, normals, colors, UVs, and any custom attributes )
 * associated with a {@link THREE.BufferGeometry | BufferGeometry}, which allows for more efficient passing of data to the GPU
 * @remarks
 * When working with _vector-like_ data, the _`.fromBufferAttribute( attribute, index )`_ helper methods on
 * {@link THREE.Vector2.fromBufferAttribute | Vector2},
 * {@link THREE.Vector3.fromBufferAttribute | Vector3},
 * {@link THREE.Vector4.fromBufferAttribute | Vector4}, and
 * {@link THREE.Color.fromBufferAttribute | Color} classes may be helpful.
 * @see {@link THREE.BufferGeometry | BufferGeometry} for details and a usage examples.
 * @see Example: {@link https://threejs.org/examples/#webgl_buffergeometry | WebGL / BufferGeometry - Clean up Memory}
 * @see {@link https://threejs.org/docs/index.html#api/en/core/BufferAttribute | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js | Source}
 */
@:jsRequire("three", "BufferAttribute")
@:native("THREE.BufferAttribute")
extern class BufferAttribute
{
	/**
	 * Optional name for this attribute instance.
	 * @defaultValue ''
	 */
	var name : String;
	/**
	 * The {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray | TypedArray} holding data stored in the buffer.
	 * @returns `TypedArray`
	 */
	var array : TypedArray;
	/**
	 * The length of vectors that are being stored in the {@link BufferAttribute.array | array}.
	 * @remarks Expects a `Integer`
	 */
	var itemSize : Float;
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
	 * Configures the bound GPU type for use in shaders. Either {@link FloatType} or {@link IntType}, default is {@link FloatType}.
	 * 
	 * Note: this only has an effect for integer arrays and is not configurable for float arrays. For lower precision
	 * float types, see https://threejs.org/docs/#api/en/core/bufferAttributeTypes/BufferAttributeTypes.
	 */
	var gpuType : AttributeGPUType;
	/**
	 * This can be used to only update some components of stored vectors (for example, just the component related to color).
	 * @defaultValue `{ offset: number = 0; count: number = -1 }`
	 * @deprecated Will be removed in r169. Use "addUpdateRange()" instead.
	 */
	var updateRange : { /** * Position at which to start update. * @defaultValue `0` */ var offset : Float; /** * @defaultValue `-1`, which means don't use update ranges. */ var count : Float; };
	/**
	 * This can be used to only update some components of stored vectors (for example, just the component related to
	 * color). Use the {@link .addUpdateRange} function to add ranges to this array.
	 */
	var updateRanges : Array<{ /** * Position at which to start update. */ var start : Float; /** * The number of components to update. */ var count : Float; }>;
	/**
	 * A version number, incremented every time the {@link BufferAttribute.needsUpdate | needsUpdate} property is set to true.
	 * @remarks Expects a `Integer`
	 * @defaultValue `0`
	 */
	var version : Float;
	/**
	 * Indicates how the underlying data in the buffer maps to the values in the GLSL shader code.
	 * @see `constructor` above for details.
	 * @defaultValue `false`
	 */
	var normalized : Bool;
	/**
	 * Represents the number of items this buffer attribute stores. It is internally computed by dividing the
	 * {@link BufferAttribute.array | array}'s length by the {@link BufferAttribute.itemSize | itemSize}. Read-only
	 * property.
	 */
	var count(default, null) : Int;
	/**
	 * Read-only flag to check if a given object is of type {@link BufferAttribute}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isBufferAttribute(default, null) : Bool;
	/**
	 * A callback function that is executed after the Renderer has transferred the attribute array data to the GPU.
	 */
	var onUploadCallback : Void->Void;

	/**
	 * This class stores data for an attribute (such as vertex positions, face indices, normals, colors, UVs, and any custom attributes )
	 * associated with a {@link THREE.BufferGeometry | BufferGeometry}, which allows for more efficient passing of data to the GPU
	 * @remarks
	 * When working with _vector-like_ data, the _`.fromBufferAttribute( attribute, index )`_ helper methods on
	 * {@link THREE.Vector2.fromBufferAttribute | Vector2},
	 * {@link THREE.Vector3.fromBufferAttribute | Vector3},
	 * {@link THREE.Vector4.fromBufferAttribute | Vector4}, and
	 * {@link THREE.Color.fromBufferAttribute | Color} classes may be helpful.
	 * @see {@link THREE.BufferGeometry | BufferGeometry} for details and a usage examples.
	 * @see Example: {@link https://threejs.org/examples/#webgl_buffergeometry | WebGL / BufferGeometry - Clean up Memory}
	 * @see {@link https://threejs.org/docs/index.html#api/en/core/BufferAttribute | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js | Source}
	 */
	function new(array:TypedArray, itemSize:Float, ?normalized:Bool) : Void;
	/**
	 * Sets the value of the {@link onUploadCallback} property.
	 * @see Example: {@link https://threejs.org/examples/#webgl_buffergeometry | WebGL / BufferGeometry} this is used to free memory after the buffer has been transferred to the GPU.
	 * @see {@link onUploadCallback}
	 */
	function onUpload(callback:Void->Void) : BufferAttribute;
	/**
	 * Set {@link BufferAttribute.usage | usage}
	 * @remarks
	 * After the initial use of a buffer, its usage cannot be changed. Instead, instantiate a new one and set the desired usage before the next render.
	 * @see {@link https://threejs.org/docs/index.html#api/en/constants/BufferAttributeUsage | Buffer Attribute Usage Constants} for all possible values.
	 * @see {@link BufferAttribute.usage | usage}
	 * @link BufferAttribute.usage | usage} parameter of
	 * {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/bufferData | WebGLRenderingContext.bufferData}.
	 */
	function setUsage(usage:Usage) : BufferAttribute;
	/**
	 * Adds a range of data in the data array to be updated on the GPU. Adds an object describing the range to the
	 * {@link .updateRanges} array.
	 */
	function addUpdateRange(start:Float, count:Int) : Void;
	/**
	 * Clears the {@link .updateRanges} array.
	 */
	function clearUpdateRanges() : Void;
	/**
	 * @returns a copy of this {@link BufferAttribute}.
	 */
	function clone() : BufferAttribute;
	/**
	 * Copies another {@link BufferAttribute} to this {@link BufferAttribute}.
	 */
	function copy(source:BufferAttribute) : BufferAttribute;
	/**
	 * Copy a vector from bufferAttribute[index2] to {@link BufferAttribute.array | array}[index1].
	 */
	function copyAt(index1:Float, attribute:BufferAttribute, index2:Float) : BufferAttribute;
	/**
	 * Copy the array given here (which can be a normal array or `TypedArray`) into {@link BufferAttribute.array | array}.
	 * @see {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/set | TypedArray.set} for notes on requirements if copying a `TypedArray`.
	 */
	function copyArray(array:ArrayLike<Float>) : BufferAttribute;
	/**
	 * Applies matrix {@link Matrix3 | m} to every Vector3 element of this {@link BufferAttribute}.
	 */
	function applyMatrix3(m:Matrix3) : BufferAttribute;
	/**
	 * Applies matrix {@link Matrix4 | m} to every Vector3 element of this {@link BufferAttribute}.
	 */
	function applyMatrix4(m:Matrix4) : BufferAttribute;
	/**
	 * Applies normal matrix {@link Matrix3 | m} to every Vector3 element of this {@link BufferAttribute}.
	 */
	function applyNormalMatrix(m:Matrix3) : BufferAttribute;
	/**
	 * Applies matrix {@link Matrix4 | m} to every Vector3 element of this {@link BufferAttribute}, interpreting the elements as a direction vectors.
	 */
	function transformDirection(m:Matrix4) : BufferAttribute;
	/**
	 * Calls {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/set | TypedArray.set}( {@link value}, {@link offset} )
	 * on the {@link BufferAttribute.array | array}.
	 * @link Array | Array} or `TypedArray` from which to copy values.
	 * @link BufferAttribute.array | array} at which to start copying. Expects a `Integer`. Default `0`.
	 * @throws `RangeError` When {@link offset} is negative or is too large.
	 */
	function set(value:haxe.extern.EitherType<ArrayLike<Float>, ArrayBufferView>, ?offset:Float) : BufferAttribute;
	/**
	 * Returns the given component of the vector at the given index.
	 */
	function getComponent(index:Int, component:Float) : Float;
	/**
	 * Sets the given component of the vector at the given index.
	 */
	function setComponent(index:Int, component:Float, value:Float) : Void;
	/**
	 * Returns the x component of the vector at the given index.
	 */
	function getX(index:Int) : Float;
	/**
	 * Sets the x component of the vector at the given index.
	 */
	function setX(index:Int, x:Float) : BufferAttribute;
	/**
	 * Returns the y component of the vector at the given index.
	 */
	function getY(index:Int) : Float;
	/**
	 * Sets the y component of the vector at the given index.
	 */
	function setY(index:Int, y:Float) : BufferAttribute;
	/**
	 * Returns the z component of the vector at the given index.
	 */
	function getZ(index:Int) : Float;
	/**
	 * Sets the z component of the vector at the given index.
	 */
	function setZ(index:Int, z:Float) : BufferAttribute;
	/**
	 * Returns the w component of the vector at the given index.
	 */
	function getW(index:Int) : Float;
	/**
	 * Sets the w component of the vector at the given index.
	 */
	function setW(index:Int, z:Float) : BufferAttribute;
	/**
	 * Sets the x and y components of the vector at the given index.
	 */
	function setXY(index:Int, x:Float, y:Float) : BufferAttribute;
	/**
	 * Sets the x, y and z components of the vector at the given index.
	 */
	function setXYZ(index:Int, x:Float, y:Float, z:Float) : BufferAttribute;
	/**
	 * Sets the x, y, z and w components of the vector at the given index.
	 */
	function setXYZW(index:Int, x:Float, y:Float, z:Float, w:Float) : BufferAttribute;
	/**
	 * Convert this object to three.js to the `data.attributes` part of {@link https://github.com/mrdoob/three.js/wiki/JSON-Geometry-format-4 | JSON Geometry format v4},
	 */
	function toJSON() : { var itemSize : Float; var type : String; var array : Array<Float>; var normalized : Bool; };
}