package js.three;

import js.lib.*;

@:native("THREE.ColorKeyframeTrack")
extern class ColorKeyframeTrack extends KeyframeTrack
{
	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, interpolation:InterpolationModes) : Void;
}