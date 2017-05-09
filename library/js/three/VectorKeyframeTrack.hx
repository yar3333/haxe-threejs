package js.three;

import js.html.*;

@:native("THREE.VectorKeyframeTrack")
extern class VectorKeyframeTrack extends KeyframeTrack
{
	override function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, interpolation:InterpolationModes) : Void;
}