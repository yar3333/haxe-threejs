package js.three;

import js.html.*;

@:native("THREE.DodecahedronGeometry")
extern class DodecahedronGeometry extends Geometry
{
	function new(radius:Float, detail:Float) : Void;

	var parameters :
	{
		radius: Float,
		detail: Float
	};

	@:overload(function():DodecahedronGeometry{})
	override function clone() : Geometry;
}