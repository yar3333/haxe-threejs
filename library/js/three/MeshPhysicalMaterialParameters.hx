package js.three;

import js.html.*;

@:native("THREE.MeshPhysicalMaterialParameters")
typedef MeshPhysicalMaterialParameters =
{>MeshStandardMaterialParameters,
	@:optional var reflectivity : Float;
	@:optional var clearCoat : Float;
	@:optional var clearCoatRoughness : Float;
}