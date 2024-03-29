package js.three.renderers;

@:jsRequire("three", "WebGL1Renderer")
@:native("THREE.WebGL1Renderer")
extern class WebGL1Renderer extends WebGLRenderer
{
	var isWebGL1Renderer(default, null) : Bool;

	function new(?parameters:WebGLRendererParameters) : Void;
}