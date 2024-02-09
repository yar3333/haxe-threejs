package js.three.animation;

import js.lib.*;

@:native("THREE.PropertyMixer")
extern class PropertyMixer
{
	var binding : Dynamic;
	var valueSize : Float;
	var buffer : Dynamic;
	var cumulativeWeight : Float;
	var cumulativeWeightAdditive : Float;
	var useCount : Float;
	var referenceCount : Float;

	function new(binding:Dynamic, typeName:String, valueSize:Float) : Void;
	function accumulate(accuIndex:Float, weight:Float) : Void;
	function accumulateAdditive(weight:Float) : Void;
	function apply(accuIndex:Float) : Void;
	function saveOriginalState() : Void;
	function restoreOriginalState() : Void;
}