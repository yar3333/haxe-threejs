package js.three;

import js.html.*;

@:native("THREE.LatheGeometry")
extern class LatheGeometry extends Geometry
{
	var parameters : { var points : Array<Vector2>; var segments : Float; var phiStart : Float; var phiLength : Float; };

	@:overload(function(points:Array<Vector2>,?segments:Int,?phiStart:Float,?phiLength:Float):Void{})
	function new() : Void;
}