package js.three;

import js.lib.*;

@:native("THREE.Interpolant")
extern class Interpolant
{
	var parameterPositions : Dynamic;
	var samplesValues : Dynamic;
	var valueSize : Float;
	var resultBuffer : Dynamic;

	function new(parameterPositions:Dynamic, samplesValues:Dynamic, sampleSize:Float, ?resultBuffer:Dynamic) : Void;
	function evaluate(time:Float) : Dynamic;
}