package js.three;

import js.html.*;

@:native("THREE.GridHelper")
extern class GridHelper extends LineSegments
{
	function new(size:Float, divisions:Int, ?color1:haxe.extern.EitherType<Color, Float>, ?color2:haxe.extern.EitherType<Color, Float>) : Void;
	/**
	 * @deprecated
	 */
	function setColors(color1:haxe.extern.EitherType<Color, Float>, color2:haxe.extern.EitherType<Color, Float>) : Void;
}