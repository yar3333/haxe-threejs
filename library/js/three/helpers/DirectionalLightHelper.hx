package js.three.helpers;

import js.three.core.Object3D;
import js.three.objects.Line;
import js.three.lights.DirectionalLight;
import js.three.math.ColorRepresentation;

/**
 * Helper object to assist with visualizing a {@link THREE.DirectionalLight | DirectionalLight}'s effect on the scene
 * @remarks
 * This consists of plane and a line representing the light's position and direction.
 * @example
 * ```typescript
 * const light = new THREE.DirectionalLight(0xFFFFFF);
 * scene.add(light);
 * 
 * const helper = new THREE.DirectionalLightHelper(light, 5);
 * scene.add(helper);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/DirectionalLightHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/DirectionalLightHelper.js | Source}
 */
@:native("THREE.DirectionalLightHelper")
extern class DirectionalLightHelper extends Object3D
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `DirectionalLightHelper`
	 * Is set to `false`, as the helper is using the {@link THREE.DirectionalLight.matrixWorld | light.matrixWorld}.
	 * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
	 * @defaultValue `false`.
	 */
	//var type : haxe.extern.EitherType<js.three.directionallighthelper.Type, String>;

	/**
	 * Contains the line mesh showing the location of the directional light.
	 */
	var lightPlane : Line;
	/**
	 * Reference to the {@link THREE.DirectionalLight | directionalLight} being visualized.
	 */
	var light : DirectionalLight;
	
    /**
	 * Reference to the {@link THREE.DirectionalLight.matrixWorld | light.matrixWorld}.
	 */
	//var matrix : Matrix4;

	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `DirectionalLightHelper`
	 * Is set to `false`, as the helper is using the {@link THREE.DirectionalLight.matrixWorld | light.matrixWorld}.
	 * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
	 * @defaultValue `false`.
	 */
	//var type : Dynamic;

	/**
	 * The color parameter passed in the constructor.
	 * @remarks If this is changed, the helper's color will update the next time {@link update} is called.
	 * @defaultValue `undefined`
	 */
	var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	var targetLine : Line;

	/**
	 * Helper object to assist with visualizing a {@link THREE.DirectionalLight | DirectionalLight}'s effect on the scene
	 * @remarks
	 * This consists of plane and a line representing the light's position and direction.
	 * @example
	 * ```typescript
	 * const light = new THREE.DirectionalLight(0xFFFFFF);
	 * scene.add(light);
	 * 
	 * const helper = new THREE.DirectionalLightHelper(light, 5);
	 * scene.add(helper);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/DirectionalLightHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/DirectionalLightHelper.js | Source}
	 */
	function new(light:DirectionalLight, ?size:Float, ?color:ColorRepresentation) : Void;
	/**
	 * Updates the helper to match the position and direction of the {@link light | DirectionalLight} being visualized.
	 */
	function update() : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}