package js.three;

import js.html.*;

@:native("THREE.LineBasicMaterialParameters")
typedef LineBasicMaterialParameters =
{>MaterialParameters,
	@:optional var color : haxe.extern.EitherType<Int, String>;
	@:optional var linewidth : Float;
	@:optional var linecap : String;
	@:optional var linejoin : String;
}