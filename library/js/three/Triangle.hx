package js.three;

import js.html.*;

@:native("THREE.Triangle")
extern class Triangle
{
	var a : Vector3;
	var b : Vector3;
	var c : Vector3;

	function new(?a:Vector3, ?b:Vector3, ?c:Vector3) : Void;
	function set(a:Vector3, b:Vector3, c:Vector3) : Triangle;
	function setFromPointsAndIndices(points:Array<Vector3>, i0:Float, i1:Float, i2:Float) : Triangle;
	function clone() : Triangle;
	function copy(triangle:Triangle) : Triangle;
	function getArea() : Float;
	function getMidpoint(target:Vector3) : Vector3;
	function getNormal(target:Vector3) : Vector3;
	function getPlane(target:Vector3) : Plane;
	function getBarycoord(point:Vector3, target:Vector3) : Vector3;
	function containsPoint(point:Vector3) : Bool;
	function closestPointToPoint(point:Vector3, target:Vector3) : Vector3;
	function equals(triangle:Triangle) : Bool;
	static function getNormal(a:Vector3, b:Vector3, c:Vector3, target:Vector3) : Vector3;
	static function getBarycoord(point:Vector3, a:Vector3, b:Vector3, c:Vector3, target:Vector3) : Vector3;
	static function containsPoint(point:Vector3, a:Vector3, b:Vector3, c:Vector3) : Bool;
}