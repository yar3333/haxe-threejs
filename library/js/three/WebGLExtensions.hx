package js.three;

import js.html.*;

@:native("THREE.WebGLExtensions")
extern class WebGLExtensions
{
	function new(gl:WebGLRenderingContext) : Void;
	function get(name:String) : Dynamic;
}