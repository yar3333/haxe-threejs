package js.three;

import js.html.*;

@:native("THREE.AudioAnalyser")
extern class AudioAnalyser
{
	var analyser : Dynamic;
	var data : Uint8Array;

	function new(audio:Dynamic, fftSize:Float) : Void;
	function getFrequencyData() : Uint8Array;
	function getAverageFrequency() : Float;
	/**
	 * @deprecated Use {@link AudioAnalyser#getFrequencyData .getFrequencyData()} instead.
	 */
	function getData(file:Dynamic) : Dynamic;
}