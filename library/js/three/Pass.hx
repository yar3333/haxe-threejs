package js.three;

import js.html.*;

@:native("THREE.Pass")
extern class Pass
{
	var enabled : Bool;
	var needsSwap : Bool;
	var clear : Bool;
	var renderToScreen : Bool;

	function setSize(width:Float, height:Float) : Void;
	function render(renderer:WebGLRenderer, writeBuffer:WebGLRenderTarget, readBuffer:WebGLRenderTarget, delta:Float, ?maskActive:Bool) : Void;
}