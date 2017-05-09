package js.three;

import js.html.*;

@:native("THREE.SpotLightHelper")
extern class SpotLightHelper extends Object3D
{
	var light : Light;

	function new(light:Light) : Void;
	function dispose() : Void;
	function update() : Void;
}