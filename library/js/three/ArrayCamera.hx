package js.three;

import js.html.*;

@:native("THREE.ArrayCamera")
extern class ArrayCamera extends PerspectiveCamera
{
	var cameras : Array<PerspectiveCamera>;
	var isArrayCamera : Bool;

	@:overload(function(?cameras:Array<PerspectiveCamera>):Void{})
	function new() : Void;
}