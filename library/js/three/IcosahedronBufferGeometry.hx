package js.three;

import js.lib.*;

@:native("THREE.IcosahedronBufferGeometry")
extern class IcosahedronBufferGeometry extends PolyhedronBufferGeometry
{
	@:overload(function(?radius:Float,?detail:Float):Void{})
	function new() : Void;
}