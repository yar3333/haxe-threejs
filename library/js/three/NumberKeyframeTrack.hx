package js.three;

import js.html.*;

@:native("THREE.NumberKeyframeTrack")
extern class NumberKeyframeTrack extends KeyframeTrack
{
	override function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, interpolation:InterpolationModes) : Void;
}