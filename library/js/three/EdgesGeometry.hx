package js.three;

import js.lib.*;

@:native("THREE.EdgesGeometry")
extern class EdgesGeometry extends BufferGeometry
{
	@:overload(function(geometry:BufferGeometry,thresholdAngle:Float):Void{})
	function new() : Void;
}