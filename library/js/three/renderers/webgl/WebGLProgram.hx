package js.three.renderers.webgl;

import js.html.webgl.Shader;

@:jsRequire("three", "WebGLProgram")
@:native("THREE.WebGLProgram")
extern class WebGLProgram
{
	var name : String;
	var id : Int;
	var cacheKey : String;
	/**
	 * @default 1
	 */
	var usedTimes : Float;
	var program : Dynamic;
	var vertexShader : Shader;
	var fragmentShader : Shader;
	/**
	 * @deprecated Use {@link WebGLProgram#getUniforms getUniforms()} instead.
	 */
	var uniforms : Dynamic;
	/**
	 * @deprecated Use {@link WebGLProgram#getAttributes getAttributes()} instead.
	 */
	var attributes : Dynamic;

	function new(renderer:WebGLRenderer, cacheKey:String, parameters:Dynamic) : Void;
	function getUniforms() : WebGLUniforms;
	function getAttributes() : Dynamic;
	function destroy() : Void;
}