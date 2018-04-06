package js.three;

import js.html.*;

@:native("THREE.WebGLRenderTarget")
extern class WebGLRenderTarget extends EventDispatcher
{
	var uuid : String;
	var width : Float;
	var height : Float;
	var scissor : Vector4;
	var scissorTest : Bool;
	var viewport : Vector4;
	var texture : Texture;
	var depthBuffer : Bool;
	var stencilBuffer : Bool;
	var depthTexture : Texture;
	/**
	 * @deprecated Use {@link Texture#wrapS texture.wrapS} instead.
	 */
	var wrapS : Dynamic;
	/**
	 * @deprecated Use {@link Texture#wrapT texture.wrapT} instead.
	 */
	var wrapT : Dynamic;
	/**
	 * @deprecated Use {@link Texture#magFilter texture.magFilter} instead.
	 */
	var magFilter : Dynamic;
	/**
	 * @deprecated Use {@link Texture#minFilter texture.minFilter} instead.
	 */
	var minFilter : Dynamic;
	/**
	 * @deprecated Use {@link Texture#anisotropy texture.anisotropy} instead.
	 */
	var anisotropy : Dynamic;
	/**
	 * @deprecated Use {@link Texture#offset texture.offset} instead.
	 */
	var offset : Dynamic;
	/**
	 * @deprecated Use {@link Texture#repeat texture.repeat} instead.
	 */
	var repeat : Dynamic;
	/**
	 * @deprecated Use {@link Texture#format texture.format} instead.
	 */
	var format : Dynamic;
	/**
	 * @deprecated Use {@link Texture#type texture.type} instead.
	 */
	var type : Dynamic;
	/**
	 * @deprecated Use {@link Texture#generateMipmaps texture.generateMipmaps} instead.
	 */
	var generateMipmaps : Dynamic;

	@:overload(function(width:Float,height:Float,?options:WebGLRenderTargetOptions):Void{})
	function new() : Void;
	function setSize(width:Float, height:Float) : Void;
	function clone() : WebGLRenderTarget;
	function copy(source:WebGLRenderTarget) : WebGLRenderTarget;
	function dispose() : Void;
}