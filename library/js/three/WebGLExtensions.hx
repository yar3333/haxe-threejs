package js.three;

import js.lib.*;

@:native("THREE.WebGLExtensions")
extern class WebGLExtensions
{
	function new(gl:WebGLRenderingContext) : Void;
	function has(name:String) : Bool;
	function init(capabilities:WebGLCapabilities) : Void;
	function get(name:String) : Dynamic;
}