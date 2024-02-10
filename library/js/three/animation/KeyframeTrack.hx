package js.three.animation;

import js.lib.Float32Array;
import js.three.Constants;
import js.three.math.interpolants.DiscreteInterpolant;
import js.three.math.interpolants.LinearInterpolant;
import js.three.math.interpolants.CubicInterpolant;
import js.three.math.Interpolant;

@:native("THREE.KeyframeTrack")
extern class KeyframeTrack
{
	var name : String;
	var times : Float32Array;
	var values : Float32Array;
	var ValueTypeName : String;
	var TimeBufferType : Float32Array;
	var ValueBufferType : Float32Array;
	/**
	 * @default THREE.InterpolateLinear
	 */
	var DefaultInterpolation : InterpolationModes;

	function new(name:String, times:ArrayLike<Float>, values:ArrayLike<Dynamic>, ?interpolation:InterpolationModes) : Void;
	function InterpolantFactoryMethodDiscrete(result:Dynamic) : DiscreteInterpolant;
	function InterpolantFactoryMethodLinear(result:Dynamic) : LinearInterpolant;
	function InterpolantFactoryMethodSmooth(result:Dynamic) : CubicInterpolant;
	function setInterpolation(interpolation:InterpolationModes) : KeyframeTrack;
	function getInterpolation() : InterpolationModes;
	function createInterpolant() : Interpolant;
	function getValueSize() : Float;
	function shift(timeOffset:Float) : KeyframeTrack;
	function scale(timeScale:Float) : KeyframeTrack;
	function trim(startTime:Float, endTime:Float) : KeyframeTrack;
	function validate() : Bool;
	function optimize() : KeyframeTrack;
	function clone() : KeyframeTrack;
	static function toJSON(track:KeyframeTrack) : Dynamic;
}