package js.three;

import js.lib.*;

@:native("THREE.StereoCamera")
extern class StereoCamera extends Camera
{
	var aspect : Float;
	var eyeSep : Float;
	var cameraL : PerspectiveCamera;
	var cameraR : PerspectiveCamera;

	function new() : Void;
	function update(camera:PerspectiveCamera) : Void;
}