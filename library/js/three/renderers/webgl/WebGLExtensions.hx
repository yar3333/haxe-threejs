package js.three.renderers.webgl;

@:native("THREE.WebGLExtensions")
extern class WebGLExtensions
{
	function new(gl:js.html.webgl.RenderingContext) : Void;
	function has(name:String) : Bool;
	function init(capabilities:WebGLCapabilities) : Void;
	function get(name:String) : Dynamic;
}