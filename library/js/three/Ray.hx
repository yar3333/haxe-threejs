package js.three;

import js.html.*;

@:native("THREE.Ray")
extern class Ray
{
	var origin : Vector3;
	var direction : Vector3;

	function new(?origin:Vector3, ?direction:Vector3) : Void;
	function set(origin:Vector3, direction:Vector3) : Ray;
	function clone() : Ray;
	function copy(ray:Ray) : Ray;
	function at(t:Float, target:Vector3) : Vector3;
	function lookAt(v:Vector3) : Vector3;
	function recast(t:Float) : Ray;
	function closestPointToPoint(point:Vector3, target:Vector3) : Vector3;
	function distanceToPoint(point:Vector3) : Float;
	function distanceSqToPoint(point:Vector3) : Float;
	function distanceSqToSegment(v0:Vector3, v1:Vector3, ?optionalPointOnRay:Vector3, ?optionalPointOnSegment:Vector3) : Float;
	function intersectSphere(sphere:Sphere, target:Vector3) : Vector3;
	function intersectsSphere(sphere:Sphere) : Bool;
	function distanceToPlane(plane:Plane) : Float;
	function intersectPlane(plane:Plane, target:Vector3) : Vector3;
	function intersectsPlane(plane:Plane) : Bool;
	function intersectBox(box:Box3, target:Vector3) : Vector3;
	function intersectsBox(box:Box3) : Bool;
	function intersectTriangle(a:Vector3, b:Vector3, c:Vector3, backfaceCulling:Bool, target:Vector3) : Vector3;
	function applyMatrix4(matrix4:Matrix4) : Ray;
	function equals(ray:Ray) : Bool;
	/**
	 * @deprecated Use {@link Ray#intersectsBox .intersectsBox()} instead.
	 */
	function isIntersectionBox(b:Dynamic) : Dynamic;
	/**
	 * @deprecated Use {@link Ray#intersectsPlane .intersectsPlane()} instead.
	 */
	function isIntersectionPlane(p:Dynamic) : Dynamic;
	/**
	 * @deprecated Use {@link Ray#intersectsSphere .intersectsSphere()} instead.
	 */
	function isIntersectionSphere(s:Dynamic) : Dynamic;
}