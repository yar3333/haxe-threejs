package js.three;

import js.three.types.CurveType;
import js.lib.*;

/**
 * An abstract base class for creating a {@link Curve} object that contains methods for interpolation
 * @remarks
 * For an array of Curves see {@link THREE.CurvePath | CurvePath}.
 * @remarks
 * This following curves inherit from THREE.Curve:
 * 
 * **2D curves**
 *  - {@link THREE.ArcCurve}
 *  - {@link THREE.CubicBezierCurve}
 *  - {@link THREE.EllipseCurve}
 *  - {@link THREE.LineCurve}
 *  - {@link THREE.QuadraticBezierCurve}
 *  - {@link THREE.SplineCurve}
 * 
 * **3D curves**
 *  - {@link THREE.CatmullRomCurve3}
 *  - {@link THREE.CubicBezierCurve3}
 *  - {@link THREE.LineCurve3}
 *  - {@link THREE.QuadraticBezierCurve3}
 * 
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/core/Curve | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/core/Curve.js | Source}
 */
@:native("THREE.Curve")
extern class Curve<TVector:haxe.extern.EitherType<Vector2, Vector3>>
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `Curve`
	 */
	var type(default, null) : CurveType;
    
	/**
	 * This value determines the amount of divisions when calculating the cumulative segment lengths of a {@link Curve}
	 * via {@link .getLengths}.
	 * To ensure precision when using methods like {@link .getSpacedPoints}, it is recommended to increase {@link .arcLengthDivisions} if the {@link Curve} is very large.
	 * @defaultValue `200`
	 * @remarks Expects a `Integer`
	 */
	var arcLengthDivisions : Float;

	function new() : Void;
	/**
	 * Returns a vector for a given position on the curve.
	 */
	function getPoint(t:Float, ?optionalTarget:TVector) : TVector;
	/**
	 * Returns a vector for a given position on the {@link Curve} according to the arc length.
	 * @link Curve} according to the arc length. Must be in the range `[ 0, 1 ]`. Expects a `Float`
	 */
	function getPointAt(u:Float, ?optionalTarget:TVector) : TVector;
	/**
	 * Returns a set of divisions `+1` points using {@link .getPoint | getPoint(t)}.
	 * @link Curve} into. Expects a `Integer`. Default `5`
	 */
	function getPoints(?divisions:Int) : Array<TVector>;
	/**
	 * Returns a set of divisions `+1` equi-spaced points using {@link .getPointAt | getPointAt(u)}.
	 * @link Curve} into. Expects a `Integer`. Default `5`
	 */
	function getSpacedPoints(?divisions:Int) : Array<TVector>;
	/**
	 * Get total {@link Curve} arc length.
	 */
	function getLength() : Float;
	/**
	 * Get list of cumulative segment lengths.
	 */
	function getLengths(?divisions:Int) : Array<Float>;
	/**
	 * Update the cumulative segment distance cache
	 * @remarks
	 * The method must be called every time {@link Curve} parameters are changed
	 * If an updated {@link Curve} is part of a composed {@link Curve} like {@link THREE.CurvePath | CurvePath},
	 * {@link .updateArcLengths}() must be called on the composed curve, too.
	 */
	function updateArcLengths() : Void;
	/**
	 * Given u in the range `[ 0, 1 ]`,
	 * @remarks
	 * `u` and `t` can then be used to give you points which are equidistant from the ends of the curve, using {@link .getPoint}.
	 * @returns `t` also in the range `[ 0, 1 ]`. Expects a `Float`.
	 */
	function getUtoTmapping(u:Float, distance:Float) : Float;
	/**
	 * Returns a unit vector tangent at t
	 * @remarks
	 * If the derived {@link Curve} does not implement its tangent derivation, two points a small delta apart will be used to find its gradient which seems to give a reasonable approximation.
	 */
	function getTangent(t:Float, ?optionalTarget:TVector) : TVector;
	/**
	 * Returns tangent at a point which is equidistant to the ends of the {@link Curve} from the point given in {@link .getTangent}.
	 * @link Curve} according to the arc length. Must be in the range `[ 0, 1 ]`. Expects a `Float`
	 */
	function getTangentAt(u:Float, ?optionalTarget:TVector) : TVector;
	/**
	 * Generates the Frenet Frames
	 * @remarks
	 * Requires a {@link Curve} definition in 3D space
	 * Used in geometries like {@link THREE.TubeGeometry | TubeGeometry} or {@link THREE.ExtrudeGeometry | ExtrudeGeometry}.
	 */
	function computeFrenetFrames(segments:Int, ?closed:Bool) : { var tangents : Array<Vector3>; var normals : Array<Vector3>; var binormals : Array<Vector3>; };
	/**
	 * Creates a clone of this instance.
	 */
	function clone() : Curve<TVector>;
	/**
	 * Copies another {@link Curve} object to this instance.
	 */
	function copy(source:Curve<TVector>) : Curve<TVector>;
	/**
	 * Returns a JSON object representation of this instance.
	 */
	function toJSON() : {};
	/**
	 * Copies the data from the given JSON object to this instance.
	 */
	function fromJSON(json:{}) : Curve<TVector>;
}