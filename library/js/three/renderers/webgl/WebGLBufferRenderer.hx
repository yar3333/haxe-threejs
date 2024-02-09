package js.three.renderers.webgl;

import js.lib.*;

@:native("THREE.WebGLBufferRenderer")
extern class WebGLBufferRenderer
{
	var setMode : Dynamic->Void;
	var render : Dynamic->Float->Void;
	var renderInstances : Dynamic->Float->Float->Void;
	var renderMultiDraw : Int32Array->Int32Array->Float->Void;

	function new(gl:js.html.webgl.RenderingContext, extensions:WebGLExtensions, info:WebGLInfo, capabilities:WebGLCapabilities) : Void;
}