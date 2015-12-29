package js.three;

import js.html.*;

@:native("THREE.MaskPass")
extern class MaskPass
{
	function new(scene:Scene, camera:Camera) : Void;

	var scene : Scene;
	var camera : Camera;
	var enabled : Bool;
	var clear : Bool;
	var needsSwap : Bool;
	var inverse : Bool;

	function render(renderer:WebGLRenderer, writeBuffer:WebGLRenderTarget, readBuffer:WebGLRenderTarget, delta:Float) : Void;
}