package js.three;

import js.html.*;

@:native("THREE.PolyhedronBufferGeometry")
extern class PolyhedronBufferGeometry extends BufferGeometry
{
	var parameters : { var vertices : Array<Float>; var indices : Array<Float>; var radius : Float; var detail : Float; };

	@:overload(function(vertices:Array<Float>,indices:Array<Float>,radius:Float,detail:Float):Void{})
	function new() : Void;
}