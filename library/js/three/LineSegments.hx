package js.three;

import js.lib.*;

/**
 * A series of lines drawn between pairs of vertices.
 * @remarks
 * This is nearly the same as {@link THREE.Line | Line},
 * the only difference is that it is rendered using {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/drawElements | gl.LINES}
 * instead of {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/drawElements | gl.LINE_STRIP}.
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/LineSegments | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/LineSegments.js | Source}
 */
@:native("THREE.LineSegments")
extern class LineSegments<TGeometry:BufferGeometry, BufferGeometry:Dynamic, TMaterial:haxe.extern.EitherType<Material, Array<Material>>, Material:Dynamic>
{
}