package js.three;

import js.lib.*;

@:native("THREE.WebGLRenderTargetCube")
extern class WebGLRenderTargetCube extends WebGLRenderTarget
{
	var activeCubeFace : Float;
	var activeMipMapLevel : Float;

	@:overload(function(width:Float,height:Float,?options:WebGLRenderTargetOptions):Void{})
	function new() : Void;
}