package js.three;

import js.html.*;

@:native("THREE.SpriteMaterial")
extern class SpriteMaterial extends Material
{
	var color : Color;
	var map : Texture;
	var rotation : Float;

	function new(?parameters:SpriteMaterialParameters) : Void;
	function setValues(parameters:SpriteMaterialParameters) : Void;
}