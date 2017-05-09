package js.three;

import js.html.*;

@:native("THREE.PointsMaterialParameters")
extern interface PointsMaterialParameters extends MaterialParameters
{
	@:optional var color : haxe.extern.EitherType<Int, String>;
	@:optional var map : Texture;
	@:optional var size : Float;
	@:optional var sizeAttenuation : Bool;
}