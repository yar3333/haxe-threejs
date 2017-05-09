package js.three;

import js.html.*;

@:native("THREE.DirectionalLightHelper")
extern class DirectionalLightHelper extends Object3D
{
	var light : Light;
	var lightPlane : Line;

	function new(light:Light, ?size:Float) : Void;
	function dispose() : Void;
	function update() : Void;
}