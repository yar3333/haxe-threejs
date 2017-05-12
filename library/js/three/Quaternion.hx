package js.three;

import js.html.*;

/**
 * Implementation of a quaternion. This is used for rotating things without incurring in the dreaded gimbal lock issue, amongst other advantages.
 * 
 * @example
 * var quaternion = new THREE.Quaternion();
 * quaternion.setFromAxisAngle( new THREE.Vector3( 0, 1, 0 ), Math.PI / 2 );
 * var vector = new THREE.Vector3( 1, 0, 0 );
 * vector.applyQuaternion( quaternion );
 */
@:native("THREE.Quaternion")
extern class Quaternion
{
	var x : Float;
	var y : Float;
	var z : Float;
	var w : Float;
	var onChangeCallback : haxe.Constraints.Function;

	/**
	 * Implementation of a quaternion. This is used for rotating things without incurring in the dreaded gimbal lock issue, amongst other advantages.
	 * 
	 * @example
	 * var quaternion = new THREE.Quaternion();
	 * quaternion.setFromAxisAngle( new THREE.Vector3( 0, 1, 0 ), Math.PI / 2 );
	 * var vector = new THREE.Vector3( 1, 0, 0 );
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
	function copy(q:Quaternion) : Quaternion;
	/**
	 * Sets this quaternion from rotation specified by Euler angles.
	 */
	function setFromEuler(euler:Euler, ?update:Bool) : Quaternion;
	/**
	 * Sets this quaternion from rotation specified by axis and angle.
	 * Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/angleToQuaternion/index.htm.
	 * Axis have to be normalized, angle is in radians.
	 */
	function setFromAxisAngle(axis:Vector3, angle:Float) : Quaternion;
	/**
	 * Sets this quaternion from rotation component of m. Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/index.htm.
	 */
	function setFromRotationMatrix(m:Matrix4) : Quaternion;
	function setFromUnitVectors(vFrom:Vector3, vTo:Vector3) : Quaternion;
	/**
	 * Inverts this quaternion.
	 */
	function inverse() : Quaternion;
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
	function equals(v:Quaternion) : Bool;
	@:overload(function(xyzw:Array<Float>, ?offset:Float):Quaternion{})
	function fromArray(n:Array<Float>) : Quaternion;
	@:overload(function(?xyzw:Array<Float>, ?offset:Float):Array<Float>{})
	function toArray() : Array<Float>;
	function onChange(callback:haxe.Constraints.Function) : Quaternion;
	/**
	 * Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/slerp/.
	 */
	static function slerp(qa:Quaternion, qb:Quaternion, qm:Quaternion, t:Float) : Quaternion;
	static function slerpFlat(dst:Array<Float>, dstOffset:Float, src0:Array<Float>, srcOffset:Float, src1:Array<Float>, stcOffset1:Float, t:Float) : Quaternion;
	/**
	 * @deprecated
	 */
	function multiplyVector3(v:Dynamic) : Dynamic;
}