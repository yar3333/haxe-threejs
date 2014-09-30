package js.three;

@:native("THREE.Quaternion")
extern class Quaternion
{
	var x : Float; // 0
	var y : Float; // 0
	var z : Float; // 0
	var w : Float; // 1
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
	function set(x:Float, y:Float, z:Float, w:Float) : Quaternion;
	function copy(q:Quaternion) : Quaternion;
	// order = 'YXZ', 'ZXY', 'ZYX', 'YZX', 'XZY', default='XYZ'
	function setFromEuler(v:Vector3, ?order:String) : Quaternion;
	function setFromAxisAngle(axis:Vector3, angle:Float) : Quaternion;
	function setFromRotationMatrix(m:Matrix3) : Quaternion;
	function inverse() : Quaternion;
	function conjugate() : Quaternion;
	function lengthSq() : Float;
	function length() : Float;
	function normalize() : Quaternion;
	function multiply(q:Quaternion) : Quaternion;
	function multiplyQuaternion(a:Quaternion, b:Quaternion) : Quaternion;
	// multiplyVector3 is deprecated
	function slerp(qb:Quaternion, t:Float) : Quaternion;
	function equals(q:Quaternion) : Bool;
	function clone() : Quaternion;
	// "Same field name can't be use for both static and instance : slerp"
	// static function slerp(qa:Quaternion, qb:Quaternion, qm:Quaternion, t:Float) : Quaternion ; // qm
}
