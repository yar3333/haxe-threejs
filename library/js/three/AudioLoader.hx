package js.three;

import js.html.*;

@:native("THREE.AudioLoader")
extern class AudioLoader
{
	function new(?manager:LoadingManager) : Void;
	function load(url:String, onLoad:Function, onPrgress:Function, onError:Function) : Void;
}