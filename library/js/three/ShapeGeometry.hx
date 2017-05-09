package js.three;

import js.html.*;

@:native("THREE.ShapeGeometry")
extern class ShapeGeometry extends Geometry
{
	function new(shape:Shape, ?options:Dynamic) : Void;
	function new(shapes:Array<Shape>, ?options:Dynamic) : Void;
	function addShapeList(shapes:Array<Shape>, options:Dynamic) : ShapeGeometry;
	function addShape(shape:Shape, options:Dynamic) : Void;
}