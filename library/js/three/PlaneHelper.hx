package js.three;

import js.lib.*;

@:native("THREE.PlaneHelper")
extern class PlaneHelper extends LineSegments
{
	var plane : Plane;
	var size : Float;

	@:overload(function(plane:Plane,?size:Float,?hex:Int):Void{})
	function new() : Void;
	override function updateMatrixWorld(force:Bool) : Void;
}