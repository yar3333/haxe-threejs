package js.three.renderers;

import js.three.textures.Texture;

@:native("THREE.WebGLMultipleRenderTargets")
extern class WebGLMultipleRenderTargets extends WebGLRenderTarget<Array<Texture>>
{
	var isWebGLMultipleRenderTargets(default, null) : Bool;

	function new(?width:Float, ?height:Float, ?count:Int, ?options:WebGLRenderTargetOptions) : Void;
}