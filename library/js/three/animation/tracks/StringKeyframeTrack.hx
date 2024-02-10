package js.three.animation.tracks;

@:jsRequire("three", "StringKeyframeTrack")
@:native("THREE.StringKeyframeTrack")
extern class StringKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'string'
	 */
	//var ValueTypeName : String;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Dynamic>, ?interpolation:InterpolationModes) : Void;
}