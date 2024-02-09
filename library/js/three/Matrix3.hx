package js.three;

import js.lib.*;

typedef Matrix3Tuple = Array<Float>;

/**
 * ( class Matrix3 implements Matrix<Matrix3> )
 */
@:native("THREE.Matrix3")
extern class Matrix3
	implements Matrix<Matrix3>
{
	/**
	 * Array with matrix values.
	 * @default [1, 0, 0, 0, 1, 0, 0, 0, 1]
	 */
	var elements : Array<Float>;

	@:overload(function() : Void {})
    function new(n11:Float, n12:Float, n13:Float, n21:Float, n22:Float, n23:Float, n31:Float, n32:Float, n33:Float) : Void;
	
    function set(n11:Float, n12:Float, n13:Float, n21:Float, n22:Float, n23:Float, n31:Float, n32:Float, n33:Float) : Matrix3;
	function identity() : Matrix3;
	function clone() : Matrix3;
	overload function copy(m:Matrix3) : Matrix3;
	function extractBasis(xAxis:Vector3, yAxis:Vector3, zAxis:Vector3) : Matrix3;
	function setFromMatrix4(m:Matrix4) : Matrix3;
	function multiplyScalar(s:Float) : Matrix3;
	function determinant() : Float;
	/**
	 * Inverts this matrix in place.
	 */
	function invert() : Matrix3;
	/**
	 * Transposes this matrix in place.
	 */
	function transpose() : Matrix3;
	function getNormalMatrix(matrix4:Matrix4) : Matrix3;
	/**
	 * Transposes this matrix into the supplied array r, and returns itself.
	 */
	function transposeIntoArray(r:Array<Float>) : Matrix3;
	function setUvTransform(tx:Float, ty:Float, sx:Float, sy:Float, rotation:Float, cx:Float, cy:Float) : Matrix3;
	function scale(sx:Float, sy:Float) : Matrix3;
	/**
	 * Sets this matrix as a 2D translation transform:
	 * 
	 * ```
	 * 1, 0, x,
	 * 0, 1, y,
	 * 0, 0, 1
	 * ```
	 */
	overload function makeTranslation(v:Vector2) : Matrix3;
	/**
	 * Sets this matrix as a 2D translation transform:
	 * 
	 * ```
	 * 1, 0, x,
	 * 0, 1, y,
	 * 0, 0, 1
	 * ```
	 */
	overload function makeTranslation(x:Float, y:Float) : Matrix3;
	/**
	 * Sets this matrix as a 2D rotational transformation by theta radians. The resulting matrix will be:
	 * 
	 * ```
	 * cos(θ) -sin(θ) 0
	 * sin(θ) cos(θ)  0
	 * 0      0       1
	 * ```
	 */
	overload function makeRotation(theta:Float) : Matrix3;
	/**
	 * Sets this matrix as a 2D scale transform:
	 * 
	 * ```
	 * x, 0, 0,
	 * 0, y, 0,
	 * 0, 0, 1
	 * ```
	 */
    overload function makeScale(x:Float, y:Float) : Matrix3;
	function rotate(theta:Float) : Matrix3;
	function translate(tx:Float, ty:Float) : Matrix3;
	function equals(matrix:Matrix3) : Bool;
	/**
	 * Sets the values of this matrix from the provided array or array-like.
	 */
	function fromArray(array:haxe.extern.EitherType<Array<Float>, ArrayLike<Float>>, ?offset:Float) : Matrix3;
	/**
	 * Returns an array with the values of this matrix, or copies them into the provided array.
	 * @return The created or provided array.
	 * Copies he values of this matrix into the provided array-like.
	 * @return The provided array-like.
	 */
	overload function toArray(?array:Array<Float>, ?offset:Float) : Array<Float>;
	/**
	 * Returns an array with the values of this matrix, or copies them into the provided array.
	 * @return The created or provided array.
	 * Copies he values of this matrix into the provided array-like.
	 * @return The provided array-like.
	 */
	overload function toArray(?array:Matrix3Tuple, ?offset:Int) : Matrix3Tuple;
	/**
	 * Returns an array with the values of this matrix, or copies them into the provided array.
	 * @return The created or provided array.
	 * Copies he values of this matrix into the provided array-like.
	 * @return The provided array-like.
	 */
	overload function toArray(?array:ArrayLike<Float>, ?offset:Float) : ArrayLike<Float>;
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
	/**
	 * @deprecated Use {@link Matrix3#invert .invert()} instead.
	 */
	overload function getInverse(matrix:Matrix4, ?throwOnDegenerate:Bool) : Matrix3;
	/**
	 * @deprecated Use {@link Matrix3#invert .invert()} instead.
	 */
	overload function getInverse(matrix:Matrix3) : Matrix3;
	/**
	 * @deprecated Use {@link Matrix3#toArray .toArray()} instead.
	 */
	function flattenToArrayOffset(array:Array<Float>, offset:Float) : Array<Float>;
}