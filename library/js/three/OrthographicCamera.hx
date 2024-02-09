package js.three;

import js.lib.*;

/**
 * Camera that uses {@link https://en.wikipedia.org/wiki/Orthographic_projection | orthographic projection}.
 * In this projection mode, an object's size in the rendered image stays constant regardless of its distance from the camera.
 * This can be useful for rendering 2D scenes and UI elements, amongst other things.
 * @example
 * ```typescript
 * const camera = new THREE.OrthographicCamera(width / -2, width / 2, height / 2, height / -2, 1, 1000);
 * scene.add(camera);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_camera | camera }
 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_cubes_ortho | interactive / cubes / ortho }
 * @see Example: {@link https://threejs.org/examples/#webgl_materials_cubemap_dynamic | materials / cubemap / dynamic }
 * @see Example: {@link https://threejs.org/examples/#webgl_postprocessing_advanced | postprocessing / advanced }
 * @see Example: {@link https://threejs.org/examples/#webgl_postprocessing_dof2 | postprocessing / dof2 }
 * @see Example: {@link https://threejs.org/examples/#webgl_postprocessing_godrays | postprocessing / godrays }
 * @see Example: {@link https://threejs.org/examples/#webgl_rtt | rtt }
 * @see Example: {@link https://threejs.org/examples/#webgl_shaders_tonemapping | shaders / tonemapping }
 * @see Example: {@link https://threejs.org/examples/#webgl_shadowmap | shadowmap }
 * @see {@link https://threejs.org/docs/index.html#api/en/cameras/OrthographicCamera | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/cameras/OrthographicCamera.js | Source}
 */
@:native("THREE.OrthographicCamera")
extern class OrthographicCamera extends Camera
{
	/**
	 * Read-only flag to check if a given object is of type {@link OrthographicCamera}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isOrthographicCamera(default, null) : Bool;
	/**
	 * @override
	 * @defaultValue `OrthographicCamera`
	 */
	//var override : Dynamic;
	//var type : haxe.extern.EitherType<js.three.orthographiccamera.Type, String>;
	/**
	 * Gets or sets the zoom factor of the camera.
	 * @defaultValue `1`
	 */
	var zoom : Float;
	/**
	 * Set by {@link setViewOffset | .setViewOffset()}.
	 * @defaultValue `null`
	 */
	var view : { var enabled : Bool; var fullWidth : Float; var fullHeight : Float; var offsetX : Float; var offsetY : Float; var width : Float; var height : Float; };
	/**
	 * Camera frustum left plane.
	 * @remarks Expects a `Float`
	 * @defaultValue `-1`
	 */
	var left : Float;
	/**
	 * Camera frustum right plane.
	 * @remarks Expects a `Float`
	 * @defaultValue `1`
	 */
	var right : Float;
	/**
	 * Camera frustum top plane.
	 * @remarks Expects a `Float`
	 * @defaultValue `1`
	 */
	var top : Float;
	/**
	 * Camera frustum bottom plane.
	 * @remarks Expects a `Float`.
	 * @defaultValue `-1`
	 */
	var bottom : Float;
	/**
	 * Camera frustum near plane.`.
	 * @remarks The valid range is between `0` and the current value of the {@link far | .far} plane.
	 * @remarks Note that, unlike for the {@link THREE.PerspectiveCamera | PerspectiveCamera}, `0` is a valid value for an {@link THREE.OrthographicCamera | OrthographicCamera's} near plane.
	 * @remarks Expects a `Float`
	 * @defaultValue `0.1`
	 */
	var near : Float;
	/**
	 * Camera frustum far plane.
	 * @remarks Must be greater than the current value of {@link near | .near} plane.
	 * @remarks Expects a `Float`
	 * @defaultValue `2000`
	 */
	var far : Float;

	/**
	 * Camera that uses {@link https://en.wikipedia.org/wiki/Orthographic_projection | orthographic projection}.
	 * In this projection mode, an object's size in the rendered image stays constant regardless of its distance from the camera.
	 * This can be useful for rendering 2D scenes and UI elements, amongst other things.
	 * @example
	 * ```typescript
	 * const camera = new THREE.OrthographicCamera(width / -2, width / 2, height / 2, height / -2, 1, 1000);
	 * scene.add(camera);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_camera | camera }
	 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_cubes_ortho | interactive / cubes / ortho }
	 * @see Example: {@link https://threejs.org/examples/#webgl_materials_cubemap_dynamic | materials / cubemap / dynamic }
	 * @see Example: {@link https://threejs.org/examples/#webgl_postprocessing_advanced | postprocessing / advanced }
	 * @see Example: {@link https://threejs.org/examples/#webgl_postprocessing_dof2 | postprocessing / dof2 }
	 * @see Example: {@link https://threejs.org/examples/#webgl_postprocessing_godrays | postprocessing / godrays }
	 * @see Example: {@link https://threejs.org/examples/#webgl_rtt | rtt }
	 * @see Example: {@link https://threejs.org/examples/#webgl_shaders_tonemapping | shaders / tonemapping }
	 * @see Example: {@link https://threejs.org/examples/#webgl_shadowmap | shadowmap }
	 * @see {@link https://threejs.org/docs/index.html#api/en/cameras/OrthographicCamera | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/cameras/OrthographicCamera.js | Source}
	 */
	@:overload(function(?left:Float,?right:Float,?top:Float,?bottom:Float,?near:Float,?far:Float):Void{})
	function new() : Void;
	/**
	 * Updates the camera projection matrix
	 * @remarks Must be called after any change of parameters.
	 */
	function updateProjectionMatrix() : Void;
	/**
	 * Sets an offset in a larger {@link https://en.wikipedia.org/wiki/Viewing_frustum | viewing frustum}
	 * @remarks
	 * This is useful for multi-window or multi-monitor/multi-machine setups
	 * For an example on how to use it see {@link PerspectiveCamera.setViewOffset | PerspectiveCamera}.
	 * @see {@link THREE.PerspectiveCamera.setViewOffset | PerspectiveCamera}.
	 */
	function setViewOffset(fullWidth:Float, fullHeight:Float, offsetX:Float, offsetY:Float, width:Float, height:Float) : Void;
	/**
	 * Removes any offset set by the {@link setViewOffset | .setViewOffset} method.
	 */
	function clearViewOffset() : Void;
}