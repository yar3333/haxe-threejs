package js.three.animation.tracks;

import js.lib.*;
import js.three.Constants;

@:native("THREE.NumberKeyframeTrack")
extern class NumberKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'number'
	 */
	//var ValueTypeName : String;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Float>, ?interpolation:InterpolationModes) : Void;
}