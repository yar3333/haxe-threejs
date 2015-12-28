package js.three;

import js.html.*;

@:native("THREE.TorusGeometry")
extern class TorusGeometry extends Geometry
{
	function new(?radius:Float, ?tube:Float, ?radialSegments:Int, ?tubularSegments:Float, ?arc:Float) : Void;

	var parameters :
	{
		radius: Float,
		tube: Float,
		radialSegments: Int,
		tubularSegments: Float,
		arc: Float
	};

	@:overload(function():TorusGeometry{})
	override function clone() : Geometry;
}