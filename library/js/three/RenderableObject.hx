package js.three;

import js.lib.*;

@:native("THREE.RenderableObject")
extern class RenderableObject
{
	var id : Int;
	var object : Dynamic;
	var z : Float;

	function new() : Void;
}