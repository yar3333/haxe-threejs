package js.three;

import js.lib.*;

typedef MeshPhysicalMaterialParameters =
{>MeshStandardMaterialParameters,
	@:optional var reflectivity : Float;
	@:optional var clearCoat : Float;
	@:optional var clearCoatRoughness : Float;
}