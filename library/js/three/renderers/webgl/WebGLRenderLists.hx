package js.three.renderers.webgl;

import js.three.scenes.Scene;

@:jsRequire("three", "WebGLRenderLists")
@:native("THREE.WebGLRenderLists")
extern class WebGLRenderLists
{
	function new(properties:WebGLProperties) : Void;
	function dispose() : Void;
	function get(scene:Scene, renderCallDepth:Float) : WebGLRenderList;
}