package js.three;

import js.html.*;

@:native("THREE.CircleBufferGeometry")
extern class CircleBufferGeometry extends Geometry
{
	function new(?radius:Float, ?segments:Int, ?thetaStart:Float, ?thetaLength:Float) : Void;

	var parameters :
	{
		radius: Float,
		segments: Int,
		thetaStart: Float,
		thetaLength: Float
	};

	@:overload(function():CircleBufferGeometry{})
	override function clone() : Geometry;
}