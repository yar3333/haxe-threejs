package js.three;

import js.html.*;

@:native("THREE.WebGLExtensions")
extern class WebGLExtensions
{
	function new(gl:Dynamic) : Void;// WebGLRenderingContext

	function get(name:String) : Dynamic;
}