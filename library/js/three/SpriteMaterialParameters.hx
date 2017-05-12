package js.three;

import js.html.*;

@:native("THREE.SpriteMaterialParameters")
typedef SpriteMaterialParameters =
{>MaterialParameters,
	@:optional var color : haxe.extern.EitherType<Int, String>;
	@:optional var map : Texture;
	@:optional var rotation : Float;
}