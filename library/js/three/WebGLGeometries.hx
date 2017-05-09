package js.three;

import js.html.*;

@:native("THREE.WebGLGeometries")
extern class WebGLGeometries
{
	function new(gl:WebGLRenderingContext, extensions:Dynamic, _infoRender:Dynamic) : Void;
	function get(object:Dynamic) : Dynamic;
}