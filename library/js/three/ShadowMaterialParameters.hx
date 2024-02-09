package js.three;

import js.lib.*;

extern interface ShadowMaterialParameters extends MaterialParameters
{
	@:optional var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var fog : haxe.extern.EitherType<Bool, {}>;
}