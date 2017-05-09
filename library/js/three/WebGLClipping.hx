package js.three;

import js.html.*;

@:native("THREE.WebGLClipping")
extern class WebGLClipping
{
	var uniform : { var value : Dynamic; var needsUpdate : Bool; };
	var numPlanes : Float;

	function init(planes:Array<Dynamic>, enableLocalClipping:Bool, camera:Camera) : Bool;
	function beginShadows() : Void;
	function endShadows() : Void;
	function setState(planes:Array<Dynamic>, clipShadows:Bool, camera:Camera, cache:Bool, fromCache:Bool) : Void;
}