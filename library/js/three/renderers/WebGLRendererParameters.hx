package js.three.renderers;

import js.html.OffscreenCanvas;

typedef WebGLRendererParameters =
{
	/**
	 * A Canvas where the renderer draws its output.
	 */
	@:optional var canvas : haxe.extern.EitherType<js.html.CanvasElement, haxe.extern.EitherType<OffscreenCanvas, {}>>;
	/**
	 * A WebGL Rendering Context.
	 * (https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext)
	 * Default is null
	 */
	@:optional var context : haxe.extern.EitherType<js.html.webgl.RenderingContext, {}>;
	/**
	 * shader precision. Can be "highp", "mediump" or "lowp".
	 */
	@:optional var precision : haxe.extern.EitherType<String, {}>;
	/**
	 * default is false.
	 */
	@:optional var alpha : haxe.extern.EitherType<Bool, {}>;
	/**
	 * default is true.
	 */
	@:optional var premultipliedAlpha : haxe.extern.EitherType<Bool, {}>;
	/**
	 * default is false.
	 */
	@:optional var antialias : haxe.extern.EitherType<Bool, {}>;
	/**
	 * default is true.
	 */
	@:optional var stencil : haxe.extern.EitherType<Bool, {}>;
	/**
	 * default is false.
	 */
	@:optional var preserveDrawingBuffer : haxe.extern.EitherType<Bool, {}>;
	/**
	 * Can be "high-performance", "low-power" or "default"
	 */
	@:optional var powerPreference : haxe.extern.EitherType<String, {}>;
	/**
	 * default is true.
	 */
	@:optional var depth : haxe.extern.EitherType<Bool, {}>;
	/**
	 * default is false.
	 */
	@:optional var logarithmicDepthBuffer : haxe.extern.EitherType<Bool, {}>;
	/**
	 * default is false.
	 */
	@:optional var failIfMajorPerformanceCaveat : haxe.extern.EitherType<Bool, {}>;
}