package js.three.objects;

import js.lib.*;

/**
 * A continuous line that connects back to the start.
 * @remarks
 * This is nearly the same as {@link THREE.Line | Line},
 * the only difference is that it is rendered using {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/drawElements | gl.LINE_LOOP}
 * instead of {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/drawElements | gl.LINE_STRIP},
 * which draws a straight line to the next vertex, and connects the last vertex back to the first.
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/LineLoop | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/LineLoop.js | Source}
 */
@:native("THREE.LineLoop")
extern class LineLoop<TGeometry:BufferGeometry, BufferGeometry:Dynamic, TMaterial:haxe.extern.EitherType<Material, Array<Material>>, Material:Dynamic>
{
}