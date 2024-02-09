package js.three.renderers;

import js.lib.*;

@:native("THREE.WebGL1Renderer")
extern class WebGL1Renderer extends WebGLRenderer
{
	var isWebGL1Renderer(default, null) : Bool;

	function new(?parameters:WebGLRendererParameters) : Void;
}