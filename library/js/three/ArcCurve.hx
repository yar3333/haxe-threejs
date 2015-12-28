package js.three;

import js.html.*;

// Extras / Curves /////////////////////////////////////////////////////////////////////
@:native("THREE.ArcCurve")
extern class ArcCurve extends EllipseCurve
{
	function new(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool) : Void;
}