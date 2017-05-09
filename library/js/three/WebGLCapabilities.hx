package js.three;

import js.html.*;

@:native("THREE.WebGLCapabilities")
extern class WebGLCapabilities
{
	var precision : Dynamic;
	var logarithmicDepthBuffer : Dynamic;
	var maxTextures : Dynamic;
	var maxVertexTextures : Dynamic;
	var maxTextureSize : Dynamic;
	var maxCubemapSize : Dynamic;
	var maxAttributes : Dynamic;
	var maxVertexUniforms : Dynamic;
	var maxVaryings : Dynamic;
	var maxFragmentUniforms : Dynamic;
	var vertexTextures : Dynamic;
	var floatFragmentTextures : Dynamic;
	var floatVertexTextures : Dynamic;

	function new(gl:js.html.webgl.RenderingContext, extensions:Dynamic, parameters:WebGLCapabilitiesParameters) : Void;
	function getMaxAnisotropy() : Int;
	function getMaxPrecision(precision:String) : String;
}