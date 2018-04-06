package js.three;

import js.html.*;

@:native("THREE.TetrahedronBufferGeometry")
extern class TetrahedronBufferGeometry extends PolyhedronBufferGeometry
{
	@:overload(function(?radius:Float,?detail:Float):Void{})
	function new() : Void;
}