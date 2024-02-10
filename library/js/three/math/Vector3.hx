package js.three.math;

import js.three.math.Color.RGB;
import js.three.cameras.Camera;
import js.three.core.BufferAttribute;
import js.three.core.InterleavedBufferAttribute;

typedef Vector3Tuple = Array<Float>;

/**
 * 3D vector.
 * 
 * see {@link https://github.com/mrdoob/three.js/blob/master/src/math/Vector3.js}
 * 
 * @example
 * const a = new THREE.Vector3( 1, 0, 0 );
 * const b = new THREE.Vector3( 0, 1, 0 );
 * const c = new THREE.Vector3();
 * c.crossVectors( a, b );
 */
@:native("THREE.Vector3")
extern class Vector3 implements ArrayAccess<Float>
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
	var isVector3(default, null) : Bool;

	/**
	 * 3D vector.
	 * 
	 * see {@link https://github.com/mrdoob/three.js/blob/master/src/math/Vector3.js}
	 * 
	 * @example
	 * const a = new THREE.Vector3( 1, 0, 0 );
	 * const b = new THREE.Vector3( 0, 1, 0 );
	 * const c = new THREE.Vector3();
	 * c.crossVectors( a, b );
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
	function setComponent(index:Int, value:Float) : Vector3;
	function getComponent(index:Int) : Float;
	/**
	 * Clones this vector.
	 */
	function clone() : Vector3;
	/**
	 * Copies value of v to this vector.
	 */
	function copy(v:Vector3Like) : Vector3;
	/**
	 * Adds v to this vector.
	 */
	function add(v:Vector3Like) : Vector3;
	function addScalar(s:Float) : Vector3;
	/**
	 * Sets this vector to a + b.
	 */
	function addVectors(a:Vector3Like, b:Vector3Like) : Vector3;
	function addScaledVector(v:Vector3, s:Float) : Vector3;
	/**
	 * Subtracts v from this vector.
	 */
	function sub(a:Vector3Like) : Vector3;
	function subScalar(s:Float) : Vector3;
	/**
	 * Sets this vector to a - b.
	 */
	function subVectors(a:Vector3Like, b:Vector3Like) : Vector3;
	function multiply(v:Vector3Like) : Vector3;
	/**
	 * Multiplies this vector by scalar s.
	 */
	function multiplyScalar(s:Float) : Vector3;
	function multiplyVectors(a:Vector3Like, b:Vector3Like) : Vector3;
	function applyEuler(euler:Euler) : Vector3;
	function applyAxisAngle(axis:Vector3, angle:Float) : Vector3;
	function applyMatrix3(m:Matrix3) : Vector3;
	function applyNormalMatrix(m:Matrix3) : Vector3;
	function applyMatrix4(m:Matrix4) : Vector3;
	function applyQuaternion(q:QuaternionLike) : Vector3;
	function project(camera:Camera) : Vector3;
	function unproject(camera:Camera) : Vector3;
	function transformDirection(m:Matrix4) : Vector3;
	function divide(v:Vector3Like) : Vector3;
	/**
	 * Divides this vector by scalar s.
	 * Set vector to ( 0, 0, 0 ) if s == 0.
	 */
	function divideScalar(s:Float) : Vector3;
	function min(v:Vector3Like) : Vector3;
	function max(v:Vector3Like) : Vector3;
	function clamp(min:Vector3Like, max:Vector3Like) : Vector3;
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
	function dot(v:Vector3Like) : Float;
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
	function normalize() : Vector3;
	/**
	 * Normalizes this vector and multiplies it by l.
	 */
	function setLength(l:Float) : Vector3;
	function lerp(v:Vector3Like, alpha:Float) : Vector3;
	function lerpVectors(v1:Vector3Like, v2:Vector3Like, alpha:Float) : Vector3;
	/**
	 * Sets this vector to cross product of itself and v.
	 */
	function cross(a:Vector3Like) : Vector3;
	/**
	 * Sets this vector to cross product of a and b.
	 */
	function crossVectors(a:Vector3Like, b:Vector3Like) : Vector3;
	function projectOnVector(v:Vector3) : Vector3;
	function projectOnPlane(planeNormal:Vector3) : Vector3;
	function reflect(vector:Vector3Like) : Vector3;
	function angleTo(v:Vector3) : Float;
	/**
	 * Computes distance of this vector to v.
	 */
	function distanceTo(v:Vector3Like) : Float;
	/**
	 * Computes squared distance of this vector to v.
	 */
	function distanceToSquared(v:Vector3Like) : Float;
	/**
	 * Computes the Manhattan length (distance) from this vector to the given vector v
	 * 
	 * see {@link http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry}
	 */
	function manhattanDistanceTo(v:Vector3Like) : Float;
	function setFromSpherical(s:Spherical) : Vector3;
	function setFromSphericalCoords(r:Float, phi:Float, theta:Float) : Vector3;
	function setFromCylindrical(s:Cylindrical) : Vector3;
	function setFromCylindricalCoords(radius:Float, theta:Float, y:Float) : Vector3;
	function setFromMatrixPosition(m:Matrix4) : Vector3;
	function setFromMatrixScale(m:Matrix4) : Vector3;
	function setFromMatrixColumn(matrix:Matrix4, index:Int) : Vector3;
	function setFromMatrix3Column(matrix:Matrix3, index:Int) : Vector3;
	/**
	 * Sets this vector's {@link x}, {@link y} and {@link z} components from the x, y, and z components of the specified {@link Euler Euler Angle}.
	 */
	function setFromEuler(e:Euler) : Vector3;
	/**
	 * Sets this vector's {@link x}, {@link y} and {@link z} components from the r, g, and b components of the specified
	 * {@link Color | color}.
	 */
	function setFromColor(color:RGB) : Vector3;
	/**
	 * Checks for strict equality of this vector and v.
	 */
	function equals(v:Vector3Like) : Bool;
	/**
	 * Sets this vector's x, y and z value from the provided array or array-like.
	 */
	function fromArray(array:haxe.extern.EitherType<Array<Float>, ArrayLike<Float>>, ?offset:Float) : Vector3;
	/**
	 * Returns an array [x, y, z], or copies x, y and z into the provided array.
	 * @return The created or provided array.
	 * Copies x, y and z into the provided array-like.
	 * @return The provided array-like.
	 */
    overload function toArray(?array:Array<Float>, ?offset:Float) : Array<Float>;
	/**
	 * Returns an array [x, y, z], or copies x, y and z into the provided array.
	 * @return The created or provided array.
	 * Copies x, y and z into the provided array-like.
	 * @return The provided array-like.
	 */
	overload function toArray(?array:Vector3Tuple, ?offset:Int) : Vector3Tuple;
	/**
	 * Returns an array [x, y, z], or copies x, y and z into the provided array.
	 * @return The created or provided array.
	 * Copies x, y and z into the provided array-like.
	 * @return The provided array-like.
	 */
    overload function toArray(array:ArrayLike<Float>, ?offset:Float) : ArrayLike<Float>;
	function fromBufferAttribute(attribute:haxe.extern.EitherType<BufferAttribute, InterleavedBufferAttribute>, index:Int) : Vector3;
	/**
	 * Sets this vector's x, y and z from Math.random
	 */
	function random() : Vector3;
	function randomDirection() : Vector3;
	
    //function [Symbol.iterator]() : Iterator<Float>;
}