package js.three;

import js.html.*;

@:native("THREE.LatheGeometry")
extern class LatheGeometry extends Geometry
{
	function new(points:Array<Vector3>, ?segments:Int, ?phiStart:Float, ?phiLength:Float) : Void;

	var parameters :
	{
		points: Array<Vector3>,
		segments: Int,
		phiStart: Float,
		phiLength: Float
	}
}