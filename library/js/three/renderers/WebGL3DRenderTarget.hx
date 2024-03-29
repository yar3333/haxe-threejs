package js.three.renderers;

import js.three.textures.Data3DTexture;

/**
 * Represents a three-dimensional render target.
 */
@:jsRequire("three", "WebGL3DRenderTarget")
@:native("THREE.WebGL3DRenderTarget")
extern class WebGL3DRenderTarget extends WebGLRenderTarget<Data3DTexture>
{
	/**
	 * The depth of the render target.
	 */
	//var depth : Float;

	/**
	 * The texture property is overwritten with an instance of {@link Data3DTexture}.
	 */
	//var texture : Data3DTexture;
    
	var isWebGL3DRenderTarget(default, null) : Bool;

	/**
	 * Represents a three-dimensional render target.
	 */
	function new(?width:Float, ?height:Float, ?depth:Float, ?options:WebGLRenderTargetOptions) : Void;
}