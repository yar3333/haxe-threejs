package js.three;

import js.html.*;

@:native("THREE.HemisphereLight")
extern class HemisphereLight extends Light
{
	var groundColor : Color;
	var intensity : Float;

	function new(?skyColorHex:haxe.extern.EitherType<Float, String>, ?groundColorHex:haxe.extern.EitherType<Float, String>, ?intensity:Float) : Void;
}