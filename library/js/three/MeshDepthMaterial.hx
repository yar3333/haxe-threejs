package js.three;

import js.html.*;

@:native("THREE.MeshDepthMaterial")
extern class MeshDepthMaterial extends Material
{
	var wireframe : Bool;
	var wireframeLinewidth : Float;

	function new(?parameters:MeshDepthMaterialParameters) : Void;
	function setValues(parameters:MeshDepthMaterialParameters) : Void;
}