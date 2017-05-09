package js.three;

import js.html.*;

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InterleavedBuffer.js">src/core/InterleavedBuffer.js</a>
 */
@:native("THREE.InterleavedBuffer")
extern class InterleavedBuffer
{
	var array : ArrayLike<Float>;
	var stride : Float;
	var dynamic : Bool;
	var updateRange : { var offset : Float; var count : Float; };
	var version : Float;
	var length : Float;
	var count : Int;
	var needsUpdate : Bool;

	/**
	 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InterleavedBuffer.js">src/core/InterleavedBuffer.js</a>
	 */
	function new(array:ArrayLike<Float>, stride:Float) : Void;
	function setDynamic(dynamic:Bool) : InterleavedBuffer;
	function clone() : InterleavedBuffer;
	function copy(source:InterleavedBuffer) : InterleavedBuffer;
	function copyAt(index1:Float, attribute:InterleavedBufferAttribute, index2:Float) : InterleavedBuffer;
	function set(value:ArrayLike<Float>, index:Int) : InterleavedBuffer;
	function clone() : InterleavedBuffer;
}