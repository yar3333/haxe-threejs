package js.three;

import js.lib.*;

@:native("THREE.AnimationMixer")
extern class AnimationMixer extends EventDispatcher
{
	var time : Float;
	var timeScale : Float;

	@:overload(function(root:Dynamic):Void{})
	function new() : Void;
	function clipAction(clip:AnimationClip, ?root:Dynamic) : AnimationAction;
	function existingAction(clip:AnimationClip, ?root:Dynamic) : AnimationAction;
	function stopAllAction() : AnimationMixer;
	function update(deltaTime:Float) : AnimationMixer;
	function getRoot() : Dynamic;
	function uncacheClip(clip:AnimationClip) : Void;
	function uncacheRoot(root:Dynamic) : Void;
	function uncacheAction(clip:AnimationClip, ?root:Dynamic) : Void;
}