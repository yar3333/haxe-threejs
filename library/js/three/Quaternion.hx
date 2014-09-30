package js.three;

@:native("THREE.Quaternion")
extern class Quaternion
{
	var x : Float; // 0
	var y : Float; // 0
	var z : Float; // 0
	var w : Float; // 1
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
	function set(x:Float, y:Float, z:Float, w:Float) : Quaternion; // this
	function copy(q:Quaternion) : Quaternion; // this
	// order = 'YXZ', 'ZXY', 'ZYX', 'YZX', 'XZY', default='XYZ'
	function setFromEuler(v:Vector3, ?order:String) : Quaternion; // this
	function setFromAxisAngle(axis:Vector3, angle:Float) : Quaternion; // this
	function setFromRotationMatrix(m:Matrix3) : Quaternion; // this
	function inverse() : Quaternion; // this
	function conjugate() : Quaternion; // this
	function lengthSq() : Float;
	function length() : Float;
	function normalize() : Quaternion; // this
	function multiply(q:Quaternion) : Quaternion; // this
	function multiplyQuaternion(a:Quaternion, b:Quaternion) : Quaternion; // this
	// multiplyVector3 is deprecated
	function slerp(qb:Quaternion, t:Float) : Quaternion; // this
	function equals(q:Quaternion) : Bool;
	function clone() : Quaternion;
	// "Same field name can't be use for both static and instance : slerp"
	// static function slerp(qa:Quaternion, qb:Quaternion, qm:Quaternion, t:Float) : Quaternion ; // qm
}
