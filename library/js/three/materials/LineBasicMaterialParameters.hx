package js.three.materials;

import js.three.math.ColorRepresentation;

typedef LineBasicMaterialParameters =
{>MaterialParameters,
	@:optional var color : ColorRepresentation;
	@:optional var fog : Bool;
	@:optional var linewidth : Float;
	@:optional var linecap : String;
	@:optional var linejoin : String;
}