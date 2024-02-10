package js.three.renderers;

import js.three.renderers.webgl.WebGLProgram;
import js.three.renderers.webgl.WebGLShader;

extern interface WebGLDebug
{
	/**
	 * Enables error checking and reporting when shader programs are being compiled.
	 */
	var checkShaderErrors : Bool;
	/**
	 * A callback function that can be used for custom error reporting. The callback receives the WebGL context, an
	 * instance of WebGLProgram as well two instances of WebGLShader representing the vertex and fragment shader.
	 * Assigning a custom function disables the default error reporting.
	 * @default `null`
	 */
	@:optional var onShaderError : js.html.webgl.RenderingContext->WebGLProgram->WebGLShader->WebGLShader->Void;
}