package js.three;

import js.html.*;

@:native("THREE.QuaternionKeyframeTrack")
extern class QuaternionKeyframeTrack extends KeyframeTrack
{
	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, interpolation:InterpolationModes) : Void;
}