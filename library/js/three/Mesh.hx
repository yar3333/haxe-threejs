package js.three;

import js.lib.*;

/**
 * Class representing triangular {@link https://en.wikipedia.org/wiki/Polygon_mesh | polygon mesh} based objects.
 * @remarks
 * Also serves as a base for other classes such as {@link THREE.SkinnedMesh | SkinnedMesh},  {@link THREE.InstancedMesh | InstancedMesh}.
 * @example
 * ```typescript
 * const geometry = new THREE.BoxGeometry(1, 1, 1);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0xffff00
 * });
 * const {@link Mesh} = new THREE.Mesh(geometry, material);
 * scene.add(mesh);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/Mesh | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/Mesh.js | Source}
 */
@:native("THREE.Mesh")
extern class Mesh<TGeometry:BufferGeometry, BufferGeometry:Dynamic, TMaterial:haxe.extern.EitherType<Material, Array<Material>>, Material:Dynamic>
{
}