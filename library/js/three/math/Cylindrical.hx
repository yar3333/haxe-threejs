package js.three.math;

@:jsRequire("three")
@:native("THREE.Cylindrical")
extern class Cylindrical
{
	/**
	 * @default 1
	 */
	var radius : Float;
	/**
	 * @default 0
	 */
	var theta : Float;
	/**
	 * @default 0
	 */
	var y : Float;

	function new(?radius:Float, ?theta:Float, ?y:Float) : Void;
	function clone() : Cylindrical;
	function copy(other:Cylindrical) : Cylindrical;
	function set(radius:Float, theta:Float, y:Float) : Cylindrical;
	function setFromVector3(vec3:Vector3) : Cylindrical;
	function setFromCartesianCoords(x:Float, y:Float, z:Float) : Cylindrical;
}