package js.three;

import js.html.*;

@:native("THREE.AnimationLoader")
extern class AnimationLoader
{
	function new(?manager:LoadingManager) : Void;

	var manager : LoadingManager;
	function load(url:String, onLoad:Array<AnimationClip>->Void, ?onProgress:Dynamic->Void, ?onError:Dynamic->Void) : Void;
	function setCrossOrigin(crossOrigin:String) : Void;
	function parse(json:Dynamic, onLoad:Array<AnimationClip>->Void) : Void;
}