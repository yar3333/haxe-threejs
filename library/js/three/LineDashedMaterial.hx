package js.three;

import js.html.*;

@:native("THREE.LineDashedMaterial")
extern class LineDashedMaterial extends Material
{
	var color : Color;
	var linewidth : Float;
	var scale : Float;
	var dashSize : Float;
	var gapSize : Float;

	function new(?parameters:LineDashedMaterialParameters) : Void;
	function setValues(parameters:LineDashedMaterialParameters) : Void;
}