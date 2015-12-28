package js.three;

import js.html.*;

@:native("THREE.AudioListener")
extern class AudioListener extends Object3D
{
	function new() : Void;

	//var type : String;
	var context : AudioContext;

	@:overload(function(?force:Bool):Void{})
	override function updateMatrixWorld(force:Bool) : Void;
}