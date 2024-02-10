package js.three.animation;

import js.three.core.EventDispatcher;
import js.three.core.Object3D;

@:jsRequire("three", "AnimationMixer")
@:native("THREE.AnimationMixer")
extern class AnimationMixer extends EventDispatcher<AnimationMixerEventMap>
{
	/**
	 * @default 0
	 */
	var time : Float;
	/**
	 * @default 1.0
	 */
	var timeScale : Float;

	function new(root:haxe.extern.EitherType<Object3D, AnimationObjectGroup>) : Void;
	function clipAction(clip:AnimationClip, ?root:haxe.extern.EitherType<Object3D, AnimationObjectGroup>, ?blendMode:AnimationBlendMode) : AnimationAction;
	function existingAction(clip:AnimationClip, ?root:haxe.extern.EitherType<Object3D, AnimationObjectGroup>) : AnimationAction;
	function stopAllAction() : AnimationMixer;
	function update(deltaTime:Float) : AnimationMixer;
	function setTime(timeInSeconds:Float) : AnimationMixer;
	function getRoot() : haxe.extern.EitherType<Object3D, AnimationObjectGroup>;
	function uncacheClip(clip:AnimationClip) : Void;
	function uncacheRoot(root:haxe.extern.EitherType<Object3D, AnimationObjectGroup>) : Void;
	function uncacheAction(clip:AnimationClip, ?root:haxe.extern.EitherType<Object3D, AnimationObjectGroup>) : Void;
}