package js.three.materials;

import js.three.math.Vector2;
import js.three.textures.Texture;
import js.three.Constants;

typedef MeshNormalMaterialParameters =
{>MaterialParameters,
	@:optional var bumpMap : Texture;
	@:optional var bumpScale : Float;
	@:optional var normalMap : Texture;
	@:optional var normalMapType : NormalMapTypes;
	@:optional var normalScale : Vector2;
	@:optional var displacementMap : Texture;
	@:optional var displacementScale : Float;
	@:optional var displacementBias : Float;
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
	@:optional var flatShading : Bool;
}