package js.three.objects;

import js.three.core.Object3DEventMap;
import js.three.core.Object3D;

/**
 * A {@link Bone} which is part of a {@link THREE.Skeleton | Skeleton}
 * @remarks
 * The skeleton in turn is used by the {@link THREE.SkinnedMesh | SkinnedMesh}
 * Bones are almost identical to a blank {@link THREE.Object3D | Object3D}.
 * @example
 * ```typescript
 * const root = new THREE.Bone();
 * const child = new THREE.Bone();
 * root.add(child);
 * child.position.y = 5;
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/Bone | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/Bone.js | Source}
 */
@:jsRequire("three", "Bone")
@:native("THREE.Bone")
extern class Bone<TEventMap:Object3DEventMap = Object3DEventMap> extends Object3D<TEventMap>
{
	/**
	 * Read-only flag to check if a given object is of type {@link Bone}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isBone(default, null) : Bool;
	/**
	 * @override
	 * @defaultValue `Bone`
	 */
	//var type : haxe.extern.EitherType<js.three.bone.Type, String>;

	/**
	 * A {@link Bone} which is part of a {@link THREE.Skeleton | Skeleton}
	 * @remarks
	 * The skeleton in turn is used by the {@link THREE.SkinnedMesh | SkinnedMesh}
	 * Bones are almost identical to a blank {@link THREE.Object3D | Object3D}.
	 * @example
	 * ```typescript
	 * const root = new THREE.Bone();
	 * const child = new THREE.Bone();
	 * root.add(child);
	 * child.position.y = 5;
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/objects/Bone | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/Bone.js | Source}
	 */
	function new() : Void;
}