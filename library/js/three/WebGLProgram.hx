package js.three;

import js.html.*;

@:native("THREE.WebGLProgram")
extern class WebGLProgram
{
	function new(renderer:WebGLRenderer, code:String, material:ShaderMaterial, parameters:WebGLRendererParameters) : Void;
	
	function getUniforms() : Dynamic;
	function getAttributes() : Dynamic;

	/** Deprecated, use getUniforms */
	var uniforms : Dynamic;
	/** Deprecated, use getAttributes */
	var attributes : Dynamic;

	var id : Int;
	var code : String;
	var usedTimes : Float;
	var program : Dynamic;
	var vertexShader : WebGLShader;
	var fragmentShader : WebGLShader;
}