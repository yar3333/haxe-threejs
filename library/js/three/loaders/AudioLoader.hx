package js.three.loaders;

import js.html.audio.AudioBuffer;

@:native("THREE.AudioLoader")
extern class AudioLoader extends Loader<AudioBuffer>
{
	function new(?manager:LoadingManager) : Void;
}