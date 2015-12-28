package js.three;

import js.html.*;

@:native("THREE.PlaneGeometry")
extern class PlaneGeometry extends Geometry
{
	function new(width:Float, height:Float, ?widthSegments:Float, ?heightSegments:Int) : Void;

	var parameters :
	{
		width: Float,
		height: Float,
		widthSegments: Float,
		heightSegments: Int
	};

	@:overload(function():PlaneGeometry{})
	override function clone() : Geometry;
}