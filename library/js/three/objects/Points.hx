package js.three.objects;

import js.three.materials.Material;
import js.three.core.BufferGeometry;

/**
 * A class for displaying {@link Points}
 * @remarks
 * The {@link Points} are rendered by the {@link THREE.WebGLRenderer | WebGLRenderer} using {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/drawElements | gl.POINTS}.
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/Points | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/Points.js | Source}
 */
@:jsRequire("three", "Points")
@:native("THREE.Points")
extern class Points<TGeometry:BufferGeometry<NormalOrGLBufferAttributes> = BufferGeometry, TMaterial:haxe.extern.EitherType<Material, Array<Material>> = Material>
{
}