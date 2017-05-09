package js.three;

import js.html.*;

@:native("THREE.CSS3DObject")
extern class CSS3DObject extends Object3D
{
	var element : Dynamic;

	function new(element:Dynamic) : Void;
}