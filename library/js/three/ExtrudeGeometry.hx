package js.three;

import js.lib.*;

@:native("THREE.ExtrudeGeometry")
extern class ExtrudeGeometry extends Geometry
{
	static var WorldUVGenerator : { function generateTopUV(geometry:Geometry, vertex:Array<Float>, indexA:Float, indexB:Float, indexC:Float) : Array<Vector2>; function generateSideWallUV(geometry:Geometry, vertex:Array<Float>, indexA:Float, indexB:Float, indexC:Float, indexD:Float) : Array<Vector2>; };

	@:overload(function(?shape:Shape,?options:Dynamic):Void{})
	@:overload(function():Void{})
	function new() : Void;
	@:overload(function(?shapes:Array<Shape>,?options:Dynamic):Void{})
	function addShapeList(shapes:Array<Shape>, ?options:Dynamic) : Void;
	function addShape(shape:Shape, ?options:Dynamic) : Void;
}