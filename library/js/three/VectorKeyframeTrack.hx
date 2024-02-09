package js.three;

import js.lib.*;
import js.three.Constants;

@:native("THREE.VectorKeyframeTrack")
extern class VectorKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'vector'
	 */
	//var ValueTypeName : String;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Float>, ?interpolation:InterpolationModes) : Void;
}