package js.three;

import js.lib.*;

@:native("THREE.SplineCurve")
extern class SplineCurve extends Curve<Vector2>
{
	var points : Array<Vector2>;

	function new(?points:Array<Vector2>) : Void;
}