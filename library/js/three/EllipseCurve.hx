package js.three;

import js.html.*;

@:native("THREE.EllipseCurve")
extern class EllipseCurve extends Curve<Vector2>
{
	function new(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool, aRotation:Float) : Void;

	var aX : Float;
	var aY : Float;
	var xRadius : Float;
	var yRadius : Float;
	var aStartAngle : Float;
	var aEndAngle : Float;
	var aClockwise : Bool;
	var aRotation : Float;
}