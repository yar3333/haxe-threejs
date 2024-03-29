package js.three.renderers.webgl;
import js.lib.Int32Array;

@:jsRequire("three", "WebGLIndexedBufferRenderer")
@:native("THREE.WebGLIndexedBufferRenderer")
extern class WebGLIndexedBufferRenderer
{
	var setMode : Dynamic->Void;
	var setIndex : Dynamic->Void;
	var render : Dynamic->Float->Void;
	var renderInstances : Dynamic->Float->Float->Void;
	var renderMultiDraw : Int32Array->Int32Array->Float->Void;

	function new(gl:js.html.webgl.RenderingContext, extensions:Dynamic, info:Dynamic, capabilities:Dynamic) : Void;
}