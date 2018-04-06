package js.three;

import js.html.*;

@:native("THREE.PolyhedronGeometry")
extern class PolyhedronGeometry extends Geometry
{
	var parameters : { var vertices : Array<Float>; var indices : Array<Float>; var radius : Float; var detail : Float; };
	//var boundingSphere : Sphere;

	@:overload(function(vertices:Array<Float>,indices:Array<Float>,?radius:Float,?detail:Float):Void{})
	function new() : Void;
}