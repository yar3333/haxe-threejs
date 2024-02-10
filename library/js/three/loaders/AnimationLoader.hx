package js.three.loaders;

import js.three.animation.AnimationClip;

@:jsRequire("three")
@:native("THREE.AnimationLoader")
extern class AnimationLoader extends Loader<Array<AnimationClip>>
{
	function new(?manager:LoadingManager) : Void;
	function parse(@:const json:Dynamic) : Array<AnimationClip>;
}