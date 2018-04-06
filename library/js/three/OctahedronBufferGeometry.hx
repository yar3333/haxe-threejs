package js.three;

import js.html.*;

@:native("THREE.OctahedronBufferGeometry")
extern class OctahedronBufferGeometry extends PolyhedronBufferGeometry
{
	@:overload(function(?radius:Float,?detail:Float):Void{})
	function new() : Void;
}