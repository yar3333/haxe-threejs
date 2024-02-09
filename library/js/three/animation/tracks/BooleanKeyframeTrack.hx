package js.three;

import js.lib.*;

@:native("THREE.BooleanKeyframeTrack")
extern class BooleanKeyframeTrack extends KeyframeTrack
{
	/**
	 * @default 'bool'
	 */
	//var ValueTypeName : String;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Dynamic>) : Void;
}