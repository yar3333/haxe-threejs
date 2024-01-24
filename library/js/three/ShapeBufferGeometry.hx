package js.three;

import js.lib.*;

@:native("THREE.ShapeBufferGeometry")
extern class ShapeBufferGeometry extends BufferGeometry
{
	@:overload(function(shapes:haxe.extern.EitherType<Shape,Array<Shape>>,?curveSegments:Int):Void{})
	function new() : Void;
}