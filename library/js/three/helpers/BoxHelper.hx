package js.three.helpers;

import js.three.objects.LineSegments;
import js.three.core.BufferGeometry;
import js.three.materials.LineBasicMaterial;
import js.three.core.Object3D;
import js.three.math.ColorRepresentation;

/**
 * Helper object to graphically show the world-axis-aligned bounding box around an object
 * @remarks
 * The actual bounding box is handled with {@link THREE.Box3 | Box3}, this is just a visual helper for debugging
 * It can be automatically resized with the {@link THREE.BoxHelper.update | BoxHelper.update} method when the object it's created from is transformed
 * Note that the object must have a {@link THREE.BufferGeometry | BufferGeometry} for this to work, so it won't work with {@link Sprite | Sprites}.
 * @example
 * ```typescript
 * const sphere = new THREE.SphereGeometry();
 * const object = new THREE.Mesh(sphere, new THREE.MeshBasicMaterial(0xff0000));
 * const box = new THREE.BoxHelper(object, 0xffff00);
 * scene.add(box);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_helpers | WebGL / helpers}
 * @see Example: {@link https://threejs.org/examples/#webgl_loader_nrrd | WebGL / loader / nrrd}
 * @see Example: {@link https://threejs.org/examples/#webgl_buffergeometry_drawrange | WebGL / buffergeometry / drawrange}
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/BoxHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/BoxHelper.js | Source}
 */
@:jsRequire("three", "BoxHelper")
@:native("THREE.BoxHelper")
extern class BoxHelper extends LineSegments<BufferGeometry, LineBasicMaterial>
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `BoxHelper`
	 */
	//var type : haxe.extern.EitherType<js.three.boxhelper.Type, String>;

	/**
	 * Helper object to graphically show the world-axis-aligned bounding box around an object
	 * @remarks
	 * The actual bounding box is handled with {@link THREE.Box3 | Box3}, this is just a visual helper for debugging
	 * It can be automatically resized with the {@link THREE.BoxHelper.update | BoxHelper.update} method when the object it's created from is transformed
	 * Note that the object must have a {@link THREE.BufferGeometry | BufferGeometry} for this to work, so it won't work with {@link Sprite | Sprites}.
	 * @example
	 * ```typescript
	 * const sphere = new THREE.SphereGeometry();
	 * const object = new THREE.Mesh(sphere, new THREE.MeshBasicMaterial(0xff0000));
	 * const box = new THREE.BoxHelper(object, 0xffff00);
	 * scene.add(box);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_helpers | WebGL / helpers}
	 * @see Example: {@link https://threejs.org/examples/#webgl_loader_nrrd | WebGL / loader / nrrd}
	 * @see Example: {@link https://threejs.org/examples/#webgl_buffergeometry_drawrange | WebGL / buffergeometry / drawrange}
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/BoxHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/BoxHelper.js | Source}
	 */
	function new(object:Object3D, ?color:ColorRepresentation) : Void;
	/**
	 * Updates the helper's geometry to match the dimensions of the object, including any children
	 * @remarks
	 * See {@link THREE.Box3.setFromObject | Box3.setFromObject}.
	 */
	function update(?object:Object3D) : Void;
	/**
	 * Updates the wireframe box for the passed object.
	 * @link THREE.Object3D | Object3D} to create the helper of.
	 */
	function setFromObject(object:Object3D) : BoxHelper;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}