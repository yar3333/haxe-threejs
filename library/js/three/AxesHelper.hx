package js.three;

import js.lib.*;

@:native("THREE.AxesHelper")
extern class AxesHelper extends LineSegments
{
	@:overload(function(?size:Float):Void{})
	function new() : Void;
}