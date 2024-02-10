package js.three.helpers;

import js.three.objects.LineSegments;
import js.three.objects.Bone;
import js.three.objects.SkinnedMesh;
import js.three.core.Object3D;

/**
 * A helper object to assist with visualizing a {@link Skeleton | Skeleton}
 * @remarks
 * The helper is rendered using a {@link LineBasicMaterial | LineBasicMaterial}.
 * @example
 * ```typescript
 * const helper = new THREE.SkeletonHelper(skinnedMesh);
 * scene.add(helper);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_animation_skinning_blending | WebGL / animation / skinning / blending}
 * @see Example: {@link https://threejs.org/examples/#webgl_animation_skinning_morph | WebGL / animation / skinning / morph}
 * @see Example: {@link https://threejs.org/examples/#webgl_loader_bvh | WebGL / loader / bvh }
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/SkeletonHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/SkeletonHelper.js | Source}
 */
@:jsRequire("three")
@:native("THREE.SkeletonHelper")
extern class SkeletonHelper extends LineSegments
{
	/**
	 * Read-only flag to check if a given object is of type {@link SkeletonHelper}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isSkeletonHelper(default, null) : Dynamic;

	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `SkeletonHelper`
	 * Is set to `false`, as the helper is using the {@link THREE.Object3D.matrixWorld | root.matrixWorld}.
	 * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
	 * @defaultValue `false`.
	 */
	//var type : haxe.extern.EitherType<js.three.skeletonhelper.Type, String>;

	/**
	 * The list of bones that the helper renders as {@link Line | Lines}.
	 */
	var bones : Array<Bone>;

	/**
	 * The object passed in the constructor.
	 */
	var root : haxe.extern.EitherType<SkinnedMesh, Object3D>;

	/**
	 * Reference to the {@link THREE.Object3D.matrixWorld | root.matrixWorld}.
	 */
	//var matrix : Matrix4;
    
    /**
     * Is set to `false`, as the helper is using the {@link THREE.Object3D.matrixWorld | root.matrixWorld}.
     * @see {@link THREE.Object3D.matrixAutoUpdate | Object3D.matrixAutoUpdate}.
     * @defaultValue `false`.
     */
    //var matrixAutoUpdate: Bool;

	/**
	 * A helper object to assist with visualizing a {@link Skeleton | Skeleton}
	 * @remarks
	 * The helper is rendered using a {@link LineBasicMaterial | LineBasicMaterial}.
	 * @example
	 * ```typescript
	 * const helper = new THREE.SkeletonHelper(skinnedMesh);
	 * scene.add(helper);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_animation_skinning_blending | WebGL / animation / skinning / blending}
	 * @see Example: {@link https://threejs.org/examples/#webgl_animation_skinning_morph | WebGL / animation / skinning / morph}
	 * @see Example: {@link https://threejs.org/examples/#webgl_loader_bvh | WebGL / loader / bvh }
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/SkeletonHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/SkeletonHelper.js | Source}
	 */
	function new(object:haxe.extern.EitherType<SkinnedMesh, Object3D>) : Void;
	/**
	 * Updates the helper.
	 */
	function update() : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}