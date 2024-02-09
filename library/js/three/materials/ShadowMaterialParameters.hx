package js.three.materials;

import js.three.math.ColorRepresentation;

typedef ShadowMaterialParameters =
{>MaterialParameters,
	@:optional var color : ColorRepresentation;
	@:optional var fog : Bool;
}