package js.three.renderers.webgl;

@:jsRequire("three")
@:native("THREE.WebGLObjects")
extern class WebGLObjects
{
	function new(gl:js.html.webgl.RenderingContext, geometries:Dynamic, attributes:Dynamic, info:Dynamic) : Void;
	function update(object:Dynamic) : Dynamic;
	function dispose() : Void;
}