package js.three;

import js.html.*;

@:native("THREE.FaceNormalsHelper")
extern class FaceNormalsHelper extends LineSegments
{
	var object : Object3D;
	var size : Float;

	function new(object:Object3D, ?size:Float, ?hex:Int, ?linewidth:Float) : Void;
	function update(object:Object3D) : Void;
}