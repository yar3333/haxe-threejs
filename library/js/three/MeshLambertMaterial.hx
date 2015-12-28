package js.three;

import js.html.*;

@:native("THREE.MeshLambertMaterial")
extern class MeshLambertMaterial extends Material
{
	function new(?parameters:MeshLambertMaterialParameters) : Void;

	var color : Color;
	var emissive : Color;
	var map : Texture;
	var specularMap : Texture;
	var alphaMap : Texture;
	var envMap : Texture;
	var combine : Combine;
	var reflectivity : Float;
	var refractionRatio : Float;
	var fog : Bool;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var wireframeLinecap : String;
	var wireframeLinejoin : String;
	var vertexColors : Colors;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;

	@:overload(function():MeshLambertMaterial{})
	override function clone() : Material;
	function copy(source:MeshLambertMaterial) : MeshLambertMaterial;
}