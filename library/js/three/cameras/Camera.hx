package js.three.cameras;

import js.three.Constants;
import js.three.core.Object3D;
import js.three.math.Matrix4;
import js.three.math.Vector3;

/**
 * Abstract base class for cameras
 * @remarks
 * This class should always be inherited when you build a new camera.
 * @see {@link https://threejs.org/docs/index.html#api/en/cameras/Camera | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/cameras/Camera.js | Source}
 */
@:native("THREE.Camera")
extern class Camera extends Object3D
{
	/**
	 * Read-only flag to check if a given object is of type {@link Camera}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isCamera(default, null) : Bool;
	/**
	 * @override
	 * @defaultValue `Camera`
	 * @override
	 * The {@link THREE.Layers | layers} that the {@link Camera} is a member of.
	 * @remarks Objects must share at least one layer with the {@link Camera} to be n when the camera's viewpoint is rendered.
	 * @defaultValue `new THREE.Layers()`
	 */
	//var type : haxe.extern.EitherType<js.three.camera.Type, String>;
	/**
	 * @override
	 * @defaultValue `Camera`
	 * @override
	 * The {@link THREE.Layers | layers} that the {@link Camera} is a member of.
	 * @remarks Objects must share at least one layer with the {@link Camera} to be n when the camera's viewpoint is rendered.
	 * @defaultValue `new THREE.Layers()`
	 */
	//var layers : Layers;
	/**
	 * This is the inverse of matrixWorld.
	 * @remarks MatrixWorld contains the Matrix which has the world transform of the {@link Camera} .
	 * @defaultValue {@link THREE.Matrix4 | `new THREE.Matrix4()`}
	 */
	var matrixWorldInverse : Matrix4;
	/**
	 * This is the matrix which contains the projection.
	 * @defaultValue {@link THREE.Matrix4 | `new THREE.Matrix4()`}
	 */
	var projectionMatrix : Matrix4;
	/**
	 * This is the inverse of projectionMatrix.
	 * @defaultValue {@link THREE.Matrix4 | `new THREE.Matrix4()`}
	 */
	var projectionMatrixInverse : Matrix4;
	var coordinateSystem : CoordinateSystem;

	/**
	 * Abstract base class for cameras
	 * @remarks
	 * This class should always be inherited when you build a new camera.
	 * @see {@link https://threejs.org/docs/index.html#api/en/cameras/Camera | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/cameras/Camera.js | Source}
	 */
	function new() : Void;
	/**
	 * Returns a {@link THREE.Vector3 | Vector3} representing the world space direction in which the {@link Camera} is looking.
	 * @remarks Note: A {@link Camera} looks down its local, negative z-axis.
	 */
	function getWorldDirection(target:Vector3) : Vector3;
}