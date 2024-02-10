package js.three.renderers.webgl;

import js.three.Constants;

@:jsRequire("three")
@:native("THREE.WebGLDepthBuffer")
extern class WebGLDepthBuffer
{
	function new() : Void;
	function setTest(depthTest:Bool) : Void;
	function setMask(depthMask:Bool) : Void;
	function setFunc(depthFunc:DepthModes) : Void;
	function setLocked(lock:Bool) : Void;
	function setClear(depth:Float) : Void;
	function reset() : Void;
}