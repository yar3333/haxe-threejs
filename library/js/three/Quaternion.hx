package js.three;

import js.lib.*;

/**
 * Implementation of a quaternion. This is used for rotating things without incurring in the dreaded gimbal lock issue, amongst other advantages.
 * 
 * @example
 * const quaternion = new THREE.Quaternion();
 * quaternion.setFromAxisAngle( new THREE.Vector3( 0, 1, 0 ), Math.PI / 2 );
 * const vector = new THREE.Vector3( 1, 0, 0 );
 * vector.applyQuaternion( quaternion );
 */
@:native("THREE.Quaternion")
extern class Quaternion
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
	 * @default 1
	 */
	var w : Float;
	var isQuaternion(default, null) : Bool;
	var _onChangeCallback : Void->Void;

	/**
	 * Implementation of a quaternion. This is used for rotating things without incurring in the dreaded gimbal lock issue, amongst other advantages.
	 * 
	 * @example
	 * const quaternion = new THREE.Quaternion();
	 * quaternion.setFromAxisAngle( new THREE.Vector3( 0, 1, 0 ), Math.PI / 2 );
	 * const vector = new THREE.Vector3( 1, 0, 0 );
	 * vector.applyQuaternion( quaternion );
	 */
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
	/**
	 * Sets values of this quaternion.
	 */
	function set(x:Float, y:Float, z:Float, w:Float) : Quaternion;
	/**
	 * Clones this quaternion.
	 */
	function clone() : Quaternion;
	/**
	 * Copies values of q to this quaternion.
	 */
	function copy(q:QuaternionLike) : Quaternion;
	/**
	 * Sets this quaternion from rotation specified by Euler angles.
	 */
	function setFromEuler(euler:Euler, ?update:Bool) : Quaternion;
	/**
	 * Sets this quaternion from rotation specified by axis and angle.
	 * Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/angleToQuaternion/index.htm.
	 * Axis have to be normalized, angle is in radians.
	 */
	function setFromAxisAngle(axis:Vector3Like, angle:Float) : Quaternion;
	/**
	 * Sets this quaternion from rotation component of m. Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/index.htm.
	 */
	function setFromRotationMatrix(m:Matrix4) : Quaternion;
	function setFromUnitVectors(vFrom:Vector3, vTo:Vector3Like) : Quaternion;
	function angleTo(q:Quaternion) : Float;
	function rotateTowards(q:Quaternion, step:Float) : Quaternion;
	function identity() : Quaternion;
	/**
	 * Inverts this quaternion.
	 */
	function invert() : Quaternion;
	function conjugate() : Quaternion;
	function dot(v:Quaternion) : Float;
	function lengthSq() : Float;
	/**
	 * Computes length of this quaternion.
	 */
	function length() : Float;
	/**
	 * Normalizes this quaternion.
	 */
	function normalize() : Quaternion;
	/**
	 * Multiplies this quaternion by b.
	 */
	function multiply(q:Quaternion) : Quaternion;
	function premultiply(q:Quaternion) : Quaternion;
	/**
	 * Sets this quaternion to a x b
	 * Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/code/index.htm.
	 */
	function multiplyQuaternions(a:Quaternion, b:Quaternion) : Quaternion;
	function slerp(qb:Quaternion, t:Float) : Quaternion;
	function slerpQuaternions(qa:Quaternion, qb:Quaternion, t:Float) : Quaternion;
	function equals(v:Quaternion) : Bool;
	/**
	 * Sets this quaternion's x, y, z and w value from the provided array or array-like.
	 */
	function fromArray(array:haxe.extern.EitherType<Array<Float>, ArrayLike<Float>>, ?offset:Float) : Quaternion;
	/**
	 * Returns an array [x, y, z, w], or copies x, y, z and w into the provided array.
	 * @return The created or provided array.
	 * Copies x, y, z and w into the provided array-like.
	 * @return The provided array-like.
	 */
	@:overload(function(array:ArrayLike<Float>, ?offset:Float):ArrayLike<Float>{})
	function toArray(?array:Array<Float>, ?offset:Float) : Array<Float>;
	/**
	 * Returns an array [x, y, z, w], or copies x, y, z and w into the provided array.
	 * @return The created or provided array.
	 * Copies x, y, z and w into the provided array-like.
	 * @return The provided array-like.
	 */
	/**
	 * This method defines the serialization result of Quaternion.
	 * @return The numerical elements of this quaternion in an array of format [x, y, z, w].
	 */
	function toJSON() : [number, number, number, number];
	/**
	 * Sets x, y, z, w properties of this quaternion from the attribute.
	 */
	function fromBufferAttribute(attribute:haxe.extern.EitherType<BufferAttribute, InterleavedBufferAttribute>, index:Float) : Quaternion;
	function _onChange(callback:Void->Void) : Quaternion;
	static function slerpFlat(dst:Array<Float>, dstOffset:Float, src0:Array<Float>, srcOffset:Float, src1:Array<Float>, stcOffset1:Float, t:Float) : Void;
	static function multiplyQuaternionsFlat(dst:Array<Float>, dstOffset:Float, src0:Array<Float>, srcOffset:Float, src1:Array<Float>, stcOffset1:Float) : Array<Float>;
	function random() : Quaternion;
	function [Symbol.iterator]() : Generator<Float, Void>;
}