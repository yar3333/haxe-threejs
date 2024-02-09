package js.three;

import js.lib.*;

/**
 * Dual {@link PerspectiveCamera | PerspectiveCamera}s used for effects such as
 * {@link https://en.wikipedia.org/wiki/Anaglyph_3D | 3D Anaglyph} or
 * {@link https://en.wikipedia.org/wiki/parallax_barrier | Parallax Barrier}.
 * @see Example: {@link https://threejs.org/examples/#webgl_effects_anaglyph | effects / anaglyph }
 * @see Example: {@link https://threejs.org/examples/#webgl_effects_parallaxbarrier | effects / parallaxbarrier }
 * @see Example: {@link https://threejs.org/examples/#webgl_effects_stereo | effects / stereo }
 * @see {@link https://threejs.org/docs/index.html#api/en/cameras/StereoCamera | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/cameras/StereoCamera.js | Source}
 */
@:native("THREE.StereoCamera")
extern class StereoCamera extends Camera
{
	//var type : String; // "StereoCamera"
    
	/**
	 * @remarks Expects a `Float`
	 * @defaultValue `1`
	 */
	var aspect : Float;
	/**
	 * @remarks Expects a `Float`
	 * @defaultValue `0.064`
	 */
	var eyeSep : Float;
	/**
	 * The Left camera.
	 * A {@link PerspectiveCamera } added to {@link THREE.PerspectiveCamera.layers | layer 1}
	 * @remarks Objects to be rendered by the **left** camera must also be added to this layer.
	 */
	var cameraL : PerspectiveCamera;
	/**
	 * The Right camera.
	 * A {@link PerspectiveCamera } added to {@link THREE.PerspectiveCamera.layers | layer 2}
	 * @remarks Objects to be rendered by the **right** camera must also be added to this layer.
	 */
	var cameraR : PerspectiveCamera;

	/**
	 * Dual {@link PerspectiveCamera | PerspectiveCamera}s used for effects such as
	 * {@link https://en.wikipedia.org/wiki/Anaglyph_3D | 3D Anaglyph} or
	 * {@link https://en.wikipedia.org/wiki/parallax_barrier | Parallax Barrier}.
	 * @see Example: {@link https://threejs.org/examples/#webgl_effects_anaglyph | effects / anaglyph }
	 * @see Example: {@link https://threejs.org/examples/#webgl_effects_parallaxbarrier | effects / parallaxbarrier }
	 * @see Example: {@link https://threejs.org/examples/#webgl_effects_stereo | effects / stereo }
	 * @see {@link https://threejs.org/docs/index.html#api/en/cameras/StereoCamera | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/cameras/StereoCamera.js | Source}
	 */
	function new() : Void;
	/**
	 * Update the stereo cameras based on the camera passed in.
	 */
	function update(camera:PerspectiveCamera) : Void;
}