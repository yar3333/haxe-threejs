package js.three;

import js.html.*;

@:native("THREE.KeyframeTrack")
extern class KeyframeTrack
{
	var name : String;
	var times : Array<Dynamic>;
	var values : Array<Dynamic>;
	var ValueTypeName : String;
	var TimeBufferType : Float32Array;
	var ValueBufferType : Float32Array;
	var DefaultInterpolation : InterpolationModes;

	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, interpolation:InterpolationModes) : Void;
	function InterpolantFactoryMethodDiscrete(result:Dynamic) : DiscreteInterpolant;
	function InterpolantFactoryMethodLinear(result:Dynamic) : LinearInterpolant;
	function InterpolantFactoryMethodSmooth(result:Dynamic) : CubicInterpolant;
	function setInterpolation(interpolation:InterpolationModes) : Void;
	function getInterpolation() : InterpolationModes;
	function getValuesize() : Float;
	function shift(timeOffset:Float) : KeyframeTrack;
	function scale(timeScale:Float) : KeyframeTrack;
	function trim(startTime:Float, endTime:Float) : KeyframeTrack;
	function validate() : Bool;
	function optimize() : KeyframeTrack;
	static function parse(json:Dynamic) : KeyframeTrack;
	static function toJSON(track:KeyframeTrack) : Dynamic;
}