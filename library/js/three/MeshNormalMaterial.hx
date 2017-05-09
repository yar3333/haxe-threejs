package js.three;

import js.html.*;

@:native("THREE.MeshNormalMaterial")
extern class MeshNormalMaterial extends Material
{
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var morphTargets : Bool;

	function new(?parameters:MeshNormalMaterialParameters) : Void;
	function setValues(parameters:MeshNormalMaterialParameters) : Void;
}