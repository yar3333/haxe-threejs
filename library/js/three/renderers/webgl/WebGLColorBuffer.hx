package js.three.renderers.webgl;

@:jsRequire("three")
@:native("THREE.WebGLColorBuffer")
extern class WebGLColorBuffer
{
	function new() : Void;
	function setMask(colorMask:Bool) : Void;
	function setLocked(lock:Bool) : Void;
	function setClear(r:Float, g:Float, b:Float, a:Float, premultipliedAlpha:Bool) : Void;
	function reset() : Void;
}