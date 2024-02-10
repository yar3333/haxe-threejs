package js.three.animation;

import js.three.Constants;
import js.three.objects.Bone;

@:native("THREE.AnimationClip")
extern class AnimationClip
{
	var name : String;
	var tracks : Array<KeyframeTrack>;
	/**
	 * @default THREE.NormalAnimationBlendMode
	 */
	var blendMode : AnimationBlendMode;
	/**
	 * @default -1
	 */
	var duration : Float;
	var uuid : String;
	var results : Array<Dynamic>;

	function new(?name:String, ?duration:Float, ?tracks:Array<KeyframeTrack>, ?blendMode:AnimationBlendMode) : Void;
	function resetDuration() : AnimationClip;
	function trim() : AnimationClip;
	function validate() : Bool;
	function optimize() : AnimationClip;
	function clone() : AnimationClip;
	function toJSON(clip:AnimationClip) : Dynamic;
	static function CreateFromMorphTargetSequence(name:String, morphTargetSequence:Array<MorphTarget>, fps:Float, noLoop:Bool) : AnimationClip;
	static function findByName(clipArray:Array<AnimationClip>, name:String) : AnimationClip;
	static function CreateClipsFromMorphTargetSequences(morphTargets:Array<MorphTarget>, fps:Float, noLoop:Bool) : Array<AnimationClip>;
	static function parse(json:Dynamic) : AnimationClip;
	static function parseAnimation(animation:Dynamic, bones:Array<Bone>) : AnimationClip;
	static function toJSON(clip:AnimationClip) : Dynamic;
}