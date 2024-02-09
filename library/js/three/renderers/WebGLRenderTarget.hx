package js.three.renderers;

import js.three.core.RenderTarget;
import js.three.textures.Texture;

@:native("THREE.WebGLRenderTarget")
extern class WebGLRenderTarget<TTexture:haxe.extern.EitherType<Texture, Array<Texture>> = Texture> extends RenderTarget<TTexture>
{
	var isWebGLRenderTarget(default, null) : Bool;

	function new(?width:Float, ?height:Float, ?options:WebGLRenderTargetOptions) : Void;
}