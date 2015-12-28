package js.three;

import js.html.*;

@:native("THREE.OctahedronGeometry")
extern class OctahedronGeometry extends PolyhedronGeometry
{
	function new(radius:Float, detail:Int) : Void;

	@:overload(function():OctahedronGeometry{})
	override function clone() : Geometry;
}