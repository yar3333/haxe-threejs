package js.three.animation.tracks;

@:jsRequire("three", "NumberKeyframeTrack")
@:native("THREE.NumberKeyframeTrack")
extern class NumberKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'number'
	 */
	//var ValueTypeName : String;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Float>, ?interpolation:InterpolationModes) : Void;
}