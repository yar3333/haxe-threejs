package js.three.math.interpolants;

@:jsRequire("three", "CubicInterpolant")
@:native("THREE.CubicInterpolant")
extern class CubicInterpolant extends Interpolant
{
	function new(parameterPositions:Dynamic, samplesValues:Dynamic, sampleSize:Float, ?resultBuffer:Dynamic) : Void;
	function interpolate_(i1:Float, t0:Float, t:Float, t1:Float) : Dynamic;
}