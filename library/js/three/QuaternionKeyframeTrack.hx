package js.three;

import js.lib.*;
import js.three.Constants.InterpolationModes;

@:native("THREE.QuaternionKeyframeTrack")
extern class QuaternionKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'quaternion'
	 */
	//var ValueTypeName : String;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Float>, ?interpolation:InterpolationModes) : Void;
}