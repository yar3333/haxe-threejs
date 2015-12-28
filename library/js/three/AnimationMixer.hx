package js.three;

import js.html.*;

@:native("THREE.AnimationMixer")
extern class AnimationMixer
{
	function new(root:Dynamic) : Void;

	var root : Dynamic;
	var time : Float;
	var timeScale : Float;
	var actions : AnimationAction;
	var propertyBindingMap : Dynamic;

	function addAction(action:AnimationAction) : Void;
	function removeAllActions() : AnimationMixer;
	function removeAction(action:AnimationAction) : AnimationMixer;
	function findActionByName(name:String) : AnimationAction;
	function play(action:AnimationAction, ?optionalFadeInDuration:Float) : AnimationMixer;
	function fadeOut(action:AnimationAction, duration:Float) : AnimationMixer;
	function fadeIn(action:AnimationAction, duration:Float) : AnimationMixer;
	function warp(action:AnimationAction, startTimeScale:NumberKeyframeTrack, endTimeScale:NumberKeyframeTrack, duration:Float) : AnimationMixer;
	function crossFade(fadeOutAction:AnimationAction, fadeInAction:AnimationAction, duration:Float, warp:Bool) : AnimationMixer;
	function update(deltaTime:Float) : AnimationMixer;
}