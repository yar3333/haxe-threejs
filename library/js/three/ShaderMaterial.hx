package js.three;

import js.html.*;

@:native("THREE.ShaderMaterial")
extern class ShaderMaterial extends Material
{
	var defines : Dynamic;
	var uniforms : Dynamic<IUniform>;
	var vertexShader : String;
	var fragmentShader : String;
	var linewidth : Float;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var lights : Bool;
	var clipping : Bool;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;
	/**
	 * @deprecated Use extensions.derivatives instead.
	 */
	var derivatives : Dynamic;
	var extensions : { var derivatives : Bool; var fragDepth : Bool; var drawBuffers : Bool; var shaderTextureLOD : Bool; };
	var defaultAttributeValues : Dynamic;
	var index0AttributeName : String;

	function new(?parameters:ShaderMaterialParameters) : Void;
	function setValues(parameters:ShaderMaterialParameters) : Void;
	function toJSON(meta:Dynamic) : Dynamic;
}