package js.three;

import js.html.*;

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedBufferGeometry.js">src/core/InstancedBufferGeometry.js</a>
 */
@:native("THREE.InstancedBufferGeometry")
extern class InstancedBufferGeometry extends BufferGeometry
{
	function new() : Void;
	//var groups : Array<{ start:Float, count:Int, instances:Float }>;
	@:overload(function(start:Float,count:Int,instances:Float):Void{})
	override function addGroup(start:Int, count:Int, ?materialIndex:Int) : Void;

	@:overload(function():InstancedBufferGeometry{})
	override function clone() : BufferGeometry;
	@:overload(function(source:InstancedBufferGeometry):InstancedBufferGeometry{})
	override function copy(source:BufferGeometry) : BufferGeometry;
}