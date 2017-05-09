package js.three;

import js.html.*;

@:native("THREE.LineBasicMaterial")
extern class LineBasicMaterial extends Material
{
	var color : Color;
	var linewidth : Float;
	var linecap : String;
	var linejoin : String;

	function new(?parameters:LineBasicMaterialParameters) : Void;
	function setValues(parameters:LineBasicMaterialParameters) : Void;
}