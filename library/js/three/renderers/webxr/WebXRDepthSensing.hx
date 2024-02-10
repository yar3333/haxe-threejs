package js.three.renderers.webxr;

import js.three.textures.Texture;
import js.three.objects.Mesh;

typedef XRRenderState = Dynamic;
typedef WebXRArrayCamera = Dynamic;

@:jsRequire("three")
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