package js.three.renderers.webgl;

import js.lib.*;

@:native("THREE.WebGLCubeMaps")
extern class WebGLCubeMaps
{
	function new(renderer:WebGLRenderer) : Void;
	function get(texture:Dynamic) : Dynamic;
	function dispose() : Void;
}