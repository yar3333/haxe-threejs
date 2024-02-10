package js.three.extras;

/**
 * An implementation of the {@link Earcut} polygon triangulation algorithm
 * @remarks
 * The code is a port of {@link https://github.com/mapbox/earcut | mapbox/earcut}.
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/Earcut | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/Earcut.js | Source}
 */
@:jsRequire("three", "Earcut")
@:native("THREE.Earcut")
extern class Earcut
{
	/** 
      * Triangulates the given shape definition by returning an array of triangles 
      * @remarks 
      * A triangle is defined by three consecutive integers representing vertex indices.
      */
	function triangulate(data:Array<Float>, ?holeIndices:Array<Float>, ?dim:Float) : Array<Float>;
}
