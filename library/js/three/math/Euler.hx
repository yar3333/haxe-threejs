package js.three.math;

enum abstract EulerOrder(String)
{
    var XYZ = "XYZ";
    var YXZ = "YXZ";
    var ZXY = "ZXY";
    var ZYX = "ZYX";
    var YZX = "YZX";
    var XZY = "XZY";
}

@:native("THREE.Euler")
extern class Euler implements ArrayAccess<Float>
{
	/**
	 * @default 0
	 */
	var x : Float;
	/**
	 * @default 0
	 */
	var y : Float;
	/**
	 * @default 0
	 */
	var z : Float;
	/**
	 * @default THREE.Euler.DEFAULT_ORDER
	 */
	var order : EulerOrder;
	var isEuler(default, null) : Bool;
	var _onChangeCallback : Void->Void;
	var Euler : Dynamic;
	static var DEFAULT_ORDER : String; // "XYZ"

	function new(?x:Float, ?y:Float, ?z:Float, ?order:EulerOrder) : Void;
	function set(x:Float, y:Float, z:Float, ?order:EulerOrder) : Euler;
	function clone() : Euler;
	function copy(euler:Euler) : Euler;
	function setFromRotationMatrix(m:Matrix4, ?order:EulerOrder, ?update:Bool) : Euler;
	function setFromQuaternion(q:Quaternion, ?order:EulerOrder, ?update:Bool) : Euler;
	function setFromVector3(v:Vector3, ?order:EulerOrder) : Euler;
	function reorder(newOrder:EulerOrder) : Euler;
	function equals(euler:Euler) : Bool;
	
    /**
        [number, number, number, EulerOrder?,, any:Dynamic
    **/
    function fromArray(xyzo:Array<Dynamic>) : Euler;
	
    function toArray(?array:Array<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, {}>>>, ?offset:Float) : Array<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, {}>>>;
	
    function _onChange(callback:Void->Void) : Euler;
	
    //function [Symbol.iterator]() : Generator<haxe.extern.EitherType<String, Float>, Void>;
}