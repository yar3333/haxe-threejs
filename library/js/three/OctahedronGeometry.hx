package js.three;

import js.lib.*;

@:native("THREE.OctahedronGeometry")
extern class OctahedronGeometry extends PolyhedronGeometry
{
	@:overload(function(?radius:Float,?detail:Float):Void{})
	function new() : Void;
}