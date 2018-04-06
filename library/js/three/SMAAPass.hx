package js.three;

import js.html.*;

@:native("THREE.SMAAPass")
extern class SMAAPass
{
	var renderToScreen : Bool;

	function new(width:Float, height:Float) : Void;
}