package js.three.renderers.webxr;

import js.lib.*;

typedef XRRenderState = Dynamic;
typedef WebXRArrayCamera = Dynamic;

@:native("THREE.WebXRDepthSensing")
extern class WebXRDepthSensing
{
	var texture : Texture;
	var mesh : Mesh;
	var depthNear : Float;
	var depthFar : Float;

	function new() : Void;
	function init(renderer:WebGLRenderer, depthData:XRWebGLDepthInformation, renderState:XRRenderState) : Void;
	function render(renderer:WebGLRenderer, cameraXR:WebXRArrayCamera) : Void;
	function reset() : Void;
}