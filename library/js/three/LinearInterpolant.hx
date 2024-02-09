package js.three;

import js.lib.*;

@:native("THREE.LinearInterpolant")
extern class LinearInterpolant extends Interpolant
{
	@:overload(function(parameterPositions:Dynamic,samplesValues:Dynamic,sampleSize:Float,?resultBuffer:Dynamic):Void{})
	function new(parameterPositions:Dynamic, sampleValues:Dynamic, sampleSize:Float, ?resultBuffer:Dynamic) : Void;
	function interpolate_(i1:Float, t0:Float, t:Float, t1:Float) : Dynamic;
}