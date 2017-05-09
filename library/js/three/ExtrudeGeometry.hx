package js.three;

import js.html.*;

@:native("THREE.ExtrudeGeometry")
extern class ExtrudeGeometry extends Geometry
{
	var WorldUVGenerator : { function generateTopUV(geometry:Geometry, indexA:Float, indexB:Float, indexC:Float) : Array<Vector2>; function generateSideWallUV(geometry:Geometry, indexA:Float, indexB:Float, indexC:Float, indexD:Float) : Array<Vector2>; };

	function new(?shape:Shape, ?options:Dynamic) : Void;
	function new(?shapes:Array<Shape>, ?options:Dynamic) : Void;
	function addShapeList(shapes:Array<Shape>, options:Dynamic) : Void;
	function addShape(shape:Shape, options:Dynamic) : Void;
}