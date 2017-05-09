package js.three;

import js.html.*;

@:native("THREE.PointsMaterial")
extern class PointsMaterial extends Material
{
	var color : Color;
	var map : Texture;
	var size : Float;
	var sizeAttenuation : Bool;

	function new(?parameters:PointsMaterialParameters) : Void;
	function setValues(parameters:PointsMaterialParameters) : Void;
}