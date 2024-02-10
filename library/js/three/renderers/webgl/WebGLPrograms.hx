package js.three.renderers.webgl;

import js.three.materials.Material;
import js.three.lights.Light;
import js.three.scenes.Scene;
import js.three.core.Object3D;
import js.three.renderers.shaders.IUniform;

@:jsRequire("three", "WebGLPrograms")
@:native("THREE.WebGLPrograms")
extern class WebGLPrograms
{
	var programs : Array<WebGLProgram>;

	function new(renderer:WebGLRenderer, cubemaps:WebGLCubeMaps, extensions:WebGLExtensions, capabilities:WebGLCapabilities, bindingStates:WebGLBindingStates, clipping:WebGLClipping) : Void;
	function getParameters(material:Material, lights:WebGLLightsState, shadows:Array<Light>, scene:Scene, object:Object3D) : WebGLProgramParameters;
	function getProgramCacheKey(parameters:WebGLProgramParameters) : String;
	function getUniforms(material:Material) : Dynamic<IUniform>;
	function acquireProgram(parameters:WebGLProgramParametersWithUniforms, cacheKey:String) : WebGLProgram;
	function releaseProgram(program:WebGLProgram) : Void;
}