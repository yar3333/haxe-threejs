package js.three;

import js.html.*;

@:native("THREE.AnimationClip")
extern class AnimationClip
{
	function new(name:String, ?duration:Float, ?tracks:Array<KeyframeTrack>) : Void;

	var name : String;
	var tracks : Array<KeyframeTrack>;
	var duration : Float;
	var results : Array<Dynamic>;

	function getAt(clipTime:Float) : Array<Dynamic>;
	function trim() : AnimationClip;
	function optimize() : AnimationClip;

	static function CreateFromMorphTargetSequence(name:String, morphTargetSequence:Array<MorphTarget>, fps:Float) : AnimationClip;
	function findByName(clipArray:AnimationClip, name:String) : AnimationClip;
	static function CreateClipsFromMorphTargetSequences(morphTargets:Array<MorphTarget>, fps:Float) : Array<AnimationClip>;
	function parse(json:Dynamic) : AnimationClip;
	function parseAnimation(animation:Dynamic, bones:Array<Bone>, nodeName:String) : AnimationClip;
}