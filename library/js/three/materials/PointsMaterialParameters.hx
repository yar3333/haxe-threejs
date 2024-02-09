package js.three.materials;

import js.three.textures.Texture;
import js.three.math.ColorRepresentation;

typedef PointsMaterialParameters =
{>MaterialParameters,
	@:optional var color : ColorRepresentation;
	@:optional var map : Texture;
	@:optional var alphaMap : Texture;
	@:optional var size : Float;
	@:optional var sizeAttenuation : Bool;
	@:optional var fog : Bool;
}