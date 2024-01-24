package js.three;

import js.lib.*;

@:native("THREE.TetrahedronGeometry")
extern class TetrahedronGeometry extends PolyhedronGeometry
{
	@:overload(function(?radius:Float,?detail:Float):Void{})
	function new() : Void;
}