package js.three.materials;

import js.three.math.Vector2;
import js.three.textures.Texture;
import js.three.math.ColorRepresentation;

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