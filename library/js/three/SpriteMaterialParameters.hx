package js.three;

import js.html.*;

typedef SpriteMaterialParameters =
{
	>MaterialParameters,

	@:optional var color : Int;
	@:optional var opacity : Float;
	@:optional var map : Texture;
	@:optional var blending : Blending;
	@:optional var depthTest : Bool;
	@:optional var depthWrite : Bool;
	@:optional var uvOffset : Vector2;
	@:optional var uvScale : Vector2;
	@:optional var fog : Bool;
}