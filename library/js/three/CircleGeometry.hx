package js.three;

import js.html.*;

@:native("THREE.CircleGeometry")
extern class CircleGeometry extends Geometry
{
	function new(?radius:Float, ?segments:Int, ?thetaStart:Float, ?thetaLength:Float) : Void;

	var parameters :
	{
		radius: Float,
		segments: Int,
		thetaStart: Float,
		thetaLength: Float
	};

	@:overload(function():CircleGeometry{})
	override function clone() : Geometry;
}