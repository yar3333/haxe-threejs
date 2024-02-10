package js.three.renderers.webgl;

@:native("THREE.WebGLCubeUVMaps")
extern class WebGLCubeUVMaps
{
	@:optional var Texture : Dynamic;
	var T : Dynamic;

	function new(renderer:WebGLRenderer) : Void;
	function get<T:Dynamic>(texture:T) : T;
	function dispose() : Void;
}