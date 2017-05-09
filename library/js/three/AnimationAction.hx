package js.three;

import js.html.*;

@:native("THREE.AnimationAction")
extern class AnimationAction
{
	var loop : Bool;
	var time : Float;
	var timeScale : Float;
	var weight : Float;
	var repetitions : Float;
	var paused : Bool;
	var enabled : Bool;
	var clampWhenFinished : Bool;
	var zeroSlopeAtStart : Bool;
	var zeroSlopeAtEnd : Bool;

	function play() : AnimationAction;
	function stop() : AnimationAction;
	function reset() : AnimationAction;
	function isRunning() : Bool;
	function startAt(time:Float) : AnimationAction;
	function setLoop(mode:AnimationActionLoopStyles, repetitions:Float) : AnimationAction;
	function setEffectiveWeight(weight:Float) : AnimationAction;
	function getEffectiveWeight() : Float;
	function fadeIn(duration:Float) : AnimationAction;
	function fadeOut(duration:Float) : AnimationAction;
	function crossFadeFrom(fadeOutAction:AnimationAction, duration:Float, warp:Bool) : AnimationAction;
	function crossFadeTo(fadeInAction:AnimationAction, duration:Float, warp:Bool) : AnimationAction;
	function stopFading() : AnimationAction;
	function setEffectiveTimeScale(timeScale:Float) : AnimationAction;
	function getEffectiveTimeScale() : Float;
	function setDuration(duration:Float) : AnimationAction;
	function syncWith(action:AnimationAction) : AnimationAction;
	function halt(duration:Float) : AnimationAction;
	function warp(statTimeScale:Float, endTimeScale:Float, duration:Float) : AnimationAction;
	function stopWarping() : AnimationAction;
	function getMixer() : AnimationMixer;
	function getClip() : AnimationClip;
	function getRoot() : Dynamic;
}