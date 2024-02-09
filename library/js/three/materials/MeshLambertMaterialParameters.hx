package js.three.materials;

import js.three.math.Vector2;
import js.three.math.ColorRepresentation;
import js.three.textures.Texture;
import js.three.Constants;

typedef MeshLambertMaterialParameters =
{>MaterialParameters,
	@:optional var bumpMap : Texture;
	@:optional var bumpScale : Float;
	@:optional var color : ColorRepresentation;
	@:optional var displacementMap : Texture;
	@:optional var displacementScale : Float;
	@:optional var displacementBias : Float;
	@:optional var emissive : ColorRepresentation;
	@:optional var emissiveIntensity : Float;
	@:optional var emissiveMap : Texture;
	@:optional var flatShading : Bool;
	@:optional var map : Texture;
	@:optional var lightMap : Texture;
	@:optional var lightMapIntensity : Float;
	@:optional var normalMap : Texture;
	@:optional var normalScale : Vector2;
	@:optional var aoMap : Texture;
	@:optional var aoMapIntensity : Float;
	@:optional var specularMap : Texture;
	@:optional var alphaMap : Texture;
	@:optional var envMap : Texture;
	@:optional var combine : Combine;
	@:optional var reflectivity : Float;
	@:optional var refractionRatio : Float;
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
	@:optional var wireframeLinecap : String;
	@:optional var wireframeLinejoin : String;
	@:optional var fog : Bool;
}