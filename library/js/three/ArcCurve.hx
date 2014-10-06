package js.three;

@:native("THREE.ArcCurve")
extern class ArcCurve extends Curve
{
	function new(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool) : Void;
}
