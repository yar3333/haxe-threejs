package js.three;

import js.html.*;

@:native("THREE.AudioListener")
extern class AudioListener extends Object3D
{
	function new() : Void;

	//var type : String;
	var context : js.html.audio.AudioContext;
}