package js.three.materials;

import js.three.math.Vector2;
import js.three.textures.Texture;
import js.three.math.ColorRepresentation;
import js.three.Constants;

typedef MeshStandardMaterialParameters =
{>MaterialParameters,
	@:optional var color : ColorRepresentation;
	@:optional var roughness : Float;
	@:optional var metalness : Float;
	@:optional var map : Texture;
	@:optional var lightMap : Texture;
	@:optional var lightMapIntensity : Float;
	@:optional var aoMap : Texture;
	@:optional var aoMapIntensity : Float;
	@:optional var emissive : ColorRepresentation;
	@:optional var emissiveIntensity : Float;
	@:optional var emissiveMap : Texture;
	@:optional var bumpMap : Texture;
	@:optional var bumpScale : Float;
	@:optional var normalMap : Texture;
	@:optional var normalMapType : NormalMapTypes;
	@:optional var normalScale : Vector2;
	@:optional var displacementMap : Texture;
	@:optional var displacementScale : Float;
	@:optional var displacementBias : Float;
	@:optional var roughnessMap : Texture;
	@:optional var metalnessMap : Texture;
	@:optional var alphaMap : Texture;
	@:optional var envMap : Texture;
	@:optional var envMapIntensity : Float;
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
	@:optional var fog : Bool;
	@:optional var flatShading : Bool;
}