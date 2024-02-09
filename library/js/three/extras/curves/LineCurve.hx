package js.three.extras.curves;

import js.lib.*;

/**
 * A curve representing a **2D** line segment.
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/curves/LineCurve | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/curves/LineCurve.js | Source}
 */
@:native("THREE.LineCurve")
extern class LineCurve extends Curve<Vector2>
{
	/**
	 * Read-only flag to check if a given object is of type {@link LineCurve}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isLineCurve(default, null) : Bool;
	
    /**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `LineCurve`
	 */
	//var type : haxe.extern.EitherType<js.three.linecurve.Type, String>;

	/**
	 * The start point.
	 * @defaultValue `new THREE.Vector2()`
	 */
	var v1 : Vector2;
    
	/**
	 * The end point
	 * @defaultValue `new THREE.Vector2()`
	 */
	var v2 : Vector2;

	/**
	 * A curve representing a **2D** line segment.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/curves/LineCurve | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/curves/LineCurve.js | Source}
	 */
	function new(?v1:Vector2, ?v2:Vector2) : Void;
}