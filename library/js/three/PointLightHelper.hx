package js.three;

import js.html.*;

@:native("THREE.PointLightHelper")
extern class PointLightHelper extends Object3D
{
	var light : Light;

	function new(light:Light, sphereSize:Float) : Void;
	function dispose() : Void;
	function update() : Void;
}