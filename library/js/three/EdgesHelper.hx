package js.three;

import js.html.*;

@:native("THREE.EdgesHelper")
extern class EdgesHelper extends LineSegments
{
	function new(object:Object3D, ?hex:Int, ?thresholdAngle:Float) : Void;
}