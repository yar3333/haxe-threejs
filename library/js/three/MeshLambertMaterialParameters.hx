package js.three;

import js.html.*;

typedef MeshLambertMaterialParameters =
{
	>MaterialParameters,

	@:optional var color : Int;
	@:optional var emissive : Float;
	@:optional var opacity : Float;
	@:optional var map : Texture;
	@:optional var specularMap : Texture;
	@:optional var alphaMap : Texture;
	@:optional var envMap : Texture;
	@:optional var combine : Combine;
	@:optional var reflectivity : Float;
	@:optional var refractionRatio : Float;
	@:optional var fog : Bool;
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
	@:optional var vertexColors : Colors;
	@:optional var skinning : Bool;
	@:optional var morphTargets : Bool;
	@:optional var morphNormals : Bool;
}