package js.three.math.interpolants;

@:jsRequire("three", "DiscreteInterpolant")
@:native("THREE.DiscreteInterpolant")
extern class DiscreteInterpolant extends Interpolant
{
	function new(parameterPositions:Dynamic, samplesValues:Dynamic, sampleSize:Float, ?resultBuffer:Dynamic) : Void;
	function interpolate_(i1:Float, t0:Float, t:Float, t1:Float) : Dynamic;
}