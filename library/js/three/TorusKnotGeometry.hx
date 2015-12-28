package js.three;

import js.html.*;

@:native("THREE.TorusKnotGeometry")
extern class TorusKnotGeometry extends Geometry
{
	function new(?radius:Float, ?tube:Float, ?radialSegments:Int, ?tubularSegments:Float, ?p:Float, ?q:Float, ?heightScale:Float) : Void;

	var parameters :
	{
		radius: Float,
		tube: Float,
		radialSegments: Int,
		tubularSegments: Float,
		p: Float,
		q: Float,
		heightScale: Float
	};

	@:overload(function():TorusKnotGeometry{})
	override function clone() : Geometry;
}