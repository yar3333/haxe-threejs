package js.three;

import js.html.*;

@:native("THREE.HemisphereLight")
extern class HemisphereLight extends Light
{
	function new(?skyColorHex:Int, ?groundColorHex:Int, ?intensity:Float) : Void;

	var groundColor : Color;
	var intensity : Float;

	@:overload(function(?recursive:Bool):HemisphereLight{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(source:HemisphereLight):HemisphereLight{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;
}