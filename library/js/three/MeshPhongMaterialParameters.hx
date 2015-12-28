package js.three;

import js.html.*;

typedef MeshPhongMaterialParameters =
{
	>MaterialParameters,

	/** geometry color in hexadecimal. Default is 0xffffff. */
	@:optional var color : Int;
	@:optional var emissive : Float;
	@:optional var specular : Float;
	@:optional var shininess : Float;
	@:optional var opacity : Float;
	@:optional var map : Texture;
	@:optional var lightMap : Texture;
	@:optional var lightMapIntensity : Float;
	@:optional var aoMap : Texture;
	@:optional var aoMapIntensity : Float;
	@:optional var emissiveMap : Texture;
	@:optional var bumpMap : Texture;
	@:optional var bumpScale : Float;
	@:optional var normalMap : Texture;
	@:optional var normalScale : Vector2;
	@:optional var displacementMap : Texture;
	@:optional var displacementScale : Float;
	@:optional var displacementBias : Float;
	@:optional var specularMap : Texture;
	@:optional var alphaMap : Texture;
	@:optional var envMap : Texture;
	@:optional var combine : Combine;
	@:optional var reflectivity : Float;
	@:optional var refractionRatio : Float;
	@:optional var shading : Shading;
	@:optional var blending : Blending;
	@:optional var depthTest : Bool;
	@:optional var depthWrite : Bool;
	@:optional var wireframe : String;
	@:optional var wireframeLinewidth : Float;
	@:optional var vertexColors : Colors;
	@:optional var skinning : Bool;
	@:optional var morphTargets : Bool;
	@:optional var morphNormals : Bool;
	@:optional var fog : Bool;
}