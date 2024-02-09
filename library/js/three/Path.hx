package js.three;

import js.lib.*;

/**
 * A 2D {@link Path} representation.
 * @remarks
 * The class provides methods for creating paths and contours of 2D shapes similar to the 2D Canvas API.
 * @example
 * ```typescript
 * const {@link Path} = new THREE.Path();
 * path.lineTo(0, 0.8);
 * path.quadraticCurveTo(0, 1, 0.2, 1);
 * path.lineTo(1, 1);
 * const points = path.getPoints();
 * const geometry = new THREE.BufferGeometry().setFromPoints(points);
 * const material = new THREE.LineBasicMaterial({
 *     color: 0xffffff
 * });
 * const line = new THREE.Line(geometry, material);
 * scene.add(line);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/core/Path | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/core/Path.js | Source}
 */
@:native("THREE.Path")
extern class Path extends CurvePath<Vector2>
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `Path`
	 */
	var override : Dynamic;
	var type : haxe.extern.EitherType<js.three.path.Type, String>;
	/**
	 * The current offset of the path. Any new {@link THREE.Curve | Curve} added will start here.
	 * @defaultValue `new THREE.Vector2()`
	 */
	var currentPoint : Vector2;

	/**
	 * A 2D {@link Path} representation.
	 * @remarks
	 * The class provides methods for creating paths and contours of 2D shapes similar to the 2D Canvas API.
	 * @example
	 * ```typescript
	 * const {@link Path} = new THREE.Path();
	 * path.lineTo(0, 0.8);
	 * path.quadraticCurveTo(0, 1, 0.2, 1);
	 * path.lineTo(1, 1);
	 * const points = path.getPoints();
	 * const geometry = new THREE.BufferGeometry().setFromPoints(points);
	 * const material = new THREE.LineBasicMaterial({
	 *     color: 0xffffff
	 * });
	 * const line = new THREE.Line(geometry, material);
	 * scene.add(line);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/core/Path | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/core/Path.js | Source}
	 */
	function new(?points:Array<Vector2>) : Void;
	/**
	 * Adds an absolutely positioned {@link THREE.EllipseCurve | EllipseCurve} to the path.
	 */
	function absarc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool) : Path;
	/**
	 * Adds an absolutely positioned {@link THREE.EllipseCurve | EllipseCurve} to the path.
	 */
	function absellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool, ?aRotation:Float) : Path;
	/**
	 * Adds an {@link THREE.EllipseCurve | EllipseCurve} to the path, positioned relative to {@link .currentPoint}.
	 */
	function arc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool) : Path;
	/**
	 * This creates a bezier curve from {@link .currentPoint} with (cp1X, cp1Y) and (cp2X, cp2Y) as control points and updates {@link .currentPoint} to x and y.
	 */
	function bezierCurveTo(aCP1x:Float, aCP1y:Float, aCP2x:Float, aCP2y:Float, aX:Float, aY:Float) : Path;
	/**
	 * Adds an {@link THREE.EllipseCurve | EllipseCurve} to the path, positioned relative to {@link .currentPoint}.
	 */
	function ellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool, ?aRotation:Float) : Path;
	/**
	 * Connects a {@link THREE.LineCurve | LineCurve} from {@link .currentPoint} to x, y onto the path.
	 */
	function lineTo(x:Float, y:Float) : Path;
	/**
	 * Move the {@link .currentPoint} to x, y.
	 */
	function moveTo(x:Float, y:Float) : Path;
	/**
	 * Creates a quadratic curve from {@link .currentPoint} with cpX and cpY as control point and updates {@link .currentPoint} to x and y.
	 */
	function quadraticCurveTo(aCPx:Float, aCPy:Float, aX:Float, aY:Float) : Path;
	/**
	 * Points are added to the {@link CurvePath.curves | curves} array as {@link THREE.LineCurve | LineCurves}.
	 */
	function setFromPoints(vectors:Array<Vector2>) : Path;
	/**
	 * Connects a new {@link THREE.SplineCurve | SplineCurve} onto the path.
	 * @link Vector2 | Vector2's}
	 */
	function splineThru(pts:Array<Vector2>) : Path;
}