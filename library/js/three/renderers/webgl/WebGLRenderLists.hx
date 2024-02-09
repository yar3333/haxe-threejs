package js.three;

import js.lib.*;

@:native("THREE.WebGLRenderLists")
extern class WebGLRenderLists
{
	function new(properties:WebGLProperties) : Void;
	function dispose() : Void;
	function get(scene:Scene, renderCallDepth:Float) : WebGLRenderList;
}