package js.three;

import js.html.*;

@:native("THREE.WebGLRenderTargetCube")
extern class WebGLRenderTargetCube extends WebGLRenderTarget
{
	var activeCubeFace : Float;
	var activeMipMapLevel : Float;

	function new(width:Float, height:Float, ?options:WebGLRenderTargetOptions) : Void;
}