package js.three;

import js.html.*;

/**
 * Defines a 2d shape plane using paths.
 */
@:native("THREE.Shape")
extern class Shape extends Path
{
	var holes : Array<Path>;

	/**
	 * Defines a 2d shape plane using paths.
	 */
	function new(?points:Array<Vector2>) : Void;
	/**
	 * @deprecated Use {@link ExtrudeGeometry ExtrudeGeometry()} instead.
	 */
	function extrude(?options:Dynamic) : ExtrudeGeometry;
	/**
	 * @deprecated Use {@link ShapeGeometry ShapeGeometry()} instead.
	 */
	function makeGeometry(?options:Dynamic) : ShapeGeometry;
	function getPointsHoles(divisions:Int) : Array<Array<Vector2>>;
	/**
	 * @deprecated Use {@link Shape#extractPoints .extractPoints()} instead.
	 */
	function extractAllPoints(divisions:Int) : { var shape : Array<Vector2>; var holes : Array<Array<Vector2>>; };
	function extractPoints(divisions:Int) : Array<Vector2>;
}