package js.three;

import js.lib.*;

@:native("THREE.DodecahedronBufferGeometry")
extern class DodecahedronBufferGeometry extends PolyhedronBufferGeometry
{
	@:overload(function(?radius:Float,?detail:Float):Void{})
	function new() : Void;
}