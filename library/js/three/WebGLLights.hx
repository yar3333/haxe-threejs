package js.three;

import js.html.*;

@:native("THREE.WebGLLights")
extern class WebGLLights
{
	function new(gl:WebGLRenderingContext, properties:Dynamic, info:Dynamic) : Void;
	function get(light:Dynamic) : Dynamic;
}