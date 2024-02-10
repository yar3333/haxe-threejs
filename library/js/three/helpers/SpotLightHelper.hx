package js.three.helpers;

import js.three.core.Object3D;
import js.three.objects.LineSegments;
import js.three.lights.Light;
import js.three.math.ColorRepresentation;

/**
 * This displays a cone shaped helper object for a {@link THREE.SpotLight | SpotLight}.
 * @example
 * ```typescript
 * const spotLight = new THREE.SpotLight(0xffffff);
 * spotLight.position.set(10, 10, 10);
 * scene.add(spotLight);
 * const {@link SpotLightHelper} = new THREE.SpotLightHelper(spotLight);
 * scene.add(spotLightHelper);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_lights_spotlights | WebGL/ lights / spotlights }
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/SpotLightHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/SpotLightHelper.js | Source}
 */
@:native("THREE.SpotLightHelper")
extern class SpotLightHelper extends Object3D
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `SpotLightHelper`
	 * Is set to `false`, as the helper is using the {@link THREE.Light.matrixWorld | light.matrixWorld}.
	 * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
	 * @defaultValue `false`.
	 */
	//var type : haxe.extern.EitherType<js.three.spotlighthelper.Type, String>;
	
    /**
	 * {@link THREE.LineSegments | LineSegments} used to visualize the light.
	 */
	var cone : LineSegments;
	
    /**
	 * Reference to the {@link THREE.SpotLight | SpotLight} being visualized.
	 */
	var light : Light;
	
    /**
	 * Reference to the spotLight's {@link Object3D.matrixWorld | matrixWorld}.
	 */
	//var matrix : Matrix4;

	/**
	 * The color parameter passed in the constructor.
	 * If this is changed, the helper's color will update the next time {@link SpotLightHelper.update | update} is called.
	 * @defaultValue `undefined`
	 */
	var color : haxe.extern.EitherType<ColorRepresentation, {}>;

    /**
     * Is set to `false`, as the helper is using the {@link THREE.Light.matrixWorld | light.matrixWorld}.
     * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
     * @defaultValue `false`.
     */
    //var matrixAutoUpdate: Bool;

	/**
	 * This displays a cone shaped helper object for a {@link THREE.SpotLight | SpotLight}.
	 * @example
	 * ```typescript
	 * const spotLight = new THREE.SpotLight(0xffffff);
	 * spotLight.position.set(10, 10, 10);
	 * scene.add(spotLight);
	 * const {@link SpotLightHelper} = new THREE.SpotLightHelper(spotLight);
	 * scene.add(spotLightHelper);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_lights_spotlights | WebGL/ lights / spotlights }
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/SpotLightHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/SpotLightHelper.js | Source}
	 */
	function new(light:Light, ?color:ColorRepresentation) : Void;
	
    /**
	 * Updates the light helper.
	 */
	function update() : Void;
	
    /**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}