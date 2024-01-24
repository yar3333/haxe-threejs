package js.three;

import js.lib.*;

@:native("THREE.HemisphereLight")
extern class HemisphereLight extends Light
{
	var skyColor : Color;
	var groundColor : Color;
	//var intensity : Float;

	@:overload(function(?skyColor:haxe.extern.EitherType<Color,haxe.extern.EitherType<String,Float>>,?groundColor:haxe.extern.EitherType<Color,haxe.extern.EitherType<String,Float>>,?intensity:Float):Void{})
	function new() : Void;
}