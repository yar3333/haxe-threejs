package js.three;

import js.lib.*;

extern interface PointsMaterialParameters extends MaterialParameters
{
	@:optional var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var map : haxe.extern.EitherType<Texture, {}>;
	@:optional var alphaMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var size : haxe.extern.EitherType<Float, {}>;
	@:optional var sizeAttenuation : haxe.extern.EitherType<Bool, {}>;
	@:optional var fog : haxe.extern.EitherType<Bool, {}>;
}