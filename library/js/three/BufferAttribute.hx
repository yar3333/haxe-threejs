package js.three;

import js.html.*;

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js">src/core/BufferAttribute.js</a>
 */
@:native("THREE.BufferAttribute")
extern class BufferAttribute
{
	function new(array:Array<Float>, itemSize:Float) : Void;// array parameter should be TypedArray.

	var uuid : String;
	var array: Array<Float>;
	var itemSize : Float;
	inline function dynamicGet() : Bool return untyped this["dynamic"];
	var updateRange : { offset:Float, count:Int };
	var version : Float;

	var needsUpdate : Bool;
	/** Deprecated, use count instead */
	var length : Float;
	var count : Int;

	function setDynamic(dynamic_:Bool) : BufferAttribute;
	@:overload(function():BufferAttribute{})
	function clone() : BufferAttribute;
	function copy(source:BufferAttribute) : BufferAttribute;
	function copyAt(index1:Float, attribute:BufferAttribute, index2:Float) : BufferAttribute;
	function copyArray(array:Array<Float>) : BufferAttribute;
	function copyColorsArray(colors:Array<{ r:Float, g:Float, b:Float }>) : BufferAttribute;
	function copyIndicesArray(indices:Array<{ a:Float, b:Float, c:Float }>) : BufferAttribute;
	function copyVector2sArray(vectors:Array<{ x:Float, y:Float }>) : BufferAttribute;
	function copyVector3sArray(vectors:Array<{ x:Float, y:Float, z:Float }>) : BufferAttribute;
	function copyVector4sArray(vectors:Array<{ x:Float, y:Float, z:Float, w:Float }>) : BufferAttribute;
	function set(value:Array<Float>, ?offset:Float) : BufferAttribute;
	function getX(index:Int) : Float;
	function setX(index:Int, x:Float) : BufferAttribute;
	function getY(index:Int) : Float;
	function setY(index:Int, y:Float) : BufferAttribute;
	function getZ(index:Int) : Float;
	function setZ(index:Int, z:Float) : BufferAttribute;
	function getW(index:Int) : Float;
	function setW(index:Int, z:Float) : BufferAttribute;
	function setXY(index:Int, x:Float, y:Float) : BufferAttribute;
	function setXYZ(index:Int, x:Float, y:Float, z:Float) : BufferAttribute;
	function setXYZW(index:Int, x:Float, y:Float, z:Float, w:Float) : BufferAttribute;
}