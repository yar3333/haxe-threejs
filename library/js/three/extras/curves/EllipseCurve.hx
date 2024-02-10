package js.three.extras.curves;

import js.three.extras.core.Curve;
import js.three.math.Vector2;

/**
 * Creates a 2d curve in the shape of an ellipse
 * @remarks
 * Setting the {@link xRadius} equal to the {@link yRadius} will result in a circle.
 * @example
 * ```typescript
 * const curve = new THREE.EllipseCurve(
 *   0,  0,  // ax, aY
 *   10, 10, // xRadius, yRadius
 *   0,  2 * Math.PI, // aStartAngle, aEndAngle
 *   false,  // aClockwise
 *   0       // aRotation
 *   );
 * const points = curve.getPoints(50);
 * const geometry = new THREE.BufferGeometry().setFromPoints(points);
 * const material = new THREE.LineBasicMaterial({ color: 0xff0000 });
 * // Create the final object to add to the scene
 * const ellipse = new THREE.Line(geometry, material);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/curves/EllipseCurve | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/curves/EllipseCurve.js | Source}
 */
@:native("THREE.EllipseCurve")
extern class EllipseCurve extends Curve<Vector2>
{
	/**
	 * Read-only flag to check if a given object is of type {@link EllipseCurve}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isEllipseCurve(default, null) : Dynamic;
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `EllipseCurve`
	 */
	//var type : haxe.extern.EitherType<js.three.ellipsecurve.Type, String>;
    
	/**
	 * The X center of the ellipse.
	 * @remarks Expects a `Float`
	 * @defaultValue `0`
	 */
	var aX : Float;
	/**
	 * The Y center of the ellipse.
	 * @remarks Expects a `Float`
	 * @defaultValue `0`
	 */
	var aY : Float;
	/**
	 * The radius of the ellipse in the x direction.
	 * @defaultValue `1`
	 */
	var xRadius : Float;
	/**
	 * The radius of the ellipse in the y direction.
	 * @defaultValue `1`
	 */
	var yRadius : Float;
	/**
	 * The start angle of the curve in radians starting from the middle right side.
	 * @remarks Expects a `Float`
	 * @defaultValue `0`
	 */
	var aStartAngle : Float;
	/**
	 * The end angle of the curve in radians starting from the middle right side.
	 * @remarks Expects a `Float`
	 * @defaultValue `2 * Math.PI`
	 */
	var aEndAngle : Float;
	/**
	 * Whether the ellipse is drawn clockwise.
	 * @defaultValue `false``
	 */
	var aClockwise : Bool;
	/**
	 * The rotation angle of the ellipse in radians, counterclockwise from the positive X axis (optional).
	 * @remarks Expects a `Float`
	 * @defaultValue `0`
	 */
	var aRotation : Float;

	/**
	 * Creates a 2d curve in the shape of an ellipse
	 * @remarks
	 * Setting the {@link xRadius} equal to the {@link yRadius} will result in a circle.
	 * @example
	 * ```typescript
	 * const curve = new THREE.EllipseCurve(
	 *   0,  0,  // ax, aY
	 *   10, 10, // xRadius, yRadius
	 *   0,  2 * Math.PI, // aStartAngle, aEndAngle
	 *   false,  // aClockwise
	 *   0       // aRotation
	 *   );
	 * const points = curve.getPoints(50);
	 * const geometry = new THREE.BufferGeometry().setFromPoints(points);
	 * const material = new THREE.LineBasicMaterial({ color: 0xff0000 });
	 * // Create the final object to add to the scene
	 * const ellipse = new THREE.Line(geometry, material);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/curves/EllipseCurve | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/curves/EllipseCurve.js | Source}
	 */
	function new(?aX:Float, ?aY:Float, ?xRadius:Float, ?yRadius:Float, ?aStartAngle:Float, ?aEndAngle:Float, ?aClockwise:Bool, ?aRotation:Float) : Void;
}