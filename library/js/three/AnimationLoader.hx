package js.three;

import js.lib.*;

@:native("THREE.AnimationLoader")
extern class AnimationLoader extends Loader<AnimationClip[]>
{
	function new(?manager:LoadingManager) : Void;
	function parse(json:readonly) : Array<AnimationClip>;
}