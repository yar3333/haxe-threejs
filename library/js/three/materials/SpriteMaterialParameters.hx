package js.three;

import js.lib.*;
import js.three.Color;

typedef SpriteMaterialParameters =
{>MaterialParameters,
	@:optional var color : ColorRepresentation;
	@:optional var map : Texture;
	@:optional var alphaMap : Texture;
	@:optional var rotation : Float;
	@:optional var sizeAttenuation : Bool;
	@:optional var fog : Bool;
}