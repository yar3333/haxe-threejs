package js.three;

@:native("THREE.Vector4")
extern class Vector4
{
	var x : Float; // 0
	var y : Float; // 0
	var z : Float; // 0
	var w : Float; // 0
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
	function set(x:Float, y:Float, z:Float, w:Float) : Void;
	function setX(x:Float) : Vector4;
	function setY(y:Float) : Vector4;
	function setZ(z:Float) : Vector4;
	function setW(w:Float) : Vector4;
	function setComponent(index:Int, value:Float) : Void;
	function getComponent(index:Int) : Float;
	function copy(v:Vector4) : Vector4;
	function add(v:Vector4) : Vector4;
	function addScalar(s:Float) : Vector4;
	function addVectors(a:Vector4, b:Vector4) : Vector4;
	function sub(v:Vector4) : Vector4;
	function subVectors(a:Vector4, b:Vector4) : Vector4;
	function multiplyScalar(s:Float) : Vector4;
	function applyMatrix4(m:Matrix4) : Vector4;
	function divideScalar(s:Float) : Vector4;
	function setAxisAngleFromQuaternion(q:Quaternion) : Vector4;
	function setAxisAngleFromRotationMatrix(m:Matrix4) : Vector4;
	function min(v:Vector4) : Vector4;
	function max(v:Vector4) : Vector4;
	function clamp(min:Vector4, max:Vector4) : Vector4;
	function negate() : Vector4;
	function dot(v:Vector4) : Float;
	function lengthSq() : Float;
	function length() : Float;
	function lengthManhattan() : Float;
	function normalize() : Vector4;
	function setLength(l:Float) : Vector4;
	function lerp(v:Vector4, alpha:Float) : Vector4;
	function equals(v:Vector4) : Bool;
	function toArray() : Array<Float>;
	function clone() : Vector4;
}
