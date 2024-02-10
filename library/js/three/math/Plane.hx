package js.three.math;

@:jsRequire("three")
@:native("THREE.Plane")
extern class Plane
{
	/**
	 * @default new THREE.Vector3( 1, 0, 0 )
	 */
	var normal : Vector3;
	/**
	 * @default 0
	 */
	var constant : Float;
	var isPlane(default, null) : Bool;

	function new(?normal:Vector3, ?constant:Float) : Void;
	function set(normal:Vector3, constant:Float) : Plane;
	function setComponents(x:Float, y:Float, z:Float, w:Float) : Plane;
	function setFromNormalAndCoplanarPoint(normal:Vector3, point:Vector3) : Plane;
	function setFromCoplanarPoints(a:Vector3, b:Vector3, c:Vector3) : Plane;
	function clone() : Plane;
	function copy(plane:Plane) : Plane;
	function normalize() : Plane;
	function negate() : Plane;
	function distanceToPoint(point:Vector3) : Float;
	function distanceToSphere(sphere:Sphere) : Float;
	function projectPoint(point:Vector3, target:Vector3) : Vector3;
	function intersectLine(line:Line3, target:Vector3) : Vector3;
	function intersectsLine(line:Line3) : Bool;
	function intersectsBox(box:Box3) : Bool;
	function intersectsSphere(sphere:Sphere) : Bool;
	function coplanarPoint(target:Vector3) : Vector3;
	function applyMatrix4(matrix:Matrix4, ?optionalNormalMatrix:Matrix3) : Plane;
	function translate(offset:Vector3) : Plane;
	function equals(plane:Plane) : Bool;
	/**
	 * @deprecated Use {@link Plane#intersectsLine .intersectsLine()} instead.
	 */
	function isIntersectionLine(l:Dynamic) : Dynamic;
}