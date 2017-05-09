package js.three;

import js.html.*;

@:native("THREE.BoundingBoxHelper")
extern class BoundingBoxHelper extends Mesh
{
	var object : Object3D;
	var box : Box3;

	function new(?object:Object3D, ?hex:Int) : Void;
	function update() : Void;
}