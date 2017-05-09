package js.three;

import js.html.*;

@:native("THREE.SpriteMaterialParameters")
extern interface SpriteMaterialParameters extends MaterialParameters
{
	@:optional var color : haxe.extern.EitherType<Float, String>;
	@:optional var map : Texture;
	@:optional var rotation : Float;
}