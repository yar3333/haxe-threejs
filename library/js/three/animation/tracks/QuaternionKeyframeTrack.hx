package js.three.animation.tracks;

@:jsRequire("three", "QuaternionKeyframeTrack")
@:native("THREE.QuaternionKeyframeTrack")
extern class QuaternionKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'quaternion'
	 */
	//var ValueTypeName : String;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Float>, ?interpolation:InterpolationModes) : Void;
}