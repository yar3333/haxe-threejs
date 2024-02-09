package js.three.core;

import js.three.textures.Texture;
import js.lib.*;

@:native("THREE.RenderTarget")
extern class RenderTarget<TTexture:haxe.extern.EitherType<Texture, Array<Texture>> = Texture> extends EventDispatcher<{ dispose: {} }>
{
	var isRenderTarget(default, null) : Bool;
	var width : Float;
	var height : Float;
	var depth : Float;
	var scissor : Vector4;
	/**
	 * @default false
	 */
	var scissorTest : Bool;
	var viewport : Vector4;
	var texture : TTexture;
	/**
	 * @default true
	 */
	var depthBuffer : Bool;
	/**
	 * @default true
	 */
	var stencilBuffer : Bool;
	/**
	 * @default null
	 */
	var depthTexture : DepthTexture;
	/**
	 * Defines the count of MSAA samples. Can only be used with WebGL 2. Default is **0**.
	 * @default 0
	 */
	var samples : Float;

	function new(?width:Float, ?height:Float, ?options:RenderTargetOptions) : Void;
	function setSize(width:Float, height:Float, ?depth:Float) : Void;
	function clone() : RenderTarget;
	function copy(source:RenderTarget) : RenderTarget;
	function dispose() : Void;
}