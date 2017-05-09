package js.three;

import js.html.*;

@:native("THREE.CameraHelper")
extern class CameraHelper extends LineSegments
{
	var camera : Camera;
	var pointMap : Dynamic<Array<Float>>;

	function new(camera:Camera) : Void;
	function update() : Void;
}