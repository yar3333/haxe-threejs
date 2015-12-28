package js.three;

import js.html.*;

@:native("THREE.PolyhedronGeometry")
extern class PolyhedronGeometry extends Geometry
{
	function new(vertices:Array<Vector3>, faces:Array<Face3>, ?radius:Float, ?detail:Float) : Void;

	var parameters :
	{
		vertices: Array<Vector3>,
		faces: Array<Face3>,
		radius: Float,
		detail: Float
	};

	@:overload(function():PolyhedronGeometry{})
	override function clone() : Geometry;
}