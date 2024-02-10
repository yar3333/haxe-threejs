package js.three.animation;

import js.three.Constants;
import js.three.core.Object3D;

@:jsRequire("three")
@:native("THREE.AnimationAction")
extern class AnimationAction
{
	var blendMode : AnimationBlendMode;
	/**
	 * @default THREE.LoopRepeat
	 */
	var loop : AnimationActionLoopStyles;
	/**
	 * @default 0
	 */
	var time : Float;
	/**
	 * @default 1
	 */
	var timeScale : Float;
	/**
	 * @default 1
	 */
	var weight : Float;
	/**
	 * @default Infinity
	 */
	var repetitions : Float;
	/**
	 * @default false
	 */
	var paused : Bool;
	/**
	 * @default true
	 */
	var enabled : Bool;
	/**
	 * @default false
	 */
	var clampWhenFinished : Bool;
	/**
	 * @default true
	 */
	var zeroSlopeAtStart : Bool;
	/**
	 * @default true
	 */
	var zeroSlopeAtEnd : Bool;

	function new(mixer:AnimationMixer, clip:AnimationClip, ?localRoot:Object3D, ?blendMode:AnimationBlendMode) : Void;
	function play() : AnimationAction;
	function stop() : AnimationAction;
	function reset() : AnimationAction;
	function isRunning() : Bool;
	function isScheduled() : Bool;
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
	function getRoot() : Object3D;
}