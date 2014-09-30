package js.three;

@:native("THREE.Vector3")
extern class Vector3
{
	var x : Float; // 0
	var y : Float; // 0
	var z : Float; // 0
	function new(?x:Float, ?y:Float, ?z:Float) : Void;
	function set(x:Float, y:Float, z:Float) : Vector3;
	function setX(x:Float) : Vector3;
	function setY(y:Float) : Vector3;
	function setZ(z:Float) : Vector3;
	function setComponent(index:Int, value:Float) : Void;
	function getComponent(index:Int) : Float;
	function copy(v:Vector3) : Vector3;
	function add(v:Vector3) : Vector3;
	function addVectors(a:Vector3, b:Vector3) : Vector3;
	function addScalar(s:Float) : Vector3;
	function sub(v:Vector3) : Vector3;
	function subVectors(a:Vector3, b:Vector3) : Vector3;
	function multiply(v:Vector3) : Vector3;
	function multiplyScalar(s:Float) : Vector3;
	function multiplyVectors(a:Vector3, b:Vector3) : Vector3;
	function applyMatrix3(m:Matrix3) : Vector3;
	function applyMatrix4(m:Matrix4) : Vector3;
	function applyProjection(m:Matrix3) : Vector3;
	function applyQuaternion(q:Quaternion) : Vector3;
	function transformDirection(m:Matrix4) : Vector3;
	function divide(v:Vector3) : Vector3;
	function divideScalar(s:Float) : Vector3;
	function min(v:Vector3) : Vector3;
	function max(v:Vector3) : Vector3;
	function clamp(min:Vector3, max:Vector3) : Vector3;
	function negate() : Vector3;
	function dot(v:Vector3) : Float;
	function lengthSq() : Float;
	function length() : Float;
	function lengthManhattan() : Float;
	function normalize() : Vector3;
	function setLength(l:Float) : Vector3;
	function lerp(v:Vector3, alpha:Float) : Vector3;
	function cross(v:Vector3) : Vector3;
	function crossVectors(a:Vector3, b:Vector3) : Vector3;
	function angleTo(v:Vector3) : Float;
	function distanceTo(v:Vector3) : Float;
	function distanceToSquared(v:Vector3) : Float;
	function setEulerFromRotationMatrix(m:Matrix3, order:String) : Vector3;
	function setEulerFromQuaternion(q:Quaternion, order:String) : Vector3;
	function getPositionFromMatrix(m:Matrix4) : Vector3;
	function getScaleFromMatrix(m:Matrix4) : Vector3;
	function getColumnFromMatrix(index:Int, matrix:Matrix4) : Vector3;
	function equals(v:Vector3) : Bool;
	function toArray() : Array<Float>;
	function clone() : Vector3;
	function applyEuler(v:Vector3, eulerOrder:String) : Vector3;
	function applyAxisAngle(axis:Vector3, angle:Float) : Vector3;
	function projectOnVector(vector:Vector3) : Vector3;
	function projectOnPLane(planeNormal:Plane) : Vector3;
	function reflect(vector:Vector3) : Vector3;
}
