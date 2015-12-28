package js.three;

import js.html.*;

@:native("THREE.CameraHelper")
extern class CameraHelper extends LineSegments
{
	function new(camera:Camera) : Void;

	var camera : Camera;
	var pointMap : Dynamic<Array<Float>>;

	function update() : Void;
}