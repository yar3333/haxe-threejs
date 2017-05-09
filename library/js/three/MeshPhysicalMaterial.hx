package js.three;

import js.html.*;

@:native("THREE.MeshPhysicalMaterial")
extern class MeshPhysicalMaterial extends MeshStandardMaterial
{
	var defines : Dynamic;
	var reflectivity : Float;
	var clearCoat : Float;
	var clearCoatRoughness : Float;

	function new(parameters:MeshPhysicalMaterialParameters) : Void;
}