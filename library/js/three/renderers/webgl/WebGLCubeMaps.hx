package js.three.renderers.webgl;

@:jsRequire("three", "WebGLCubeMaps")
@:native("THREE.WebGLCubeMaps")
extern class WebGLCubeMaps
{
	function new(renderer:WebGLRenderer) : Void;
	function get(texture:Dynamic) : Dynamic;
	function dispose() : Void;
}