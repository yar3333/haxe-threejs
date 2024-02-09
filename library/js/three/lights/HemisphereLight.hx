package js.three.lights;

import js.lib.*;

/**
 * A light source positioned directly above the scene, with color fading from the sky color to the ground color.
 * @remarks This light cannot be used to cast shadows.
 * @example
 * ```typescript
 * const light = new THREE.HemisphereLight(0xffffbb, 0x080820, 1);
 * scene.add(light);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_animation_skinning_blending | animation / skinning / blending }
 * @see Example: {@link https://threejs.org/examples/#webgl_lights_hemisphere | lights / hemisphere }
 * @see Example: {@link https://threejs.org/examples/#misc_controls_pointerlock | controls / pointerlock }
 * @see Example: {@link https://threejs.org/examples/#webgl_loader_collada_kinematics | loader / collada / kinematics }
 * @see Example: {@link https://threejs.org/examples/#webgl_loader_stl | loader / stl }
 * @see {@link https://threejs.org/docs/index.html#api/en/lights/HemisphereLight | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/lights/HemisphereLight.js | Source}
 */
@:native("THREE.HemisphereLight")
extern class HemisphereLight extends Light<{}>
{
	/**
	 * Read-only flag to check if a given object is of type {@link HemisphereLight}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isHemisphereLight(default, null) : Bool;
    
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `HemisphereLight`
	 * This is set equal to {@link THREE.Object3D.DEFAULT_UP}, so that the light shines from the top down.
	 * @defaultValue {@link Object3D.DEFAULT_UP} _(0, 1, 0)_
	 * The light's sky color, as passed in the constructor.
	 * @defaultValue `new THREE.Color()` set to white _(0xffffff)_.
	 */
	//var type : haxe.extern.EitherType<js.three.hemispherelight.Type, String>;

    /**
     * This is set equal to {@link THREE.Object3D.DEFAULT_UP}, so that the light shines from the top down.
     * @defaultValue {@link Object3D.DEFAULT_UP} _(0, 1, 0)_
     */
	//var position : Vector3;

    /**
     * The light's sky color, as passed in the constructor.
     * @defaultValue `new THREE.Color()` set to white _(0xffffff)_.
     */
	//var color : Color;

	/**
	 * The light's ground color, as passed in the constructor.
	 * @defaultValue `new THREE.Color()` set to white _(0xffffff)_.
	 */
	var groundColor : Color;

	/**
	 * A light source positioned directly above the scene, with color fading from the sky color to the ground color.
	 * @remarks This light cannot be used to cast shadows.
	 * @example
	 * ```typescript
	 * const light = new THREE.HemisphereLight(0xffffbb, 0x080820, 1);
	 * scene.add(light);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_animation_skinning_blending | animation / skinning / blending }
	 * @see Example: {@link https://threejs.org/examples/#webgl_lights_hemisphere | lights / hemisphere }
	 * @see Example: {@link https://threejs.org/examples/#misc_controls_pointerlock | controls / pointerlock }
	 * @see Example: {@link https://threejs.org/examples/#webgl_loader_collada_kinematics | loader / collada / kinematics }
	 * @see Example: {@link https://threejs.org/examples/#webgl_loader_stl | loader / stl }
	 * @see {@link https://threejs.org/docs/index.html#api/en/lights/HemisphereLight | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/lights/HemisphereLight.js | Source}
	 */
	function new(?skyColor:ColorRepresentation, ?groundColor:ColorRepresentation, ?intensity:Float) : Void;
}