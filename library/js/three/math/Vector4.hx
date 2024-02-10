package js.three.math;

import js.three.core.BufferAttribute;

typedef Vector4Tuple = Array<Float>;

/**
 * 4D vector.
 */
@:native("THREE.Vector4")
extern class Vector4 implements ArrayAccess<Float>
{
	/**
	 * @default 0
	 */
	var x : Float;
	/**
	 * @default 0
	 */
	var y : Float;
	/**
	 * @default 0
	 */
	var z : Float;
	/**
	 * @default 0
	 */
	var w : Float;
	var width : Float;
	var height : Float;
	var isVector4(default, null) : Bool;

	/**
	 * 4D vector.
	 */
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
	/**
	 * Sets value of this vector.
	 */
	function set(x:Float, y:Float, z:Float, w:Float) : Vector4;
	/**
	 * Sets all values of this vector.
	 */
	function setScalar(scalar:Float) : Vector4;
	/**
	 * Sets X component of this vector.
	 */
	function setX(x:Float) : Vector4;
	/**
	 * Sets Y component of this vector.
	 */
	function setY(y:Float) : Vector4;
	/**
	 * Sets Z component of this vector.
	 */
	function setZ(z:Float) : Vector4;
	/**
	 * Sets w component of this vector.
	 */
	function setW(w:Float) : Vector4;
	function setComponent(index:Int, value:Float) : Vector4;
	function getComponent(index:Int) : Float;
	/**
	 * Clones this vector.
	 */
	function clone() : Vector4;
	/**
	 * Copies value of v to this vector.
	 */
	function copy(v:Vector4Like) : Vector4;
	/**
	 * Adds v to this vector.
	 */
	function add(v:Vector4Like) : Vector4;
	function addScalar(scalar:Float) : Vector4;
	/**
	 * Sets this vector to a + b.
	 */
	function addVectors(a:Vector4Like, b:Vector4Like) : Vector4;
	function addScaledVector(v:Vector4Like, s:Float) : Vector4;
	/**
	 * Subtracts v from this vector.
	 */
	function sub(v:Vector4Like) : Vector4;
	function subScalar(s:Float) : Vector4;
	/**
	 * Sets this vector to a - b.
	 */
	function subVectors(a:Vector4Like, b:Vector4Like) : Vector4;
	function multiply(v:Vector4Like) : Vector4;
	/**
	 * Multiplies this vector by scalar s.
	 */
	function multiplyScalar(s:Float) : Vector4;
	function applyMatrix4(m:Matrix4) : Vector4;
	/**
	 * Divides this vector by scalar s.
	 * Set vector to ( 0, 0, 0 ) if s == 0.
	 */
	function divideScalar(s:Float) : Vector4;
	/**
	 * http://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToAngle/index.htm
	 */
	function setAxisAngleFromQuaternion(q:QuaternionLike) : Vector4;
	/**
	 * http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToAngle/index.htm
	 */
	function setAxisAngleFromRotationMatrix(m:Matrix4) : Vector4;
	function min(v:Vector4Like) : Vector4;
	function max(v:Vector4Like) : Vector4;
	function clamp(min:Vector4Like, max:Vector4Like) : Vector4;
	function clampScalar(min:Float, max:Float) : Vector4;
	function floor() : Vector4;
	function ceil() : Vector4;
	function round() : Vector4;
	function roundToZero() : Vector4;
	/**
	 * Inverts this vector.
	 */
	function negate() : Vector4;
	/**
	 * Computes dot product of this vector and v.
	 */
	function dot(v:Vector4Like) : Float;
	/**
	 * Computes squared length of this vector.
	 */
	function lengthSq() : Float;
	/**
	 * Computes length of this vector.
	 */
	function length() : Float;
	/**
	 * Computes the Manhattan length of this vector.
	 * 
	 * see {@link http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry}
	 */
	function manhattanLength() : Float;
	/**
	 * Normalizes this vector.
	 */
	function normalize() : Vector4;
	/**
	 * Normalizes this vector and multiplies it by l.
	 */
	function setLength(length:Float) : Vector4;
	/**
	 * Linearly interpolate between this vector and v with alpha factor.
	 */
	function lerp(v:Vector4Like, alpha:Float) : Vector4;
	function lerpVectors(v1:Vector4Like, v2:Vector4Like, alpha:Float) : Vector4;
	/**
	 * Checks for strict equality of this vector and v.
	 */
	function equals(v:Vector4Like) : Bool;
	/**
	 * Sets this vector's x, y, z and w value from the provided array or array-like.
	 */
	function fromArray(array:haxe.extern.EitherType<Array<Float>, ArrayLike<Float>>, ?offset:Float) : Vector4;
	/**
	 * Returns an array [x, y, z, w], or copies x, y, z and w into the provided array.
	 * @return The created or provided array.
	 * Copies x, y, z and w into the provided array-like.
	 * @return The provided array-like.
	 */
    overload function toArray(?array:Array<Float>, ?offset:Float) : Array<Float>;
	/**
	 * Returns an array [x, y, z, w], or copies x, y, z and w into the provided array.
	 * @return The created or provided array.
	 * Copies x, y, z and w into the provided array-like.
	 * @return The provided array-like.
	 */
    overload function toArray(?array:Vector4Tuple, ?offset:Int) : Vector4Tuple;
	/**
	 * Returns an array [x, y, z, w], or copies x, y, z and w into the provided array.
	 * @return The created or provided array.
	 * Copies x, y, z and w into the provided array-like.
	 * @return The provided array-like.
	 */
    overload function toArray(array:ArrayLike<Float>, ?offset:Float) : ArrayLike<Float>;
	function fromBufferAttribute(attribute:BufferAttribute, index:Int) : Vector4;
	/**
	 * Sets this vector's x, y, z and w from Math.random
	 */
	function random() : Vector4;
	
    //function [Symbol.iterator]() : Iterator<Float>;
}