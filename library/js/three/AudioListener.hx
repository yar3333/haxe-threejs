package js.three;

import js.html.*;

@:native("THREE.AudioListener")
extern class AudioListener extends Object3D
{
	//var type : String;
	var context : AudioContext;
	var gain : GainNode;

	override function new() : Void;
	function getInput() : GainNode;
	function removeFilter() : Void;
	function setFilter(value:Dynamic) : Void;
	function getFilter() : Dynamic;
	function setMasterVolume(value:Float) : Void;
	function getMasterVolume() : Float;
}