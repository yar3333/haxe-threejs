package js.three.helpers;

import js.lib.*;

/**
 * Creates a visual aid consisting of a spherical {@link THREE.Mesh | Mesh} for a {@link THREE.HemisphereLight | HemisphereLight}.
 * @example
 * ```typescript
 * const light = new THREE.HemisphereLight(0xffffbb, 0x080820, 1);
 * const helper = new THREE.HemisphereLightHelper(light, 5);
 * scene.add(helper);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/HemisphereLightHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/HemisphereLightHelper.js | Source}
 */
@:native("THREE.HemisphereLightHelper")
extern class HemisphereLightHelper extends Object3D
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `HemisphereLightHelper`
	 * Is set to `false`, as the helper is using the {@link THREE.HemisphereLight.matrixWorld | light.matrixWorld}.
	 * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
	 * @defaultValue `false`.
	 */
	//var type : haxe.extern.EitherType<js.three.hemispherelighthelper.Type, String>;

	/**
	 * Reference to the HemisphereLight being visualized.
	 */
	var light : HemisphereLight;

	/**
	 * Reference to the {@link THREE.HemisphereLight.matrixWorld | light.matrixWorld}.
	 */
	//var matrix : Matrix4;

	/**
     * Is set to `false`, as the helper is using the {@link THREE.HemisphereLight.matrixWorld | light.matrixWorld}.
     * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
     * @defaultValue `false`.
     */
    //var matrixAutoUpdate: Bool;

    var material: MeshBasicMaterial; // TODO: Double check if this need to be exposed or not.

	/**
	 * The color parameter passed in the constructor.
	 * @remarks If this is changed, the helper's color will update the next time {@link update} is called.
	 * @defaultValue `undefined`
	 */
	var color : haxe.extern.EitherType<ColorRepresentation, {}>;

	/**
	 * Creates a visual aid consisting of a spherical {@link THREE.Mesh | Mesh} for a {@link THREE.HemisphereLight | HemisphereLight}.
	 * @example
	 * ```typescript
	 * const light = new THREE.HemisphereLight(0xffffbb, 0x080820, 1);
	 * const helper = new THREE.HemisphereLightHelper(light, 5);
	 * scene.add(helper);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/HemisphereLightHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/HemisphereLightHelper.js | Source}
	 */
	function new(light:HemisphereLight, size:Float, ?color:ColorRepresentation) : Void;
	/**
	 * Updates the helper to match the position and direction of the {@link .light | HemisphereLight}.
	 */
	function update() : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}