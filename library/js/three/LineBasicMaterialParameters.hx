package js.three;

import js.html.*;

typedef LineBasicMaterialParameters =
{>MaterialParameters,
	@:optional var color : haxe.extern.EitherType<Color, haxe.extern.EitherType<String, Float>>;
	@:optional var linewidth : Float;
	@:optional var linecap : String;
	@:optional var linejoin : String;
}