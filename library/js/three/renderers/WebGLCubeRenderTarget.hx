package js.three.renderers;

import js.three.textures.CubeTexture;
import js.three.textures.Texture;

@:jsRequire("three", "WebGLCubeRenderTarget")
@:native("THREE.WebGLCubeRenderTarget")
extern class WebGLCubeRenderTarget extends WebGLRenderTarget<CubeTexture>
{
	//var texture : CubeTexture;

	function new(?size:Float, ?options:WebGLRenderTargetOptions) : Void;
	function fromEquirectangularTexture(renderer:WebGLRenderer, texture:Texture) : WebGLCubeRenderTarget;
	function clear(renderer:WebGLRenderer, color:Bool, depth:Bool, stencil:Bool) : Void;
}