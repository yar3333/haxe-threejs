package js.three;

import js.html.*;
import js.three.Projector;

// Renderers / Renderables /////////////////////////////////////////////////////////////////////
@:native("THREE.RenderableObject")
extern class RenderableObject
{
	function new() : Void;

	var id : Int;
	var object : Dynamic;
	var z : Float;
}