package js.three.helpers;

import js.three.types.Object3dType;
import js.three.core.Object3D;
import js.three.objects.Line;
import js.three.objects.Mesh;
import js.three.math.Vector3;
import js.three.math.ColorRepresentation;

/**
 * An 3D arrow object for visualizing directions.
 * @example
 * ```typescript
 * const dir = new THREE.Vector3(1, 2, 0);
 * //normalize the direction vector (convert to vector of length 1)
 * dir.normalize();
 * const origin = new THREE.Vector3(0, 0, 0);
 * const length = 1;
 * const hex = 0xffff00;
 * const {@link ArrowHelper} = new THREE.ArrowHelper(dir, origin, length, hex);
 * scene.add(arrowHelper);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_shadowmesh | WebGL / shadowmesh}
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/ArrowHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/ArrowHelper.js | Source}
 */
@:jsRequire("three", "ArrowHelper")
@:native("THREE.ArrowHelper")
extern class ArrowHelper extends Object3D
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `ArrowHelper`
	 * Copy the given object into this object
	 * @remarks Note: event listeners and user-defined callbacks ({@link onAfterRender | .onAfterRender} and {@link onBeforeRender | .onBeforeRender}) are not copied.
	 */
	//var type : haxe.extern.EitherType<js.three.arrowhelper.Type, String>;
	/**
	 * Contains the line part of the arrowHelper.
	 */
	var line : Line;
	/**
	 * Contains the cone part of the arrowHelper.
	 */
	var cone : Mesh;
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `ArrowHelper`
	 * Copy the given object into this object
	 * @remarks Note: event listeners and user-defined callbacks ({@link onAfterRender | .onAfterRender} and {@link onBeforeRender | .onBeforeRender}) are not copied.
	 */
    //var type(default, null): Object3dType;

	/**
	 * An 3D arrow object for visualizing directions.
	 * @example
	 * ```typescript
	 * const dir = new THREE.Vector3(1, 2, 0);
	 * //normalize the direction vector (convert to vector of length 1)
	 * dir.normalize();
	 * const origin = new THREE.Vector3(0, 0, 0);
	 * const length = 1;
	 * const hex = 0xffff00;
	 * const {@link ArrowHelper} = new THREE.ArrowHelper(dir, origin, length, hex);
	 * scene.add(arrowHelper);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_shadowmesh | WebGL / shadowmesh}
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/ArrowHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/ArrowHelper.js | Source}
	 */
	function new(?dir:Vector3, ?origin:Vector3, ?length:Float, ?color:ColorRepresentation, ?headLength:Float, ?headWidth:Float) : Void;
	/**
	 * Sets the color of the arrowHelper.
	 */
	function setColor(color:ColorRepresentation) : Void;
	function setDirection(dir:Vector3) : Void;
	/**
	 * Sets the length of the arrowhelper.
	 */
	function setLength(length:Float, ?headLength:Float, ?headWidth:Float) : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}