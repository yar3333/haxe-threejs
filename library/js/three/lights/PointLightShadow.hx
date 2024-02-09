package js.three;

import js.lib.*;

/**
 * Shadow for {@link THREE.PointLight | PointLight}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/lights/PointLightShadow.js | Source}
 */
@:native("THREE.PointLightShadow")
extern class PointLightShadow extends LightShadow<PerspectiveCamera>
{
	/**
	 * Read-only flag to check if a given object is of type {@link PointLightShadow}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isPointLightShadow(default, null) : Dynamic;
    
    /**
     * Update the matrices for the camera and shadow, used internally by the renderer.
     * @param light The light for which the shadow is being rendered.
     */
    function updateMatrices(light: Light, ?viewportIndex: Int): Void;
}