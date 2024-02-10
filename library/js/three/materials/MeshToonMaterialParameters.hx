package js.three.materials;

import js.three.math.Vector2;
import js.three.textures.Texture;
import js.three.math.ColorRepresentation;

typedef MeshToonMaterialParameters =
{>MaterialParameters,
	/**
	 * geometry color in hexadecimal. Default is 0xffffff. 
	 */
	@:optional var color : ColorRepresentation;
	@:optional var opacity : Float;
	@:optional var gradientMap : Texture;
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
	@:optional var alphaMap : Texture;
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
	@:optional var wireframeLinecap : String;
	@:optional var wireframeLinejoin : String;
	@:optional var fog : Bool;
}