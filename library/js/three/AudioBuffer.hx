package js.three;

import js.html.*;

@:native("THREE.AudioBuffer")
extern class AudioBuffer
{
	var context : Dynamic;
	var ready : Bool;
	var readyCallbacks : Array<Function>;

	function new(context:Dynamic) : Void;
	function load(file:String) : AudioBuffer;
	function onReady(callback:Function) : Void;
}