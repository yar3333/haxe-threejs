package js.three;

import js.lib.*;

@:native("THREE.NumberKeyframeTrack")
extern class NumberKeyframeTrack extends KeyframeTrack
{
	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, interpolation:InterpolationModes) : Void;
}