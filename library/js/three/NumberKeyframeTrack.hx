package js.three;

import js.lib.*;

@:native("THREE.NumberKeyframeTrack")
extern class NumberKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'number'
	 */
	//var ValueTypeName : String;

	@:overload(function(name:String,times:ArrayLike<Float>,values:ArrayLike<Float>,?interpolation:InterpolationModes):Void{})
	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Dynamic>, ?interpolation:InterpolationModes) : Void;
}