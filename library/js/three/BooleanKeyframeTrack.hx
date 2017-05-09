package js.three;

import js.html.*;

@:native("THREE.BooleanKeyframeTrack")
extern class BooleanKeyframeTrack extends KeyframeTrack
{
	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>) : Void;
}