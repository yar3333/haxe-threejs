package js.three;

import js.lib.*;

@:native("THREE.GridHelper")
extern class GridHelper extends LineSegments
{
	@:overload(function(size:Float,divisions:Int,?color1:haxe.extern.EitherType<Color,Float>,?color2:haxe.extern.EitherType<Color,Float>):Void{})
	function new() : Void;
	/**
	 * @deprecated Colors should be specified in the constructor.
	 */
	function setColors(?color1:haxe.extern.EitherType<Color, Float>, ?color2:haxe.extern.EitherType<Color, Float>) : Void;
}