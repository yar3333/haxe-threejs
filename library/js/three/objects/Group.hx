package js.three.objects;

import js.three.core.Object3DEventMap;
import js.three.core.Object3D;

/**
 * Its purpose is to make working with groups of objects syntactically clearer.
 * @remarks This is almost identical to an {@link Object3D | Object3D}
 * @example
 * ```typescript
 * const geometry = new THREE.BoxGeometry(1, 1, 1);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0x00ff00
 * });
 * const cubeA = new THREE.Mesh(geometry, material);
 * cubeA.position.set(100, 100, 0);
 * const cubeB = new THREE.Mesh(geometry, material);
 * cubeB.position.set(-100, -100, 0);
 * //create a {@link Group} and add the two cubes
 * //These cubes can now be rotated / scaled etc as a {@link Group}  * const {@link Group} = new THREE.Group();
 * group.add(cubeA);
 * group.add(cubeB);
 * scene.add(group);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/Group | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/Group.js | Source}
 */
@:jsRequire("three", "Group")
@:native("THREE.Group")
extern class Group<TEventMap:Object3DEventMap = Object3DEventMap> extends Object3D<TEventMap>
{
	/**
	 * Read-only flag to check if a given object is of type {@link Group}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isGroup(default, null) : Bool;
	/**
	 * @override
	 * @defaultValue `Group`
	 */
	//var type : haxe.extern.EitherType<js.three.group.Type, String>;

	/**
	 * Its purpose is to make working with groups of objects syntactically clearer.
	 * @remarks This is almost identical to an {@link Object3D | Object3D}
	 * @example
	 * ```typescript
	 * const geometry = new THREE.BoxGeometry(1, 1, 1);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0x00ff00
	 * });
	 * const cubeA = new THREE.Mesh(geometry, material);
	 * cubeA.position.set(100, 100, 0);
	 * const cubeB = new THREE.Mesh(geometry, material);
	 * cubeB.position.set(-100, -100, 0);
	 * //create a {@link Group} and add the two cubes
	 * //These cubes can now be rotated / scaled etc as a {@link Group}  * const {@link Group} = new THREE.Group();
	 * group.add(cubeA);
	 * group.add(cubeB);
	 * scene.add(group);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/objects/Group | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/Group.js | Source}
	 */
	function new() : Void;
}