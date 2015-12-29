package js.three;

import js.html.*;

@:native("THREE.WebGLPropertiesInstance")
extern class WebGLPropertiesInstance
{
	function new() : Void;

	function get(object:Dynamic) : Dynamic;
	function delete(object:Dynamic) : Void;
	function clear() : Void;
}