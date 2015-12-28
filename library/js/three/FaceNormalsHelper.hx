package js.three;

import js.html.*;

@:native("THREE.FaceNormalsHelper")
extern class FaceNormalsHelper extends LineSegments
{
	function new(object:Object3D, ?size:Float, ?hex:Int, ?linewidth:Float) : Void;

	var object : Object3D;
	var size : Float;

	function update(?object:Object3D) : Void;
}