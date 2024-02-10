package js.three.renderers.webgl;

@:native("THREE.WebGLCubeMaps")
extern class WebGLCubeMaps
{
	function new(renderer:WebGLRenderer) : Void;
	function get(texture:Dynamic) : Dynamic;
	function dispose() : Void;
}