package js.three.loaders;

import js.lib.*;

@:native("THREE.AnimationLoader")
extern class AnimationLoader extends Loader<Array<AnimationClip>>
{
	function new(?manager:LoadingManager) : Void;
	function parse(@:const json:Dynamic) : Array<AnimationClip>;
}