package js.three;

import js.html.*;

@:native("THREE.SphereBufferGeometry")
extern class SphereBufferGeometry extends BufferGeometry
{
	function new(radius:Float, ?widthSegments:Float, ?heightSegments:Int, ?phiStart:Float, ?phiLength:Float, ?thetaStart:Float, ?thetaLength:Float) : Void;

	var parameters :
	{
		radius: Float,
		widthSegments: Float,
		heightSegments: Int,
		phiStart: Float,
		phiLength: Float,
		thetaStart: Float,
		thetaLength: Float
	};

	@:overload(function():SphereBufferGeometry{})
	override function clone() : BufferGeometry;
}