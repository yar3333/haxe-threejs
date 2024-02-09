package js.three;

import js.lib.*;

/**
 * A continuous line.
 * @remarks
 * This is nearly the same as {@link THREE.LineSegments | LineSegments},
 * the only difference is that it is rendered using {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/drawElements | gl.LINE_STRIP}
 * instead of {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/drawElements | gl.LINES}
 * @example
 * ```typescript
 * const material = new THREE.LineBasicMaterial({
 *     color: 0x0000ff
 * });
 * const points = [];
 * points.push(new THREE.Vector3(-10, 0, 0));
 * points.push(new THREE.Vector3(0, 10, 0));
 * points.push(new THREE.Vector3(10, 0, 0));
 * const geometry = new THREE.BufferGeometry().setFromPoints(points);
 * const {@link Line} = new THREE.Line(geometry, material);
 * scene.add(line);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/Line | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/Line.js | Source}
 */
@:native("THREE.Line")
extern class Line<TGeometry:BufferGeometry, BufferGeometry:Dynamic, TMaterial:haxe.extern.EitherType<Material, Array<Material>>, Material:Dynamic>
{
}