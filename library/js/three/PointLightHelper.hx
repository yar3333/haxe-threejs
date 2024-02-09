package js.three;

import js.lib.*;

/**
 * This displays a helper object consisting of a spherical {@link THREE.Mesh | Mesh} for visualizing a {@link THREE.PointLight | PointLight}.
 * @example
 * ```typescript
 * const pointLight = new THREE.PointLight(0xff0000, 1, 100);
 * pointLight.position.set(10, 10, 10);
 * scene.add(pointLight);
 * const sphereSize = 1;
 * const {@link PointLightHelper} = new THREE.PointLightHelper(pointLight, sphereSize);
 * scene.add(pointLightHelper);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_helpers | WebGL / helpers}
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/PointLightHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/PointLightHelper.js | Source}
 */
@:native("THREE.PointLightHelper")
extern class PointLightHelper extends Object3D
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `PointLightHelper`
	 * Is set to `false`, as the helper is using the {@link THREE.PointLight.matrixWorld | light.matrixWorld}.
	 * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
	 * @defaultValue `false`.
	 */
	var override : Dynamic;
	var type : haxe.extern.EitherType<js.three.pointlighthelper.Type, String>;
	/**
	 * The {@link THREE.PointLight | PointLight} that is being visualized.
	 */
	var light : PointLight;
	/**
	 * Reference to the {@link THREE.PointLight.matrixWorld | light.matrixWorld}.
	 */
	var matrix : Matrix4;
	/**
	 * The color parameter passed in the constructor.
	 * @remarks If this is changed, the helper's color will update the next time {@link update} is called.
	 * @defaultValue `undefined`
	 */
	var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `PointLightHelper`
	 * Is set to `false`, as the helper is using the {@link THREE.PointLight.matrixWorld | light.matrixWorld}.
	 * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
	 * @defaultValue `false`.
	 */
	var override : Dynamic;
	var boolean : Dynamic;

	/**
	 * This displays a helper object consisting of a spherical {@link THREE.Mesh | Mesh} for visualizing a {@link THREE.PointLight | PointLight}.
	 * @example
	 * ```typescript
	 * const pointLight = new THREE.PointLight(0xff0000, 1, 100);
	 * pointLight.position.set(10, 10, 10);
	 * scene.add(pointLight);
	 * const sphereSize = 1;
	 * const {@link PointLightHelper} = new THREE.PointLightHelper(pointLight, sphereSize);
	 * scene.add(pointLightHelper);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_helpers | WebGL / helpers}
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/PointLightHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/PointLightHelper.js | Source}
	 */
	function new(light:PointLight, ?sphereSize:Float, ?color:ColorRepresentation) : Void;
	/**
	 * Updates the helper to match the position of the {@link THREE..light | .light}.
	 */
	function update() : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}