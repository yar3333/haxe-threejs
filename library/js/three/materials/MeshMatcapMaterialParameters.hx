package js.three;

import js.lib.*;
import js.three.Constants;

typedef MeshMatcapMaterialParameters =
{>MaterialParameters,
	@:optional var color : ColorRepresentation;
	@:optional var matcap : Texture;
	@:optional var map : Texture;
	@:optional var bumpMap : Texture;
	@:optional var bumpScale : Float;
	@:optional var normalMap : Texture;
	@:optional var normalMapType : NormalMapTypes;
	@:optional var normalScale : Vector2;
	@:optional var displacementMap : Texture;
	@:optional var displacementScale : Float;
	@:optional var displacementBias : Float;
	@:optional var alphaMap : Texture;
	@:optional var fog : Bool;
	@:optional var flatShading : Bool;
}