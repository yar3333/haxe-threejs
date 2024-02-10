package js.three.math;

import js.three.core.BufferAttribute;
import js.three.core.InterleavedBufferAttribute;

@:native("THREE.Triangle")
extern class Triangle
{
	/**
	 * @default new THREE.Vector3()
	 */
	var a : Vector3;
	/**
	 * @default new THREE.Vector3()
	 */
	var b : Vector3;
	/**
	 * @default new THREE.Vector3()
	 */
	var c : Vector3;

	function new(?a:Vector3, ?b:Vector3, ?c:Vector3) : Void;
	function set(a:Vector3, b:Vector3, c:Vector3) : Triangle;
	function setFromPointsAndIndices(points:Array<Vector3>, i0:Float, i1:Float, i2:Float) : Triangle;
	function setFromAttributeAndIndices(attribute:haxe.extern.EitherType<BufferAttribute, InterleavedBufferAttribute>, i0:Float, i1:Float, i2:Float) : Triangle;
	function clone() : Triangle;
	function copy(triangle:Triangle) : Triangle;
	function getArea() : Float;
	function getMidpoint(target:Vector3) : Vector3;
	function getNormal(target:Vector3) : Vector3;
	function getPlane(target:Plane) : Plane;
	function getBarycoord(point:Vector3, target:Vector3) : Vector3;
	overload function getInterpolation(point:Vector3, v1:Vector2, v2:Vector2, v3:Vector2, target:Vector2) : Vector2;
	overload function getInterpolation(point:Vector3, v1:Vector3, v2:Vector3, v3:Vector3, target:Vector3) : Vector3;
	overload function getInterpolation(point:Vector3, v1:Vector4, v2:Vector4, v3:Vector4, target:Vector4) : Vector4;
	function containsPoint(point:Vector3) : Bool;
	function intersectsBox(box:Box3) : Bool;
	function isFrontFacing(direction:Vector3) : Bool;
	function closestPointToPoint(point:Vector3, target:Vector3) : Vector3;
	function equals(triangle:Triangle) : Bool;
	static function getNormal(a:Vector3, b:Vector3, c:Vector3, target:Vector3) : Vector3;
	static function getBarycoord(point:Vector3, a:Vector3, b:Vector3, c:Vector3, target:Vector3) : Vector3;
	static function containsPoint(point:Vector3, a:Vector3, b:Vector3, c:Vector3) : Bool;
	overload static function getInterpolation(point:Vector3, p1:Vector3, p2:Vector3, p3:Vector3, v1:Vector2, v2:Vector2, v3:Vector2, target:Vector2) : Vector2;
	overload static function getInterpolation(point:Vector3, p1:Vector3, p2:Vector3, p3:Vector3, v1:Vector3, v2:Vector3, v3:Vector3, target:Vector3) : Vector3;
	overload static function getInterpolation(point:Vector3, p1:Vector3, p2:Vector3, p3:Vector3, v1:Vector4, v2:Vector4, v3:Vector4, target:Vector4) : Vector4;
	static function isFrontFacing(a:Vector3, b:Vector3, c:Vector3, direction:Vector3) : Bool;
}