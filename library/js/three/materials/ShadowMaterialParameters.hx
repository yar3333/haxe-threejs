package js.three;

import js.lib.*;

typedef ShadowMaterialParameters =
{>MaterialParameters,
	@:optional var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var fog : haxe.extern.EitherType<Bool, {}>;
}