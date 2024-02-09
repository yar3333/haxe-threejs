package js.three;

import js.lib.*;

@:native("THREE.WebGLStencilBuffer")
extern class WebGLStencilBuffer
{
	function new() : Void;
	function setTest(stencilTest:Bool) : Void;
	function setMask(stencilMask:Float) : Void;
	function setFunc(stencilFunc:Float, stencilRef:Float, stencilMask:Float) : Void;
	function setOp(stencilFail:Float, stencilZFail:Float, stencilZPass:Float) : Void;
	function setLocked(lock:Bool) : Void;
	function setClear(stencil:Float) : Void;
	function reset() : Void;
}