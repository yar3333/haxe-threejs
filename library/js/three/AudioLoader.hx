package js.three;

import js.lib.*;

@:native("THREE.AudioLoader")
extern class AudioLoader extends Loader<AudioBuffer>
{
	function new(?manager:LoadingManager) : Void;
}