package js.three;

import js.html.*;

@:native("THREE.QuadraticBezierCurve3")
extern class QuadraticBezierCurve3 extends Curve<Vector3>
{
	var v0 : Vector3;
	var v1 : Vector3;
	var v2 : Vector3;

	function new(v0:Vector3, v1:Vector3, v2:Vector3) : Void;
	override function getPoint(t:Float) : Vector3;
}