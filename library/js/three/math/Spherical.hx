package js.three.math;

@:native("THREE.Spherical")
extern class Spherical
{
	/**
	 * @default 1
	 */
	var radius : Float;
	/**
	 * @default 0
	 */
	var phi : Float;
	/**
	 * @default 0
	 */
	var theta : Float;

	function new(?radius:Float, ?phi:Float, ?theta:Float) : Void;
	function set(radius:Float, phi:Float, theta:Float) : Spherical;
	function clone() : Spherical;
	function copy(other:Spherical) : Spherical;
	function makeSafe() : Spherical;
	function setFromVector3(v:Vector3) : Spherical;
	function setFromCartesianCoords(x:Float, y:Float, z:Float) : Spherical;
}