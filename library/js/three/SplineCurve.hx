package js.three;

import js.html.*;

@:native("THREE.SplineCurve")
extern class SplineCurve extends Curve<Vector2>
{
	function new(?points:Array<Vector2>) : Void;

	var points : Array<Vector2>;
}