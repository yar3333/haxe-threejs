package js.three;

import js.lib.*;

@:native("THREE.VectorKeyframeTrack")
extern class VectorKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'vector'
	 */
	//var ValueTypeName : String;

	@:overload(function(name:String,times:ArrayLike<Float>,values:ArrayLike<Float>,?interpolation:InterpolationModes):Void{})
	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Dynamic>, ?interpolation:InterpolationModes) : Void;
}