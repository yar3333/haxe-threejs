package js.three.objects;

import js.three.core.Object3DEventMap;
import js.three.materials.Material;
import js.three.core.BufferGeometry;

/**
 * A series of lines drawn between pairs of vertices.
 * @remarks
 * This is nearly the same as {@link THREE.Line | Line},
 * the only difference is that it is rendered using {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/drawElements | gl.LINES}
 * instead of {@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/drawElements | gl.LINE_STRIP}.
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/LineSegments | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/LineSegments.js | Source}
 */
@:jsRequire("three", "LineSegments")
@:native("THREE.LineSegments")
extern class LineSegments<TGeometry:BufferGeometry = BufferGeometry, TMaterial:haxe.extern.EitherType<Material, Array<Material>> = Material, TEventMap:Object3DEventMap = Object3DEventMap>
    extends Line<TGeometry, TMaterial, TEventMap>
{
    /**
     * Create a new instance of {@link LineSegments}
     * @param geometry Pair(s) of vertices representing each line segment(s). Default {@link THREE.BufferGeometry | `new THREE.BufferGeometry()`}.
     * @param material Material for the line. Default {@link THREE.LineBasicMaterial | `new THREE.LineBasicMaterial()`}.
     */
    function new(?geometry: TGeometry, ?material: TMaterial);

     /**
      * Read-only flag to check if a given object is of type {@link LineSegments}.
      * @remarks This is a _constant_ value
      * @defaultValue `true`
      */
    var isLineSegments(default, null): Bool;
 
     /**
      * A Read-only _string_ to check if `this` object type.
      * @remarks Sub-classes will update this value.
      * @override
      * @defaultValue `LineSegments`
      */
    //override readonly type: string | "LineSegments";
}
