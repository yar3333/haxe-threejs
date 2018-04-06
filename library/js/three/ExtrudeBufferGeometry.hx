package js.three;

import js.html.*;

@:native("THREE.ExtrudeBufferGeometry")
extern class ExtrudeBufferGeometry extends BufferGeometry
{
	var WorldUVGenerator : { function generateTopUV(geometry:Geometry, vertices:Array<Float>, indexA:Float, indexB:Float, indexC:Float) : Array<Vector2>; function generateSideWallUV(geometry:Geometry, vertices:Array<Float>, indexA:Float, indexB:Float, indexC:Float, indexD:Float) : Array<Vector2>; };

	@:overload(function(?shapes:Array<Shape>,?options:Dynamic):Void{})
	function new() : Void;
	function addShapeList(shapes:Array<Shape>, ?options:Dynamic) : Void;
	function addShape(shape:Shape, ?options:Dynamic) : Void;
}