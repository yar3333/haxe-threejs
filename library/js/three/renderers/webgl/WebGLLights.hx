package js.three.renderers.webgl;

@:jsRequire("three", "WebGLLights")
@:native("THREE.WebGLLights")
extern class WebGLLights
{
	var state : WebGLLightsState;

	function new(extensions:WebGLExtensions, capabilities:WebGLCapabilities) : Void;
	function get(light:Dynamic) : Dynamic;
	function setup(lights:Dynamic) : Void;
	function setupView(lights:Dynamic, camera:Dynamic) : Void;
}