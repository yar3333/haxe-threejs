package js.three;

import js.lib.*;

extern interface SpriteMaterialParameters extends MaterialParameters
{
	@:optional var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var map : haxe.extern.EitherType<Texture, {}>;
	@:optional var alphaMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var rotation : haxe.extern.EitherType<Float, {}>;
	@:optional var sizeAttenuation : haxe.extern.EitherType<Bool, {}>;
	@:optional var fog : haxe.extern.EitherType<Bool, {}>;
}