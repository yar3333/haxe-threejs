package js.three.objects;

import js.three.core.Object3DEventMap;
import js.three.materials.Material;
import js.three.core.BufferGeometry;
import js.three.core.Object3D;

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
@:jsRequire("three", "Line")
@:native("THREE.Line")
extern class Line<TGeometry:BufferGeometry = BufferGeometry, TMaterial:haxe.extern.EitherType<Material, Array<Material>> = Material, TEventMap:Object3DEventMap = Object3DEventMap>
    extends Object3D<TEventMap>
{
       /**
     * Create a new instance of {@link Line}
     * @param geometry Vertices representing the {@link Line} segment(s). Default {@link THREE.BufferGeometry | `new THREE.BufferGeometry()`}.
     * @param material Material for the line. Default {@link THREE.LineBasicMaterial | `new THREE.LineBasicMaterial()`}.
     */
    function new(?geometry: TGeometry, ?material: TMaterial);

     /**
      * Read-only flag to check if a given object is of type {@link Line}.
      * @remarks This is a _constant_ value
      * @defaultValue `true`
      */
    var isLine(default, null): Bool;
 
     /**
      * @override
      * @defaultValue `Line`
      */
    //var type: string | "Line";
 
     /**
      * Vertices representing the {@link Line} segment(s).
      */
    var geometry: TGeometry;
 
     /**
      * Material for the line.
      */
    var material: TMaterial;
 
     /**
      * An array of weights typically from `0-1` that specify how much of the morph is applied.
      * @defaultValue `undefined`, but reset to a blank array by {@link updateMorphTargets | .updateMorphTargets()}.
      */
    var morphTargetInfluences: Array<Float>;
 
     /**
      * A dictionary of morphTargets based on the `morphTarget.name` property.
      * @defaultValue `undefined`, but reset to a blank array by {@link updateMorphTargets | .updateMorphTargets()}.
      */
    var morphTargetDictionary: Dynamic<Float>;
 
     /**
      * Computes an array of distance values which are necessary for {@link THREE.LineDashedMaterial | LineDashedMaterial}
      * @remarks
      * For each vertex in the geometry, the method calculates the cumulative length from the current point to the very beginning of the line.
      */
    function computeLineDistances(): Line;
 
     /**
      * Updates the morphTargets to have no influence on the object
      * @remarks
      * Resets the {@link morphTargetInfluences | .morphTargetInfluences} and {@link morphTargetDictionary | .morphTargetDictionary} properties.
      */
    function updateMorphTargets(): Void;
}