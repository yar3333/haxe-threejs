package js.three;

import js.lib.*;

extern interface LineBasicMaterialParameters extends MaterialParameters
{
	@:optional var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var fog : haxe.extern.EitherType<Bool, {}>;
	@:optional var linewidth : haxe.extern.EitherType<Float, {}>;
	@:optional var linecap : haxe.extern.EitherType<String, {}>;
	@:optional var linejoin : haxe.extern.EitherType<String, {}>;
}