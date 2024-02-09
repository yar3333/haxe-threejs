package js.three;

import js.lib.*;

@:native("THREE.WebGLMultipleRenderTargets")
extern class WebGLMultipleRenderTargets extends WebGLRenderTarget<Texture[]>
{
	var isWebGLMultipleRenderTargets(default, null) : Bool;

	function new(?width:Float, ?height:Float, ?count:Float, ?options:WebGLRenderTargetOptions) : Void;
}