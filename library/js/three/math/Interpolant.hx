package js.three.math;

@:jsRequire("three", "Interpolant")
@:native("THREE.Interpolant")
extern class Interpolant
{
	var parameterPositions : Dynamic;
	var sampleValues : Dynamic;
	var valueSize : Float;
	var resultBuffer : Dynamic;

	function new(parameterPositions:Dynamic, sampleValues:Dynamic, sampleSize:Float, ?resultBuffer:Dynamic) : Void;
	function evaluate(time:Float) : Dynamic;
}