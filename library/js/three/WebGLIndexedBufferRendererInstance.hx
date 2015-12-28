package js.three;

import js.html.*;

@:native("THREE.WebGLIndexedBufferRendererInstance")
extern interface WebGLIndexedBufferRendererInstance
{
	function new(gl:Dynamic, properties:Dynamic, info:Dynamic) : Void;
	function setMode(value:Dynamic) : Void;
	function setIndex(index:Dynamic) : Void;
	function render(start:Dynamic, count:Dynamic) : Void;
	function renderInstances(geometry:Dynamic) : Void;
}