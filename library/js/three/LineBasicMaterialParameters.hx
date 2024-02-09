package js.three;

import js.lib.*;
import js.three.Color;

typedef LineBasicMaterialParameters =
{>MaterialParameters,
	@:optional var color : ColorRepresentation;
	@:optional var fog : Bool;
	@:optional var linewidth : Float;
	@:optional var linecap : String;
	@:optional var linejoin : String;
}