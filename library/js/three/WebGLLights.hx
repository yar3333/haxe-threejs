package js.three;

import js.lib.*;

@:native("THREE.WebGLLights")
extern class WebGLLights
{
	function new(gl:js.html.webgl.RenderingContext, properties:Dynamic, info:Dynamic) : Void;
	function get(light:Dynamic) : Dynamic;
}