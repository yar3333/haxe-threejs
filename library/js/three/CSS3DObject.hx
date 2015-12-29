package js.three;

import js.html.*;

@:native("THREE.CSS3DObject")
extern class CSS3DObject extends Object3D
{
	function new(element:Dynamic) : Void;

	var element : Dynamic;
}