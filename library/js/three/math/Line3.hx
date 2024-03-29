package js.three.math;

@:jsRequire("three", "Line3")
@:native("THREE.Line3")
extern class Line3
{
	/**
	 * @default new THREE.Vector3()
	 */
	var start : Vector3;
	/**
	 * @default new THREE.Vector3()
	 */
	var end : Vector3;

	function new(?start:Vector3, ?end:Vector3) : Void;
	function set(?start:Vector3, ?end:Vector3) : Line3;
	function clone() : Line3;
	function copy(line:Line3) : Line3;
	function getCenter(target:Vector3) : Vector3;
	function delta(target:Vector3) : Vector3;
	function distanceSq() : Float;
	function distance() : Float;
	function at(t:Float, target:Vector3) : Vector3;
	function closestPointToPointParameter(point:Vector3, ?clampToLine:Bool) : Float;
	function closestPointToPoint(point:Vector3, clampToLine:Bool, target:Vector3) : Vector3;
	function applyMatrix4(matrix:Matrix4) : Line3;
	function equals(line:Line3) : Bool;
}