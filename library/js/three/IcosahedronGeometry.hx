package js.three;

import js.html.*;

@:native("THREE.IcosahedronGeometry")
extern class IcosahedronGeometry extends PolyhedronGeometry
{
	function new(radius:Float, detail:Float) : Void;
}