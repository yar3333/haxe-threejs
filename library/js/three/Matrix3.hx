package js.three;

import js.html.*;

/**
 * ( class Matrix3 implements Matrix&lt;Matrix3&gt; )
 */
@:native("THREE.Matrix3")
extern class Matrix3
	implements Matrix
{
	/**
	 * Float32Array with matrix values.
	 */
	var elements : Float32Array;

	/**
	 * ( class Matrix3 implements Matrix&lt;Matrix3&gt; )
	 */
	function new() : Void;
	function set(n11:Float, n12:Float, n13:Float, n21:Float, n22:Float, n23:Float, n31:Float, n32:Float, n33:Float) : Matrix3;
	@:overload(function():Matrix3{})
	function identity() : Matrix;
	@:overload(function():Matrix3{})
	function clone() : Matrix;
	@:overload(function(m:Matrix3):Matrix3{})
	function copy(m:Matrix) : Matrix;
	function setFromMatrix4(m:Matrix4) : Matrix3;
	/**
	 * @deprecated Use {@link Matrix3#applyToBufferAttribute matrix3.applyToBufferAttribute( attribute )} instead.
	 */
	function applyToBuffer(buffer:BufferAttribute, ?offset:Float, ?length:Float) : BufferAttribute;
	function applyToBufferAttribute(attribute:BufferAttribute) : BufferAttribute;
	@:overload(function(s:Float):Matrix3{})
	function multiplyScalar(s:Float) : Matrix;
	function determinant() : Float;
	@:overload(function(matrix:Matrix3,?throwOnDegenerate:Bool):Matrix3{})
	@:overload(function(matrix:Matrix, ?throwOnInvertible:Bool):Matrix{})
	function getInverse(matrix:Matrix, ?throwOnInvertible:Bool) : Matrix;
	/**
	 * Transposes this matrix in place.
	 */
	@:overload(function():Matrix3{})
	function transpose() : Matrix;
	function getNormalMatrix(matrix4:Matrix4) : Matrix3;
	/**
	 * Transposes this matrix into the supplied array r, and returns itself.
	 */
	function transposeIntoArray(r:Array<Float>) : Array<Float>;
	function fromArray(array:Array<Float>, ?offset:Float) : Matrix3;
	function toArray() : Array<Float>;
	/**
	 * Multiplies this matrix by m.
	 */
	function multiply(m:Matrix3) : Matrix3;
	function premultiply(m:Matrix3) : Matrix3;
	/**
	 * Sets this matrix to a x b.
	 */
	function multiplyMatrices(a:Matrix3, b:Matrix3) : Matrix3;
	/**
	 * @deprecated Use {@link Vector3.applyMatrix3 vector.applyMatrix3( matrix )} instead.
	 */
	function multiplyVector3(vector:Vector3) : Dynamic;
	/**
	 * @deprecated This method has been removed completely.
	 */
	function multiplyVector3Array(a:Dynamic) : Dynamic;
	@:overload(function(matrix:Matrix4,?throwOnDegenerate:Bool):Matrix3{})
	/**
	 * @deprecated Use {@link Matrix3#toArray .toArray()} instead.
	 */
	function flattenToArrayOffset(array:Array<Float>, offset:Float) : Array<Float>;
}