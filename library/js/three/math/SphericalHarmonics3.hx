package js.three.math;

@:jsRequire("three")
@:native("THREE.SphericalHarmonics3")
extern class SphericalHarmonics3
{
	/**
	 * @default [new THREE.Vector3(), new THREE.Vector3(), new THREE.Vector3(), new THREE.Vector3(),
	 * new THREE.Vector3(), new THREE.Vector3(), new THREE.Vector3(), new THREE.Vector3(), new THREE.Vector3()]
	 */
	var coefficients : Array<Vector3>;
	var isSphericalHarmonics3(default, null) : Bool;

	function new() : Void;
	function set(coefficients:Array<Vector3>) : SphericalHarmonics3;
	function zero() : SphericalHarmonics3;
	function add(sh:SphericalHarmonics3) : SphericalHarmonics3;
	function addScaledSH(sh:SphericalHarmonics3, s:Float) : SphericalHarmonics3;
	function scale(s:Float) : SphericalHarmonics3;
	function lerp(sh:SphericalHarmonics3, alpha:Float) : SphericalHarmonics3;
	function equals(sh:SphericalHarmonics3) : Bool;
	function copy(sh:SphericalHarmonics3) : SphericalHarmonics3;
	function clone() : SphericalHarmonics3;
	/**
	 * Sets the values of this spherical harmonics from the provided array or array-like.
	 */
	function fromArray(array:haxe.extern.EitherType<Array<Float>, ArrayLike<Float>>, ?offset:Float) : SphericalHarmonics3;
	
    /**
	 * Returns an array with the values of this spherical harmonics, or copies them into the provided array.
	 * @return The created or provided array.
	 * Returns an array with the values of this spherical harmonics, or copies them into the provided array-like.
	 * @return The provided array-like.
	 */
	overload function toArray(?array:Array<Float>, ?offset:Float) : Array<Float>;
	
    /**
	 * Returns an array with the values of this spherical harmonics, or copies them into the provided array.
	 * @return The created or provided array.
	 * Returns an array with the values of this spherical harmonics, or copies them into the provided array-like.
	 * @return The provided array-like.
	 */
    overload function toArray(array:ArrayLike<Float>, ?offset:Float) : ArrayLike<Float>;
	
    function getAt(normal:Vector3, target:Vector3) : Vector3;
	function getIrradianceAt(normal:Vector3, target:Vector3) : Vector3;
	static function getBasisAt(normal:Vector3, shBasis:Array<Float>) : Void;
}