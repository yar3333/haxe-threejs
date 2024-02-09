package js.three;

import js.lib.*;

/**
 * A curve representing a **3D** line segment.
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/curves/LineCurve3 | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/curves/LineCurve3.js | Source}
 */
@:native("THREE.LineCurve3")
extern class LineCurve3 extends Curve<Vector3>
{
	/**
	 * Read-only flag to check if a given object is of type {@link LineCurve3}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isLineCurve3(default, null) : Dynamic;
	
    /**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `LineCurve3`
	 */
	//var type : haxe.extern.EitherType<js.three.linecurve3.Type, String>;

	/**
	 * The start point.
	 * @defaultValue `new THREE.Vector3()`.
	 */
	var v1 : Vector3;
    
	/**
	 * The end point.
	 * @defaultValue `new THREE.Vector3()`.
	 */
	var v2 : Vector3;

	/**
	 * A curve representing a **3D** line segment.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/curves/LineCurve3 | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/curves/LineCurve3.js | Source}
	 */
	function new(?v1:Vector3, ?v2:Vector3) : Void;
}