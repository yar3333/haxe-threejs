package js.three.math;

import js.three.Constants;

typedef Matrix4Tuple = Array<Float>;

/**
 * A 4x4 Matrix.
 * 
 * @example
 * // Simple rig for rotating around 3 axes
 * const m = new THREE.Matrix4();
 * const m1 = new THREE.Matrix4();
 * const m2 = new THREE.Matrix4();
 * const m3 = new THREE.Matrix4();
 * const alpha = 0;
 * const beta = Math.PI;
 * const gamma = Math.PI/2;
 * m1.makeRotationX( alpha );
 * m2.makeRotationY( beta );
 * m3.makeRotationZ( gamma );
 * m.multiplyMatrices( m1, m2 );
 * m.multiply( m3 );
 */
@:jsRequire("three")
@:native("THREE.Matrix4")
extern class Matrix4
	implements Matrix<Matrix4>
{
	/**
	 * Array with matrix values.
	 * @default [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]
	 */
	var elements : Array<Float>;

	/**
	 * A 4x4 Matrix.
	 * 
	 * @example
	 * // Simple rig for rotating around 3 axes
	 * const m = new THREE.Matrix4();
	 * const m1 = new THREE.Matrix4();
	 * const m2 = new THREE.Matrix4();
	 * const m3 = new THREE.Matrix4();
	 * const alpha = 0;
	 * const beta = Math.PI;
	 * const gamma = Math.PI/2;
	 * m1.makeRotationX( alpha );
	 * m2.makeRotationY( beta );
	 * m3.makeRotationZ( gamma );
	 * m.multiplyMatrices( m1, m2 );
	 * m.multiply( m3 );
	 */
    @:overload(function() : Void {})
    function new(n11:Float, n12:Float, n13:Float, n14:Float, n21:Float, n22:Float, n23:Float, n24:Float, n31:Float, n32:Float, n33:Float, n34:Float, n41:Float, n42:Float, n43:Float, n44:Float) : Void;
	/**
	 * Sets all fields of this matrix.
	 */
	function set(n11:Float, n12:Float, n13:Float, n14:Float, n21:Float, n22:Float, n23:Float, n24:Float, n31:Float, n32:Float, n33:Float, n34:Float, n41:Float, n42:Float, n43:Float, n44:Float) : Matrix4;
	/**
	 * Resets this matrix to identity.
	 */
	function identity() : Matrix4;
	function clone() : Matrix4;
	overload function copy(m:Matrix4) : Matrix4;
	function copyPosition(m:Matrix4) : Matrix4;
	function extractBasis(xAxis:Vector3, yAxis:Vector3, zAxis:Vector3) : Matrix4;
	function makeBasis(xAxis:Vector3, yAxis:Vector3, zAxis:Vector3) : Matrix4;
	/**
	 * Copies the rotation component of the supplied matrix m into this matrix rotation component.
	 */
	function extractRotation(m:Matrix4) : Matrix4;
	function makeRotationFromEuler(euler:Euler) : Matrix4;
	function makeRotationFromQuaternion(q:Quaternion) : Matrix4;
	/**
	 * Constructs a rotation matrix, looking from eye towards center with defined up vector.
	 */
	function lookAt(eye:Vector3, target:Vector3, up:Vector3) : Matrix4;
	/**
	 * Multiplies this matrix by m.
	 */
	function multiply(m:Matrix4) : Matrix4;
	function premultiply(m:Matrix4) : Matrix4;
	/**
	 * Sets this matrix to a x b.
	 */
	function multiplyMatrices(a:Matrix4, b:Matrix4) : Matrix4;
	/**
	 * Sets this matrix to a x b and stores the result into the flat array r.
	 * r can be either a regular Array or a TypedArray.
	 * 
	 * @deprecated This method has been removed completely.
	 */
	function multiplyToArray(a:Matrix4, b:Matrix4, r:Array<Float>) : Matrix4;
	/**
	 * Multiplies this matrix by s.
	 */
	function multiplyScalar(s:Float) : Matrix4;
	/**
	 * Computes determinant of this matrix.
	 * Based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm
	 */
	function determinant() : Float;
	/**
	 * Transposes this matrix.
	 */
	function transpose() : Matrix4;
	/**
	 * Sets the position component for this matrix from vector v.
	 */
    overload function setPosition(v:Vector3) : Matrix4;
	/**
	 * Sets the position component for this matrix from vector v.
	 */
	overload function setPosition(x:Float, y:Float, z:Float) : Matrix4;
	/**
	 * Inverts this matrix.
	 */
	function invert() : Matrix4;
	/**
	 * Multiplies the columns of this matrix by vector v.
	 */
	function scale(v:Vector3) : Matrix4;
	function getMaxScaleOnAxis() : Float;
	/**
	 * Sets this matrix as translation transform.
	 */
    overload function makeTranslation(v:Vector3) : Matrix4;
	/**
	 * Sets this matrix as translation transform.
	 */
    overload function makeTranslation(x:Float, y:Float, z:Float) : Matrix4;
	/**
	 * Sets this matrix as rotation transform around x axis by theta radians.
	 */
	function makeRotationX(theta:Float) : Matrix4;
	/**
	 * Sets this matrix as rotation transform around y axis by theta radians.
	 */
	function makeRotationY(theta:Float) : Matrix4;
	/**
	 * Sets this matrix as rotation transform around z axis by theta radians.
	 */
	function makeRotationZ(theta:Float) : Matrix4;
	/**
	 * Sets this matrix as rotation transform around axis by angle radians.
	 * Based on http://www.gamedev.net/reference/articles/article1199.asp.
	 */
	function makeRotationAxis(axis:Vector3, angle:Float) : Matrix4;
	/**
	 * Sets this matrix as scale transform.
	 */
	function makeScale(x:Float, y:Float, z:Float) : Matrix4;
	/**
	 * Sets this matrix as shear transform.
	 */
	function makeShear(xy:Float, xz:Float, yx:Float, yz:Float, zx:Float, zy:Float) : Matrix4;
	/**
	 * Sets this matrix to the transformation composed of translation, rotation and scale.
	 */
	function compose(translation:Vector3, rotation:Quaternion, scale:Vector3) : Matrix4;
	/**
	 * Decomposes this matrix into it's position, quaternion and scale components.
	 */
	function decompose(translation:Vector3, rotation:Quaternion, scale:Vector3) : Matrix4;
	/**
	 * Creates a perspective projection matrix.
	 */
	function makePerspective(left:Float, right:Float, top:Float, bottom:Float, near:Float, far:Float, ?coordinateSystem:CoordinateSystem) : Matrix4;
	/**
	 * Creates an orthographic projection matrix.
	 */
	function makeOrthographic(left:Float, right:Float, top:Float, bottom:Float, near:Float, far:Float, ?coordinateSystem:CoordinateSystem) : Matrix4;
	function equals(matrix:Matrix4) : Bool;
	/**
	 * Sets the values of this matrix from the provided array or array-like.
	 */
	function fromArray(array:haxe.extern.EitherType<Array<Float>, ArrayLike<Float>>, ?offset:Float) : Matrix4;
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
	overload function toArray(?array:Matrix4Tuple, ?offset:Int) : Matrix4Tuple;
	/**
	 * Returns an array with the values of this matrix, or copies them into the provided array.
	 * @return The created or provided array.
	 * Copies he values of this matrix into the provided array-like.
	 * @return The provided array-like.
	 */
	overload function toArray(?array:ArrayLike<Float>, ?offset:Float) : ArrayLike<Float>;
	/**
	 * Set the upper 3x3 elements of this matrix to the values of the Matrix3 m.
	 */
	function setFromMatrix3(m:Matrix3) : Matrix4;
	/**
	 * @deprecated Use {@link Matrix4#copyPosition .copyPosition()} instead.
	 */
	function extractPosition(m:Matrix4) : Matrix4;
	/**
	 * @deprecated Use {@link Matrix4#makeRotationFromQuaternion .makeRotationFromQuaternion()} instead.
	 */
	function setRotationFromQuaternion(q:Quaternion) : Matrix4;
	/**
	 * @deprecated Use {@link Vector3#applyMatrix4 vector.applyMatrix4( matrix )} instead.
	 */
	function multiplyVector3(v:Dynamic) : Dynamic;
	/**
	 * @deprecated Use {@link Vector4#applyMatrix4 vector.applyMatrix4( matrix )} instead.
	 */
	function multiplyVector4(v:Dynamic) : Dynamic;
	/**
	 * @deprecated This method has been removed completely.
	 */
	function multiplyVector3Array(array:Array<Float>) : Array<Float>;
	/**
	 * @deprecated Use {@link Vector3#transformDirection Vector3.transformDirection( matrix )} instead.
	 */
	function rotateAxis(v:Dynamic) : Void;
	/**
	 * @deprecated Use {@link Vector3#applyMatrix4 vector.applyMatrix4( matrix )} instead.
	 */
	function crossVector(v:Dynamic) : Void;
	/**
	 * @deprecated Use {@link Matrix4#toArray .toArray()} instead.
	 */
	function flattenToArrayOffset(array:Array<Float>, offset:Float) : Array<Float>;
	/**
	 * @deprecated Use {@link Matrix4#invert .invert()} instead.
	 */
	function getInverse(matrix:Matrix4) : Matrix4;
}