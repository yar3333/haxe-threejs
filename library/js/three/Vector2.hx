package js.three;

import js.html.*;

/**
 * 2D vector.
 * 
 * ( class Vector2 implements Vector<Vector2> )
 */
@:native("THREE.Vector2")
extern class Vector2
	implements Vector
{
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;

	/**
	 * 2D vector.
	 * 
	 * ( class Vector2 implements Vector<Vector2> )
	 */
	function new(?x:Float, ?y:Float) : Void;
	/**
	 * Sets value of this vector.
	 */
	function set(x:Float, y:Float) : Vector2;
	/**
	 * Sets the x and y values of this vector both equal to scalar.
	 */
	function setScalar(scalar:Float) : Vector2;
	/**
	 * Sets X component of this vector.
	 */
	function setX(x:Float) : Vector2;
	/**
	 * Sets Y component of this vector.
	 */
	function setY(y:Float) : Vector2;
	/**
	 * Sets a component of this vector.
	 */
	function setComponent(index:Int, value:Float) : Void;
	/**
	 * Gets a component of this vector.
	 */
	function getComponent(index:Int) : Float;
	/**
	 * Clones this vector.
	 */
	@:overload(function():Vector2{})
	function clone() : Vector;
	/**
	 * Copies value of v to this vector.
	 */
	@:overload(function(v:Vector2):Vector2{})
	function copy(v:Vector) : Vector;
	/**
	 * Adds v to this vector.
	 */
	@:overload(function(v:Vector2):Vector2{})
	function add(v:Vector) : Vector;
	/**
	 * Adds the scalar value s to this vector's x and y values.
	 */
	function addScalar(s:Float) : Vector2;
	/**
	 * Sets this vector to a + b.
	 */
	@:overload(function(a:Vector2,b:Vector2):Vector2{})
	function addVectors(a:Vector, b:Vector) : Vector;
	/**
	 * Adds the multiple of v and s to this vector.
	 */
	function addScaledVector(v:Vector2, s:Float) : Vector2;
	/**
	 * Subtracts v from this vector.
	 */
	@:overload(function(v:Vector2):Vector2{})
	function sub(v:Vector) : Vector;
	/**
	 * Subtracts s from this vector's x and y components.
	 */
	function subScalar(s:Float) : Vector2;
	/**
	 * Sets this vector to a - b.
	 */
	@:overload(function(a:Vector2,b:Vector2):Vector2{})
	function subVectors(a:Vector, b:Vector) : Vector;
	/**
	 * Multiplies this vector by v.
	 */
	function multiply(v:Vector2) : Vector2;
	/**
	 * Multiplies this vector by scalar s.
	 */
	@:overload(function(scalar:Float):Vector2{})
	function multiplyScalar(s:Float) : Vector;
	/**
	 * Divides this vector by v.
	 */
	function divide(v:Vector2) : Vector2;
	/**
	 * Divides this vector by scalar s.
	 * Set vector to ( 0, 0 ) if s == 0.
	 */
	@:overload(function(s:Float):Vector2{})
	function divideScalar(s:Float) : Vector;
	/**
	 * Multiplies this vector (with an implicit 1 as the 3rd component) by m.
	 */
	function applyMatrix3(m:Matrix3) : Vector2;
	/**
	 * If this vector's x or y value is greater than v's x or y value, replace that value with the corresponding min value.
	 */
	function min(v:Vector2) : Vector2;
	/**
	 * If this vector's x or y value is less than v's x or y value, replace that value with the corresponding max value.
	 */
	function max(v:Vector2) : Vector2;
	/**
	 * If this vector's x or y value is greater than the max vector's x or y value, it is replaced by the corresponding value.
	 * If this vector's x or y value is less than the min vector's x or y value, it is replaced by the corresponding value.
	 */
	function clamp(min:Vector2, max:Vector2) : Vector2;
	/**
	 * If this vector's x or y values are greater than the max value, they are replaced by the max value.
	 * If this vector's x or y values are less than the min value, they are replaced by the min value.
	 */
	function clampScalar(min:Float, max:Float) : Vector2;
	/**
	 * If this vector's length is greater than the max value, it is replaced by the max value.
	 * If this vector's length is less than the min value, it is replaced by the min value.
	 */
	function clampLength(min:Float, max:Float) : Vector2;
	/**
	 * The components of the vector are rounded down to the nearest integer value.
	 */
	function floor() : Vector2;
	/**
	 * The x and y components of the vector are rounded up to the nearest integer value.
	 */
	function ceil() : Vector2;
	/**
	 * The components of the vector are rounded to the nearest integer value.
	 */
	function round() : Vector2;
	/**
	 * The components of the vector are rounded towards zero (up if negative, down if positive) to an integer value.
	 */
	function roundToZero() : Vector2;
	/**
	 * Inverts this vector.
	 */
	@:overload(function():Vector2{})
	function negate() : Vector;
	/**
	 * Computes dot product of this vector and v.
	 */
	@:overload(function(v:Vector2):Float{})
	function dot(v:Vector) : Float;
	/**
	 * Computes squared length of this vector.
	 */
	function lengthSq() : Float;
	/**
	 * Computes length of this vector.
	 */
	function length() : Float;
	/**
	 * @deprecated Use {@link Vector2#manhattanLength .manhattanLength()} instead.
	 */
	function lengthManhattan() : Float;
	/**
	 * Normalizes this vector.
	 */
	@:overload(function():Vector2{})
	function normalize() : Vector;
	/**
	 * computes the angle in radians with respect to the positive x-axis
	 */
	function angle() : Float;
	/**
	 * Computes distance of this vector to v.
	 */
	@:overload(function(v:Vector2):Float{})
	function distanceTo(v:Vector) : Float;
	/**
	 * Computes squared distance of this vector to v.
	 */
	@:overload(function(v:Vector2):Float{})
	function distanceToSquared(v:Vector) : Float;
	/**
	 * @deprecated Use {@link Vector2#manhattanDistanceTo .manhattanDistanceTo()} instead.
	 */
	function distanceToManhattan(v:Vector2) : Float;
	/**
	 * Normalizes this vector and multiplies it by l.
	 */
	@:overload(function(length:Float):Vector2{})
	function setLength(l:Float) : Vector;
	/**
	 * Linearly interpolates between this vector and v, where alpha is the distance along the line - alpha = 0 will be this vector, and alpha = 1 will be v.
	 */
	@:overload(function(v:Vector2,alpha:Float):Vector2{})
	function lerp(v:Vector, alpha:Float) : Vector;
	/**
	 * Sets this vector to be the vector linearly interpolated between v1 and v2 where alpha is the distance along the line connecting the two vectors - alpha = 0 will be v1, and alpha = 1 will be v2.
	 */
	function lerpVectors(v1:Vector2, v2:Vector2, alpha:Float) : Vector2;
	/**
	 * Checks for strict equality of this vector and v.
	 */
	@:overload(function(v:Vector2):Bool{})
	function equals(v:Vector) : Bool;
	/**
	 * Sets this vector's x value to be array[offset] and y value to be array[offset + 1].
	 */
	function fromArray(array:Array<Float>, ?offset:Float) : Vector2;
	/**
	 * Returns an array [x, y], or copies x and y into the provided array.
	 */
	function toArray(?array:Array<Float>, ?offset:Float) : Array<Float>;
	/**
	 * Sets this vector's x and y values from the attribute.
	 */
	function fromBufferAttribute(attribute:BufferAttribute, index:Int) : Vector2;
	/**
	 * Rotates the vector around center by angle radians.
	 */
	function rotateAround(center:Vector2, angle:Float) : Vector2;
	/**
	 * Computes the Manhattan length of this vector.
	 * 
	 * @return {number}
	 * 
	 * @see {@link http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry}
	 */
	function manhattanLength() : Float;
	/**
	 * Computes the Manhattan length (distance) from this vector to the given vector v
	 * 
	 * @return {number}
	 * 
	 * @see {@link http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry}
	 */
	function manhattanDistanceTo(v:Vector2) : Float;
}