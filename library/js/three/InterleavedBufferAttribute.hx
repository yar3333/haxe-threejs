package js.three;

import js.html.*;

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InterleavedBufferAttribute.js">src/core/InterleavedBufferAttribute.js</a>
 */
@:native("THREE.InterleavedBufferAttribute")
extern class InterleavedBufferAttribute
{
	function new(interleavedBuffer:InterleavedBuffer, itemSize:Float, offset:Float) : Void;

	var uuid : String;
	var data : InterleavedBuffer;
	var itemSize : Float;
	var offset : Float;
	/** Deprecated, use count instead */
	var length : Float;
	var count : Int;

	function getX(index:Int) : Float;
	function setX(index:Int, x:Float) : InterleavedBufferAttribute;
	function getY(index:Int) : Float;
	function setY(index:Int, y:Float) : InterleavedBufferAttribute;
	function getZ(index:Int) : Float;
	function setZ(index:Int, z:Float) : InterleavedBufferAttribute;
	function getW(index:Int) : Float;
	function setW(index:Int, z:Float) : InterleavedBufferAttribute;
	function setXY(index:Int, x:Float, y:Float) : InterleavedBufferAttribute;
	function setXYZ(index:Int, x:Float, y:Float, z:Float) : InterleavedBufferAttribute;
	function setXYZW(index:Int, x:Float, y:Float, z:Float, w:Float) : InterleavedBufferAttribute;
}