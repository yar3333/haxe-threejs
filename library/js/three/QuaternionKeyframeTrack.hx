package js.three;

import js.html.*;

@:native("THREE.QuaternionKeyframeTrack")
extern class QuaternionKeyframeTrack
{
	function new() : Void;

	var result : Dynamic;

	function setResult(value:Dynamic) : Void;
	function lerpValues(value0:Dynamic, value1:Dynamic, alpha:Float) : Dynamic;
	function compareValues(value0:Dynamic, value1:Dynamic) : Bool;
	function clone() : QuaternionKeyframeTrack;
	function parse(json:Dynamic) : QuaternionKeyframeTrack;
}