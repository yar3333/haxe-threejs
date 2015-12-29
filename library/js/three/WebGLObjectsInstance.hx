package js.three;

import js.html.*;

@:native("THREE.WebGLObjectsInstance")
extern class WebGLObjectsInstance
{
	function new(gl:Dynamic, properties:Dynamic, info:Dynamic) : Void;
	function getAttributeBuffer(attribute:Dynamic) : Dynamic;
	function getWireframeAttribute(geometry:Dynamic) : Dynamic;
	function update(object:Dynamic) : Void;
}