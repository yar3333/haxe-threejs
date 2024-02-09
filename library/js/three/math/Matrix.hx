package js.three.math;

extern interface Matrix<T>
{
	/**
	 * Array with matrix values.
	 */
	var elements : Array<Float>;

	/**
	 * identity():T;
	 */
	function identity() : T;
	/**
	 * copy(m:T):T;
	 */
	function copy(m:T) : T;
	/**
	 * multiplyScalar(s:number):T;
	 */
	function multiplyScalar(s:Float) : T;
	function determinant() : Float;
	/**
	 * transpose():T;
	 */
	function transpose() : T;
	/**
	 * invert():T;
	 */
	function invert() : T;
	/**
	 * clone():T;
	 */
	function clone() : T;
}