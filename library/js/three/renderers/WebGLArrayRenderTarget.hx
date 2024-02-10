package js.three.renderers;

import js.three.textures.DataArrayTexture;

/**
 * This type of render target represents an array of textures.
 */
@:jsRequire("three", "WebGLArrayRenderTarget")
@:native("THREE.WebGLArrayRenderTarget")
extern class WebGLArrayRenderTarget extends WebGLRenderTarget<DataArrayTexture>
{
	/**
	 * The depth of the render target.
	 */
	//var depth : Float;

	/**
	 * The texture property is overwritten with an instance of {@link DataArrayTexture}.
	 */
	//var texture : DataArrayTexture;
    
	var isWebGLArrayRenderTarget(default, null) : Bool;

	/**
	 * This type of render target represents an array of textures.
	 */
	function new(?width:Float, ?height:Float, ?depth:Float, ?options:WebGLRenderTargetOptions) : Void;
}