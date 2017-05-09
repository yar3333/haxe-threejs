package js.three;

import js.html.*;

@:native("THREE.HemisphereLightHelper")
extern class HemisphereLightHelper extends Object3D
{
	var light : Light;
	var colors : Array<Color>;
	var lightSphere : Mesh;

	function new(light:Light, sphereSize:Float) : Void;
	function dispose() : Void;
	function update() : Void;
}