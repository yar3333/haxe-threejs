package js.three.materials;

import js.three.textures.Texture;
import js.three.math.ColorRepresentation;

typedef MeshBasicMaterialParameters =
{>MaterialParameters,
	@:optional var color : ColorRepresentation;
	//@:optional var opacity : Float;
	@:optional var map : Texture;
	@:optional var lightMap : Texture;
	@:optional var lightMapIntensity : Float;
	@:optional var aoMap : Texture;
	@:optional var aoMapIntensity : Float;
	@:optional var specularMap : Texture;
	@:optional var alphaMap : Texture;
	@:optional var fog : Bool;
	@:optional var envMap : Texture;
	@:optional var combine : Combine;
	@:optional var reflectivity : Float;
	@:optional var refractionRatio : Float;
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
	@:optional var wireframeLinecap : String;
	@:optional var wireframeLinejoin : String;
}