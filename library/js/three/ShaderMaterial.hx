package js.three;

import js.html.*;

@:native("THREE.ShaderMaterial")
extern class ShaderMaterial extends Material
{
	function new(?parameters:ShaderMaterialParameters) : Void;

	var defines : Dynamic;
	var uniforms : Dynamic;
	var vertexShader : String;
	var fragmentShader : String;
	var shading : Shading;
	var linewidth : Float;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var fog : Bool;
	var lights : Bool;
	var vertexColors : Colors;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;
	var derivatives : Bool;
	var defaultAttributeValues : Dynamic;
	var index0AttributeName : String;

	@:overload(function():ShaderMaterial{})
	override function clone() : Material;
	function copy(source:ShaderMaterial) : ShaderMaterial;
	@:overload(function(meta:Dynamic):Dynamic{})
	override function toJSON(?meta:Dynamic) : Dynamic;
}