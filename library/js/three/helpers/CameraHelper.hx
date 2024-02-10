package js.three.helpers;

import js.three.objects.LineSegments;
import js.three.cameras.Camera;
import js.three.math.Color;

/**
 * This helps with visualizing what a camera contains in its frustum
 * @remarks
 * It visualizes the frustum of a camera using a {@link THREE.LineSegments | LineSegments}.
 * @remarks {@link CameraHelper} must be a child of the scene.
 * @example
 * ```typescript
 * const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
 * const helper = new THREE.CameraHelper(camera);
 * scene.add(helper);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_camera | WebGL / camera}
 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_extrude_splines | WebGL / extrude / splines}
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/CameraHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/CameraHelper.js | Source}
 */
@:jsRequire("three", "CameraHelper")
@:native("THREE.CameraHelper")
extern class CameraHelper extends LineSegments
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `CameraHelper`
	 * Is set to `false`, as the helper is using the {@link THREE.Camera.matrixWorld | camera.matrixWorld}.
	 * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
	 * @defaultValue `false`.
	 */
	//var type : haxe.extern.EitherType<js.three.camerahelper.Type, String>;
	/**
	 * The camera being visualized.
	 */
	var camera : Camera;
	/**
	 * This contains the points used to visualize the camera.
	 */
	var pointMap : Dynamic<Array<Float>>;
	
    /**
	 * Reference to the {@link THREE.Camera.matrixWorld | camera.matrixWorld}.
	 */
	//var matrix : Matrix4;
	
    /**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `CameraHelper`
	 * Is set to `false`, as the helper is using the {@link THREE.Camera.matrixWorld | camera.matrixWorld}.
	 * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
	 * @defaultValue `false`.
	 */
	//var type : Dynamic;

    /**
     * Is set to `false`, as the helper is using the {@link THREE.Camera.matrixWorld | camera.matrixWorld}.
     * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
     * @defaultValue `false`.
     */
    //var matrixAutoUpdate: Bool;

	/**
	 * This helps with visualizing what a camera contains in its frustum
	 * @remarks
	 * It visualizes the frustum of a camera using a {@link THREE.LineSegments | LineSegments}.
	 * @remarks {@link CameraHelper} must be a child of the scene.
	 * @example
	 * ```typescript
	 * const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
	 * const helper = new THREE.CameraHelper(camera);
	 * scene.add(helper);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_camera | WebGL / camera}
	 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_extrude_splines | WebGL / extrude / splines}
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/CameraHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/CameraHelper.js | Source}
	 */
	function new(camera:Camera) : Void;
	/**
	 * Defines the colors of the helper.
	 */
	function setColors(frustum:Color, cone:Color, up:Color, target:Color, cross:Color) : CameraHelper;
	/**
	 * Updates the helper based on the projectionMatrix of the camera.
	 */
	function update() : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}