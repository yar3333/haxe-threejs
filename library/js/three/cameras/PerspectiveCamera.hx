package js.three.cameras;

import js.lib.*;

/**
 * Camera that uses {@link https://en.wikipedia.org/wiki/Perspective_(graphical) | perspective projection}.
 * This projection mode is designed to mimic the way the human eye sees
 * @remarks
 * It is the most common projection mode used for rendering a 3D scene.
 * @example
 * ```typescript
 * const camera = new THREE.PerspectiveCamera(45, width / height, 1, 1000);
 * scene.add(camera);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_animation_skinning_blending | animation / skinning / blending }
 * @see Example: {@link https://threejs.org/examples/#webgl_animation_skinning_morph | animation / skinning / morph }
 * @see Example: {@link https://threejs.org/examples/#webgl_effects_stereo | effects / stereo }
 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_cubes | interactive / cubes }
 * @see Example: {@link https://threejs.org/examples/#webgl_loader_collada_skinning | loader / collada / skinning }
 * @see {@link https://threejs.org/docs/index.html#api/en/cameras/PerspectiveCamera | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/cameras/PerspectiveCamera.js | Source}
 */
@:native("THREE.PerspectiveCamera")
extern class PerspectiveCamera extends Camera
{
	/**
	 * Read-only flag to check if a given object is of type {@link Camera}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isPerspectiveCamera(default, null) : Bool;
	/**
	 * @override
	 * @defaultValue `PerspectiveCamera`
	 */
	//var type : haxe.extern.EitherType<js.three.perspectivecamera.Type, String>;
	/**
	 * Gets or sets the zoom factor of the camera.
	 * @defaultValue `1`
	 */
	var zoom : Float;
	/**
	 * Camera frustum vertical field of view, from bottom to top of view, in degrees.
	 * @remarks Expects a `Float`
	 * @defaultValue `50`
	 */
	var fov : Float;
	/**
	 * Camera frustum aspect ratio, usually the canvas width / canvas height.
	 * @remarks Expects a `Float`
	 * @defaultValue `1`, _(square canvas)_.
	 */
	var aspect : Float;
	/**
	 * Camera frustum near plane.
	 * @remarks The valid range is greater than `0` and less than the current value of the {@link far | .far} plane.
	 * @remarks Note that, unlike for the {@link THREE.OrthographicCamera | OrthographicCamera}, `0` is **not** a valid value for a {@link PerspectiveCamera |PerspectiveCamera's}. near plane.
	 * @defaultValue `0.1`
	 * @remarks Expects a `Float`
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
	 * Object distance used for stereoscopy and depth-of-field effects.
	 * @remarks This parameter does not influence the projection matrix unless a {@link THREE.StereoCamera | StereoCamera} is being used.
	 * @remarks Expects a `Float`
	 * @defaultValue `10`
	 */
	var focus : Float;
	/**
	 * Frustum window specification or null.
	 * This is set using the {@link setViewOffset | .setViewOffset} method and cleared using {@link clearViewOffset | .clearViewOffset}.
	 * @defaultValue `null`
	 */
	var view : { var enabled : Bool; var fullWidth : Float; var fullHeight : Float; var offsetX : Float; var offsetY : Float; var width : Float; var height : Float; };
	/**
	 * Film size used for the larger axis.
	 * This parameter does not influence the projection matrix unless {@link filmOffset | .filmOffset} is set to a nonzero value.
	 * @remarks Expects a `Float`
	 * @defaultValue `35`, _millimeters_.
	 */
	var filmGauge : Float;
	/**
	 * Horizontal off-center offset in the same unit as {@link filmGauge | .filmGauge}.
	 * @remarks Expects a `Float`
	 * @defaultValue `0`
	 */
	var filmOffset : Float;

	/**
	 * Camera that uses {@link https://en.wikipedia.org/wiki/Perspective_(graphical) | perspective projection}.
	 * This projection mode is designed to mimic the way the human eye sees
	 * @remarks
	 * It is the most common projection mode used for rendering a 3D scene.
	 * @example
	 * ```typescript
	 * const camera = new THREE.PerspectiveCamera(45, width / height, 1, 1000);
	 * scene.add(camera);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_animation_skinning_blending | animation / skinning / blending }
	 * @see Example: {@link https://threejs.org/examples/#webgl_animation_skinning_morph | animation / skinning / morph }
	 * @see Example: {@link https://threejs.org/examples/#webgl_effects_stereo | effects / stereo }
	 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_cubes | interactive / cubes }
	 * @see Example: {@link https://threejs.org/examples/#webgl_loader_collada_skinning | loader / collada / skinning }
	 * @see {@link https://threejs.org/docs/index.html#api/en/cameras/PerspectiveCamera | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/cameras/PerspectiveCamera.js | Source}
	 */
	function new(?fov:Float, ?aspect:Float, ?near:Float, ?far:Float) : Void;
	/**
	 * Returns the focal length of the current {@link .fov | fov} in respect to {@link filmGauge | .filmGauge}.
	 */
	function getFocalLength() : Float;
	/**
	 * Sets the FOV by focal length in respect to the current {@link filmGauge | .filmGauge}.
	 * @remarks By default, the focal length is specified for a `35mm` (full frame) camera.
	 */
	function setFocalLength(focalLength:Float) : Void;
	/**
	 * Returns the current vertical field of view angle in degrees considering {@link zoom | .zoom}.
	 */
	function getEffectiveFOV() : Float;
	/**
	 * Returns the width of the image on the film
	 * @remarks
	 * If {@link aspect | .aspect}. is greater than or equal to one (landscape format), the result equals {@link filmGauge | .filmGauge}.
	 */
	function getFilmWidth() : Float;
	/**
	 * Returns the height of the image on the film
	 * @remarks
	 * If {@link aspect | .aspect}. is less than or equal to one (portrait format), the result equals {@link filmGauge | .filmGauge}.
	 */
	function getFilmHeight() : Float;
	/**
	 * Computes the 2D bounds of the camera's viewable rectangle at a given distance along the viewing direction.
	 * Sets minTarget and maxTarget to the coordinates of the lower-left and upper-right corners of the view rectangle.
	 */
	function getViewBounds(distance:Float, minTarget:Vector2, maxTarget:Vector2) : Void;
	/**
	 * Computes the width and height of the camera's viewable rectangle at a given distance along the viewing direction.
	 * Copies the result into the target Vector2, where x is width and y is height.
	 */
	function getViewSize(distance:Float, target:Vector2) : Vector2;
	/**
	 * Sets an offset in a larger frustum.
	 * @remarks
	 * This is useful for multi-window or multi-monitor/multi-machine setups.
	 * 
	 * For example, if you have 3x2 monitors and each monitor is _1920x1080_ and
	 * the monitors are in grid like this
	 * ```
	 * ┌───┬───┬───┐
	 * │ A │ B │ C │
	 * ├───┼───┼───┤
	 * │ D │ E │ F │
	 * └───┴───┴───┘
	 * ```
	 * then for each monitor you would call it like this
	 * ```typescript
	 *   const w = 1920;
	 *   const h = 1080;
	 *   const fullWidth = w * 3;
	 *   const fullHeight = h * 2;
	 * 
	 *   // Monitor - A
	 *   camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 0, w, h );
	 *   // Monitor - B
	 *   camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 0, w, h );
	 *   // Monitor - C
	 *   camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 0, w, h );
	 *   // Monitor - D
	 *   camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 1, w, h );
	 *   // Monitor - E
	 *   camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 1, w, h );
	 *   // Monitor - F
	 *   camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 1, w, h );
	 * ```
	 * Note there is no reason monitors have to be the same size or in a grid.
	 */
	function setViewOffset(fullWidth:Float, fullHeight:Float, x:Float, y:Float, width:Float, height:Float) : Void;
	/**
	 * Removes any offset set by the {@link setViewOffset | .setViewOffset} method.
	 */
	function clearViewOffset() : Void;
	/**
	 * Updates the camera projection matrix
	 * @remarks Must be called after any change of parameters.
	 */
	function updateProjectionMatrix() : Void;
	/**
	 * @deprecated Use {@link PerspectiveCamera.setFocalLength | .setFocalLength()} and {@link PerspectiveCamera.filmGauge | .filmGauge} instead.
	 */
	function setLens(focalLength:Float, ?frameHeight:Float) : Void;
}