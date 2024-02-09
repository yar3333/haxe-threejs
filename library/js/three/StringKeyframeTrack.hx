package js.three;

import js.lib.*;

@:native("THREE.StringKeyframeTrack")
extern class StringKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'string'
	 */
	//var ValueTypeName : String;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Dynamic>, ?interpolation:InterpolationModes) : Void;
}