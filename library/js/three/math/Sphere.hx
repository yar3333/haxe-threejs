package js.three.math;

import js.lib.*;

@:native("THREE.Sphere")
extern class Sphere
{
	/**
	 * Read-only flag to check if a given object is of type {@link Sphere}.
	 */
	var isSphere(default, null) : Bool;
	/**
	 * @default new Vector3()
	 */
	var center : Vector3;
	/**
	 * @default 1
	 */
	var radius : Float;

	function new(?center:Vector3, ?radius:Float) : Void;
	function set(center:Vector3, radius:Float) : Sphere;
	function setFromPoints(points:Array<Vector3>, ?optionalCenter:Vector3) : Sphere;
	function clone() : Sphere;
	function copy(sphere:Sphere) : Sphere;
	function expandByPoint(point:Vector3) : Sphere;
	function isEmpty() : Bool;
	function makeEmpty() : Sphere;
	function containsPoint(point:Vector3) : Bool;
	function distanceToPoint(point:Vector3) : Float;
	function intersectsSphere(sphere:Sphere) : Bool;
	function intersectsBox(box:Box3) : Bool;
	function intersectsPlane(plane:Plane) : Bool;
	function clampPoint(point:Vector3, target:Vector3) : Vector3;
	function getBoundingBox(target:Box3) : Box3;
	function applyMatrix4(matrix:Matrix4) : Sphere;
	function translate(offset:Vector3) : Sphere;
	function equals(sphere:Sphere) : Bool;
	function union(sphere:Sphere) : Sphere;
	/**
	 * @deprecated Use {@link Sphere#isEmpty .isEmpty()} instead.
	 */
	function empty() : Dynamic;
}