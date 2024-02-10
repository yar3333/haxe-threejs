package js.three.helpers;

import js.three.objects.LineSegments;
import js.three.math.Plane;

/**
 * Helper object to visualize a {@link THREE.Plane | Plane}.
 * @example
 * ```typescript
 * const plane = new THREE.Plane(new THREE.Vector3(1, 1, 0.2), 3);
 * const helper = new THREE.PlaneHelper(plane, 1, 0xffff00);
 * scene.add(helper);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/PlaneHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/PlaneHelper.js | Source}
 */
@:jsRequire("three")
@:native("THREE.PlaneHelper")
extern class PlaneHelper extends LineSegments
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `PlaneHelper`
	 */
	//var type : haxe.extern.EitherType<js.three.planehelper.Type, String>;
    
	/**
	 * The {@link Plane | plane} being visualized.
	 */
	var plane : Plane;
	/**
	 * The side lengths of plane helper.
	 * @remarks Expects a `Float`
	 * @defaultValue `1`
	 */
	var size : Float;

	/**
	 * Helper object to visualize a {@link THREE.Plane | Plane}.
	 * @example
	 * ```typescript
	 * const plane = new THREE.Plane(new THREE.Vector3(1, 1, 0.2), 3);
	 * const helper = new THREE.PlaneHelper(plane, 1, 0xffff00);
	 * scene.add(helper);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/PlaneHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/PlaneHelper.js | Source}
	 */
	function new(plane:Plane, ?size:Float, ?hex:Int) : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}