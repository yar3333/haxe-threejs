package js.three;

import js.html.*;

@:native("THREE.EdgesGeometry")
extern class EdgesGeometry extends BufferGeometry
{
	function new(geometry:BufferGeometry, thresholdAngle:Float) : Void;

	@:overload(function():EdgesGeometry{})
	override function clone() : BufferGeometry;
}