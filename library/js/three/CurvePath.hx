package js.three;

import js.html.*;

@:native("THREE.CurvePath")
extern class CurvePath<T:Vector> extends Curve<T>
{
	function new() : Void;

	var curves : Array<Curve<T>>;
	var autoClose : Bool;

	function add(curve:Curve<T>) : Void;
	function checkConnection() : Bool;
	function closePath() : Void;
	function getPoint(t:Float) : T;
	function getLength() : Int;
	function getCurveLengths() : Array<Float>;
	function createPointsGeometry(divisions:Int) : Geometry;
	function createSpacedPointsGeometry(divisions:Int) : Geometry;
	function createGeometry(points:Array<T>) : Geometry;
}