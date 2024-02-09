package js.three.helpers;

import js.lib.*;

/**
 * Helper object to visualize a {@link THREE.Box3 | Box3}.
 * @example
 * ```typescript
 * const box = new THREE.Box3();
 * box.setFromCenterAndSize(new THREE.Vector3(1, 1, 1), new THREE.Vector3(2, 1, 3));
 * const helper = new THREE.Box3Helper(box, 0xffff00);
 * scene.add(helper);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/Box3Helper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/Box3Helper.js | Source}
 */
@:native("THREE.Box3Helper")
extern class Box3Helper extends LineSegments
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `Box3Helper`
	 */
	//var type : haxe.extern.EitherType<js.three.box3helper.Type, String>;
	/**
	 * The Box3 being visualized.
	 */
	var box : Box3;

	/**
	 * Helper object to visualize a {@link THREE.Box3 | Box3}.
	 * @example
	 * ```typescript
	 * const box = new THREE.Box3();
	 * box.setFromCenterAndSize(new THREE.Vector3(1, 1, 1), new THREE.Vector3(2, 1, 3));
	 * const helper = new THREE.Box3Helper(box, 0xffff00);
	 * scene.add(helper);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/Box3Helper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/Box3Helper.js | Source}
	 */
	function new(box:Box3, ?color:ColorRepresentation) : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}