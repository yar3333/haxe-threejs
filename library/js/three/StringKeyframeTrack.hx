package js.three;

import js.lib.*;

@:native("THREE.StringKeyframeTrack")
extern class StringKeyframeTrack extends KeyframeTrack
{
	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, interpolation:InterpolationModes) : Void;
}