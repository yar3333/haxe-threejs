package js.three;

import js.lib.*;

@:native("THREE.WebGLObjects")
extern class WebGLObjects
{
	function new(gl:WebGLRenderingContext, geometries:Dynamic, attributes:Dynamic, info:Dynamic) : Void;
	function update(object:Dynamic) : Dynamic;
	function dispose() : Void;
}