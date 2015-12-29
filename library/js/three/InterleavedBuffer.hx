package js.three;

import js.html.*;

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InterleavedBuffer.js">src/core/InterleavedBuffer.js</a>
 */
@:native("THREE.InterleavedBuffer")
extern class InterleavedBuffer
{
	function new(array:ArrayBufferView, stride:Float) : Void;
	var array : ArrayBufferView;
	var stride : Float;
	inline function dynamicGet() : Bool return untyped this["dynamic"];
	var updateRange : { offset:Float, count:Int };
	var version : Float;
	var length : Float;
	var count : Int;
	var needsUpdate : Bool;

	function setDynamic(dynamic_:Bool) : InterleavedBuffer;
	@:overload(function():InterleavedBuffer{})
	function clone() : InterleavedBuffer;
	function copy(source:InterleavedBuffer) : InterleavedBuffer;
	function copyAt(index1:Float, attribute:InterleavedBufferAttribute, index2:Float) : InterleavedBuffer;
	function set(value:ArrayBufferView, index:Int) : InterleavedBuffer;
}