package js.three.extras.core;

import js.three.math.Vector3;
import js.three.math.Vector2;

/**
 * Curved Path - a curve path is simply a array of connected curves, but retains the api of a curve.
 * @remarks
 * A {@link CurvePath} is simply an array of connected curves, but retains the api of a curve.
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/core/CurvePath | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/core/CurvePath.js | Source}
 */
@:jsRequire("three")
@:native("THREE.CurvePath")
extern class CurvePath<TVector:haxe.extern.EitherType<Vector2, Vector3>> extends Curve<TVector>
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `CurvePath`
	 * Returns an array of points representing a sequence of curves
	 * @remarks
	 * The `division` parameter defines the number of pieces each curve is divided into
	 * However, for optimization and quality purposes, the actual sampling resolution for each curve depends on its type
	 * For example, for a {@link THREE.LineCurve | LineCurve}, the returned number of points is always just 2.
	 * Returns a set of divisions `+1` equi-spaced points using {@link .getPointAt | getPointAt(u)}.
	 */
	//var type : haxe.extern.EitherType<js.three.curvepath.Type, String>;
	
    /**
	 * The array of {@link Curve | Curves}.
	 * @defaultValue `[]`
	 */
	var curves : Array<Curve<TVector>>;
	
    /**
	 * Whether or not to automatically close the path.
	 * @defaultValue false
	 */
	var autoClose : Bool;

	/**
	 * Curved Path - a curve path is simply a array of connected curves, but retains the api of a curve.
	 * @remarks
	 * A {@link CurvePath} is simply an array of connected curves, but retains the api of a curve.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/core/CurvePath | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/core/CurvePath.js | Source}
	 */
	function new() : Void;
	
    /**
	 * Add a curve to the {@link .curves} array.
	 */
	function add(curve:Curve<TVector>) : Void;
	
    /**
	 * Adds a {@link LineCurve | lineCurve} to close the path.
	 */
	function closePath() : CurvePath<TVector>;
	
    function getPoint(t:Float, ?optionalTarget:TVector) : TVector;
	
    /**
	 * Get list of cumulative curve lengths of the curves in the {@link .curves} array.
	 */
	function getCurveLengths() : Array<Float>;
}