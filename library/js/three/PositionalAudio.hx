package js.three;

import js.html.*;

@:native("THREE.PositionalAudio")
extern class PositionalAudio extends Audio
{
	var panner : PannerNode;

	function new(listener:AudioListener) : Void;
	function setRefDistance(value:Float) : Void;
	function getRefDistance() : Float;
	function setRolloffFactor(value:Float) : Void;
	function getRolloffFactor() : Float;
	function setDistanceModel(value:Float) : Void;
	function getDistanceModel() : Float;
	function setMaxDistance(value:Float) : Void;
	function getMaxDistance() : Float;
}