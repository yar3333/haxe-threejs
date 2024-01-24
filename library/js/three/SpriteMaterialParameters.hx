package js.three;

import js.lib.*;

typedef SpriteMaterialParameters =
{>MaterialParameters,
	@:optional var color : haxe.extern.EitherType<Color, haxe.extern.EitherType<String, Float>>;
	@:optional var map : Texture;
	@:optional var rotation : Float;
}