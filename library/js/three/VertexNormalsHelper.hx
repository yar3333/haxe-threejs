package js.three;

import js.html.*;

@:native("THREE.VertexNormalsHelper")
extern class VertexNormalsHelper extends LineSegments
{
	function new(object:Object3D, ?size:Float, ?hex:Int, ?linewidth:Float) : Void;

	var object : Object3D;
	var size : Float;

	function update(?object:Object3D) : Void;
}