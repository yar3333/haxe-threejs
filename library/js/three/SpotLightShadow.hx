package js.three;

import js.html.*;

@:native("THREE.SpotLightShadow")
extern class SpotLightShadow extends LightShadow
{
	//var camera : PerspectiveCamera;

	function update(light:Light) : Void;
}