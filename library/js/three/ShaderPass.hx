package js.three;

import js.html.*;

@:native("THREE.ShaderPass")
extern class ShaderPass
{
	function new(shader:Shader, ?textureID:String) : Void;

	var textureID : String;
	var uniforms : Dynamic;
	var material : ShaderMaterial;
	var renderToScreen : Bool;
	var enabled : Bool;
	var needsSwap : Bool;
	var clear : Bool;
	var camera : Camera;
	var scene : Scene;
	var quad : Mesh;

	function render(renderer:WebGLRenderer, writeBuffer:WebGLRenderTarget, readBuffer:WebGLRenderTarget, delta:Float) : Void;
}