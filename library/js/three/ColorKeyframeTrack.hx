package js.three;

import js.three.Constants.InterpolationModes;
import js.lib.*;

@:native("THREE.ColorKeyframeTrack")
extern class ColorKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'color'
	 */
	//var ValueTypeName : String;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Float>, ?interpolation:InterpolationModes) : Void;
}