package js.three;

import js.html.*;

/**
 * Defines a 2d shape plane using paths.
 */
@:native("THREE.Shape")
extern class Shape extends Path
{
	function new(?points:Array<Vector2>) : Void;

	var holes : Array<Path>;

	function extrude(?options:Dynamic) : ExtrudeGeometry;
	function makeGeometry(?options:Dynamic) : ShapeGeometry;
	function getPointsHoles(divisions:Int) : Array<Array<Vector2>>;
	function extractAllPoints(divisions:Int) :
	{
		shape : Array<Vector2>,
		holes : Array<Array<Vector2>>
	};
	function extractPoints(divisions:Int) : Array<Vector2>;
}