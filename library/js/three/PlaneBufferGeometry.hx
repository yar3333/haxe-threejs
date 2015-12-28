package js.three;

import js.html.*;

@:native("THREE.PlaneBufferGeometry")
extern class PlaneBufferGeometry extends BufferGeometry
{
	function new(width:Float, height:Float, ?widthSegments:Float, ?heightSegments:Int) : Void;

	var parameters :
	{
		width: Float,
		height: Float,
		widthSegments: Float,
		heightSegments: Int
	};

	@:overload(function():PlaneBufferGeometry{})
	override function clone() : BufferGeometry;
}