package js.three;

import js.html.*;

@:native("THREE.ClearMaskPass")
extern class ClearMaskPass
{
	function new() : Void;

	var enabled : Bool;

	function render(renderer:WebGLRenderer, writeBuffer:WebGLRenderTarget, readBuffer:WebGLRenderTarget, delta:Float) : Void;
}