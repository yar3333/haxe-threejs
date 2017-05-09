package js.three;

import js.html.*;

@:native("THREE.LineBasicMaterialParameters")
extern interface LineBasicMaterialParameters extends MaterialParameters
{
	@:optional var color : haxe.extern.EitherType<Float, String>;
	@:optional var linewidth : Float;
	@:optional var linecap : String;
	@:optional var linejoin : String;
}