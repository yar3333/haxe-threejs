package js.three.animation.tracks;

import js.three.Constants.InterpolationModes;

@:jsRequire("three")
@:native("THREE.QuaternionKeyframeTrack")
extern class QuaternionKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'quaternion'
	 */
	//var ValueTypeName : String;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Float>, ?interpolation:InterpolationModes) : Void;
}