package js.three.extras.core;

import js.three.math.Color;
import js.three.math.Vector2;

/**
 * This class is used to convert a series of shapes to an array of {@link THREE.Path | Path's},
 * for example an SVG shape to a path.
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/core/ShapePath | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/core/ShapePath.js | Source}
 */
@:jsRequire("three", "ShapePath")
@:native("THREE.ShapePath")
extern class ShapePath
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `ShapePath`
	 */
	var type(default, null) : String; // "ShapePath"
	/**
	 * Array of {@link THREE.Path | Path's}s.
	 * @defaultValue `[]`
	 */
	var subPaths : Array<Path>;
	/**
	 * The current {@link THREE.Path | Path} that is being generated.
	 * @defaultValue `null`
	 */
	var currentPath(default, null) : Path;
	/**
	 * {@link THREE.Color | Color} of the shape, by default set to white _(0xffffff)_.
	 * @defaultValue `new THREE.Color()`
	 */
	var color : Color;

	/**
	 * This class is used to convert a series of shapes to an array of {@link THREE.Path | Path's},
	 * for example an SVG shape to a path.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/core/ShapePath | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/core/ShapePath.js | Source}
	 */
	function new() : Void;
	/**
	 * Starts a new {@link THREE.Path | Path} and calls {@link THREE.Path.moveTo | Path.moveTo}( x, y ) on that {@link THREE.Path | Path}
	 * @remarks
	 * Also points {@link ShapePath.currentPath | currentPath} to that {@link THREE.Path | Path}.
	 */
	function moveTo(x:Float, y:Float) : ShapePath;
	/**
	 * This creates a line from the {@link ShapePath.currentPath | currentPath}'s offset to X and Y and updates the offset to X and Y.
	 */
	function lineTo(x:Float, y:Float) : ShapePath;
	/**
	 * This creates a quadratic curve from the {@link ShapePath.currentPath | currentPath}'s
	 * offset to _x_ and _y_ with _cpX_ and _cpY_ as control point and updates the {@link ShapePath.currentPath | currentPath}'s offset to _x_ and _y_.
	 */
	function quadraticCurveTo(aCPx:Float, aCPy:Float, aX:Float, aY:Float) : ShapePath;
	/**
	 * This creates a bezier curve from the {@link ShapePath.currentPath | currentPath}'s
	 * offset to _x_ and _y_ with _cp1X_, _cp1Y_ and _cp2X_, _cp2Y_ as control points and
	 * updates the {@link ShapePath.currentPath | currentPath}'s offset to _x_ and _y_.
	 */
	function bezierCurveTo(aCP1x:Float, aCP1y:Float, aCP2x:Float, aCP2y:Float, aX:Float, aY:Float) : ShapePath;
	/**
	 * Connects a new {@link THREE.SplineCurve | SplineCurve} onto the {@link ShapePath.currentPath | currentPath}.
	 * @link THREE.Vector2 | Vector2}s
	 */
	function splineThru(pts:Array<Vector2>) : ShapePath;
	/**
	 * Converts the {@link ShapePath.subPaths | subPaths} array into an array of Shapes
	 * @remarks
	 * By default solid shapes are defined clockwise (CW) and holes are defined counterclockwise (CCW)
	 * If isCCW is set to true, then those are flipped.
	 */
	function toShapes(isCCW:Bool) : Array<Shape>;
}