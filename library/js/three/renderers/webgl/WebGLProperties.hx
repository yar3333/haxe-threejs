package js.three.renderers.webgl;

import js.lib.*;

@:native("THREE.WebGLProperties")
extern class WebGLProperties
{
	function new() : Void;
	function get(object:Dynamic) : Dynamic;
	function remove(object:Dynamic) : Void;
	function update(object:Dynamic, key:Dynamic, value:Dynamic) : Dynamic;
	function dispose() : Void;
}