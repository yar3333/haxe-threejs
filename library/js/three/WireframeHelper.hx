package js.three;

import js.html.*;

@:native("THREE.WireframeHelper")
extern class WireframeHelper extends LineSegments
{
	function new(object:Object3D, ?hex:Int) : Void;
}