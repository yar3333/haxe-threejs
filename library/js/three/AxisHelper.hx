package js.three;

import js.html.*;

@:native("THREE.AxisHelper")
extern class AxisHelper extends LineSegments
{
	@:overload(function(?size:Float):Void{})
	override function new() : Void;
}