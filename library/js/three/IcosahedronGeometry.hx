package js.three;

import js.lib.*;

@:native("THREE.IcosahedronGeometry")
extern class IcosahedronGeometry extends PolyhedronGeometry
{
	@:overload(function(?radius:Float,?detail:Float):Void{})
	function new() : Void;
}