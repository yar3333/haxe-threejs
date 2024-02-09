package js.three;

import js.lib.*;

/**
 * Alias for {@link THREE.EllipseCurve | EllipseCurve}.
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/curves/ArcCurve | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/curves/ArcCurve.js | Source}
 */
@:native("THREE.ArcCurve")
extern class ArcCurve extends EllipseCurve
{
	/**
	 * Read-only flag to check if a given object is of type {@link ArcCurve}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isArcCurve(default, null) : Bool;
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `ArcCurve`
	 */
	//var type : CurveType;

	/**
	 * Alias for {@link THREE.EllipseCurve | EllipseCurve}.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/curves/ArcCurve | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/curves/ArcCurve.js | Source}
	 */
	function new(?aX:Float, ?aY:Float, ?aRadius:Float, ?aStartAngle:Float, ?aEndAngle:Float, ?aClockwise:Bool) : Void;
}