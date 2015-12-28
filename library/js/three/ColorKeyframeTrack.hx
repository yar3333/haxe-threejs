package js.three;

import js.html.*;

@:native("THREE.ColorKeyframeTrack")
extern class ColorKeyframeTrack extends KeyframeTrack
{
	function new(name:String, keys:Array<Dynamic>) : Void;

	var result : Dynamic;

	function setResult(value:Dynamic) : Void;
	function lerpValues(value0:Dynamic, value1:Dynamic, alpha:Float) : Dynamic;
	function compareValues(value0:Dynamic, value1:Dynamic) : Bool;
	function clone() : ColorKeyframeTrack;
	@:overload(function(json:Dynamic):ColorKeyframeTrack{})
	override function parse(json:Dynamic) : KeyframeTrack;
}