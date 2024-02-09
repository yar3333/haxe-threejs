package js.three.extras.curves;

import js.lib.*;

/**
 * Create a smooth **3D** {@link http://en.wikipedia.org/wiki/B%C3%A9zier_curve#mediaviewer/File:B%C3%A9zier_2_big.gif | quadratic bezier curve},
 * defined by a start point, end point and a single control point.
 * @example
 * ```typescript
 * const curve = new THREE.QuadraticBezierCurve3(
 * new THREE.Vector3(-10, 0, 0),
 * new THREE.Vector3(20, 15, 0),
 * new THREE.Vector3(10, 0, 0));
 * const points = curve.getPoints(50);
 * const geometry = new THREE.BufferGeometry().setFromPoints(points);
 * const material = new THREE.LineBasicMaterial({
 *     color: 0xff0000
 * });
 * // Create the final object to add to the scene
 * const curveObject = new THREE.Line(geometry, material);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/curves/QuadraticBezierCurve3 | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/curves/QuadraticBezierCurve3.js | Source}
 */
@:native("THREE.QuadraticBezierCurve3")
extern class QuadraticBezierCurve3 extends Curve<Vector3>
{
	/**
	 * Read-only flag to check if a given object is of type {@link QuadraticBezierCurve3}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isQuadraticBezierCurve3(default, null) : Bool;
    
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `QuadraticBezierCurve3`
	 */
	//var type : haxe.extern.EitherType<js.three.quadraticbeziercurve3.Type, String>;

	/**
	 * The start point.
	 * @defaultValue `new THREE.Vector3()`
	 */
	var v0 : Vector3;
	/**
	 * The control point.
	 * @defaultValue `new THREE.Vector3()`
	 */
	var v1 : Vector3;
	/**
	 * The end point.
	 * @defaultValue `new THREE.Vector3()`
	 */
	var v2 : Vector3;

	/**
	 * Create a smooth **3D** {@link http://en.wikipedia.org/wiki/B%C3%A9zier_curve#mediaviewer/File:B%C3%A9zier_2_big.gif | quadratic bezier curve},
	 * defined by a start point, end point and a single control point.
	 * @example
	 * ```typescript
	 * const curve = new THREE.QuadraticBezierCurve3(
	 * new THREE.Vector3(-10, 0, 0),
	 * new THREE.Vector3(20, 15, 0),
	 * new THREE.Vector3(10, 0, 0));
	 * const points = curve.getPoints(50);
	 * const geometry = new THREE.BufferGeometry().setFromPoints(points);
	 * const material = new THREE.LineBasicMaterial({
	 *     color: 0xff0000
	 * });
	 * // Create the final object to add to the scene
	 * const curveObject = new THREE.Line(geometry, material);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/curves/QuadraticBezierCurve3 | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/curves/QuadraticBezierCurve3.js | Source}
	 */
	function new(?v0:Vector3, ?v1:Vector3, ?v2:Vector3) : Void;
}