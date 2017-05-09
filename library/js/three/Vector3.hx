package js.three;

import js.html.*;

/**
 * 3D vector.
 * 
 * @example
 * var a = new THREE.Vector3( 1, 0, 0 );
 * var b = new THREE.Vector3( 0, 1, 0 );
 * var c = new THREE.Vector3();
 * c.crossVectors( a, b );
 * 
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Vector3.js">src/math/Vector3.js</a>
 * 
 * ( class Vector3 implements Vector<Vector3> )
 */
@:native("THREE.Vector3")
extern class Vector3
	implements Vector
{
	var x : Float;
	var y : Float;
	var z : Float;

	/**
	 * 3D vector.
	 * 
	 * @example
	 * var a = new THREE.Vector3( 1, 0, 0 );
	 * var b = new THREE.Vector3( 0, 1, 0 );
	 * var c = new THREE.Vector3();
	 * c.crossVectors( a, b );
	 * 
	 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Vector3.js">src/math/Vector3.js</a>
	 * 
	 * ( class Vector3 implements Vector<Vector3> )
	 */
	function new(?x:Float, ?y:Float, ?z:Float) : Void;
	/**
	 * Sets value of this vector.
	 */
	function set(x:Float, y:Float, z:Float) : Vector3;
	/**
	 * Sets all values of this vector.
	 */
	function setScalar(scalar:Float) : Vector3;
	/**
	 * Sets x value of this vector.
	 */
	function setX(x:Float) : Vector3;
	/**
	 * Sets y value of this vector.
	 */
	function setY(y:Float) : Vector3;
	/**
	 * Sets z value of this vector.
	 */
	function setZ(z:Float) : Vector3;
	function setComponent(index:Int, value:Float) : Void;
	function getComponent(index:Int) : Float;
	/**
	 * Clones this vector.
	 */
	function clone() : Vector3;
	/**
	 * Copies value of v to this vector.
	 */
	function copy(v:Vector3) : Vector3;
	/**
	 * Adds v to this vector.
	 */
	function add(a:Vector3) : Vector3;
	function addScalar(s:Float) : Vector3;
	function addScaledVector(v:Vector3, s:Float) : Vector3;
	/**
	 * Sets this vector to a + b.
	 */
	function addVectors(a:Vector3, b:Vector3) : Vector3;
	/**
	 * Subtracts v from this vector.
	 */
	function sub(a:Vector3) : Vector3;
	function subScalar(s:Float) : Vector3;
	/**
	 * Sets this vector to a - b.
	 */
	function subVectors(a:Vector3, b:Vector3) : Vector3;
	function multiply(v:Vector3) : Vector3;
	/**
	 * Multiplies this vector by scalar s.
	 */
	function multiplyScalar(s:Float) : Vector3;
	function multiplyVectors(a:Vector3, b:Vector3) : Vector3;
	function applyEuler(euler:Euler) : Vector3;
	function applyAxisAngle(axis:Vector3, angle:Float) : Vector3;
	function applyMatrix3(m:Matrix3) : Vector3;
	function applyMatrix4(m:Matrix4) : Vector3;
	function applyQuaternion(q:Quaternion) : Vector3;
	function project(camrea:Camera) : Vector3;
	function unproject(camera:Camera) : Vector3;
	function transformDirection(m:Matrix4) : Vector3;
	function divide(v:Vector3) : Vector3;
	/**
	 * Divides this vector by scalar s.
	 * Set vector to ( 0, 0, 0 ) if s == 0.
	 */
	function divideScalar(s:Float) : Vector3;
	function min(v:Vector3) : Vector3;
	function max(v:Vector3) : Vector3;
	function clamp(min:Vector3, max:Vector3) : Vector3;
	function clampScalar(min:Float, max:Float) : Vector3;
	function clampLength(min:Float, max:Float) : Vector3;
	function floor() : Vector3;
	function ceil() : Vector3;
	function round() : Vector3;
	function roundToZero() : Vector3;
	/**
	 * Inverts this vector.
	 */
	function negate() : Vector3;
	/**
	 * Computes dot product of this vector and v.
	 */
	function dot(v:Vector3) : Float;
	/**
	 * Computes squared length of this vector.
	 */
	function lengthSq() : Float;
	/**
	 * Computes length of this vector.
	 */
	function length() : Float;
	/**
	 * Computes Manhattan length of this vector.
	 * http://en.wikipedia.org/wiki/Taxicab_geometry
	 */
	function lengthManhattan() : Float;
	/**
	 * Normalizes this vector.
	 */
	function normalize() : Vector3;
	/**
	 * Normalizes this vector and multiplies it by l.
	 */
	function setLength(l:Float) : Vector3;
	function lerp(v:Vector3, alpha:Float) : Vector3;
	function lerpVectors(v1:Vector3, v2:Vector3, alpha:Float) : Vector3;
	/**
	 * Sets this vector to cross product of itself and v.
	 */
	function cross(a:Vector3) : Vector3;
	/**
	 * Sets this vector to cross product of a and b.
	 */
	function crossVectors(a:Vector3, b:Vector3) : Vector3;
	function projectOnVector(v:Vector3) : Vector3;
	function projectOnPlane(planeNormal:Vector3) : Vector3;
	function reflect(vector:Vector3) : Vector3;
	function angleTo(v:Vector3) : Float;
	/**
	 * Computes distance of this vector to v.
	 */
	function distanceTo(v:Vector3) : Float;
	/**
	 * Computes squared distance of this vector to v.
	 */
	function distanceToSquared(v:Vector3) : Float;
	function distanceToManhattan(v:Vector3) : Float;
	function setFromSpherical(s:Spherical) : Vector3;
	function setFromMatrixPosition(m:Matrix4) : Vector3;
	function setFromMatrixScale(m:Matrix4) : Vector3;
	function setFromMatrixColumn(matrix:Matrix4, index:Int) : Vector3;
	/**
	 * Checks for strict equality of this vector and v.
	 */
	function equals(v:Vector3) : Bool;
	function fromArray(xyz:Array<Float>, offset:Float) : Vector3;
	function toArray(xyz:Array<Float>, offset:Float) : Array<Float>;
	function fromBufferAttribute(attribute:BufferAttribute, index:Int, offset:Float) : Vector3;
	/**
	 * @deprecated
	 */
	function getPositionFromMatrix(m:Matrix4) : Vector3;
	function getScaleFromMatrix(m:Matrix4) : Vector3;
	function getColumnFromMatrix(index:Int, matrix:Matrix4) : Vector3;
}