package js.three.objects;

import js.three.materials.Material;
import js.three.core.BufferGeometry;

// TODO: CONVERT FROM TS

/**
 * A special version of {@link THREE.Mesh | Mesh} with instanced rendering support
 * @remarks
 * Use {@link InstancedMesh} if you have to render a large number of objects with the same geometry and material but with different world transformations
 * @remarks
 * The usage of {@link InstancedMesh} will help you to reduce the number of draw calls and thus improve the overall rendering performance in your application.
 * @see Example: {@link https://threejs.org/examples/#webgl_instancing_dynamic | WebGL / instancing / dynamic}
 * @see Example: {@link https://threejs.org/examples/#webgl_instancing_performance | WebGL / instancing / performance}
 * @see Example: {@link https://threejs.org/examples/#webgl_instancing_scatter | WebGL / instancing / scatter}
 * @see Example: {@link https://threejs.org/examples/#webgl_instancing_raycast | WebGL / instancing / raycast}
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/InstancedMesh | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/InstancedMesh.js | Source}
 */
@:jsRequire("three")
@:native("THREE.InstancedMesh")
extern class InstancedMesh<TGeometry:BufferGeometry = BufferGeometry, TMaterial:haxe.extern.EitherType<Material, Array<Material>> = Material>
{
}