package js.three;

import js.lib.*;

/**
 * Creates a torus knot, the particular shape of which is defined by a pair of coprime integers, p and q
 * If p and q are not coprime, the result will be a torus link.
 * @example
 * ```typescript
 * const geometry = new THREE.TorusKnotGeometry(10, 3, 100, 16);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0xffff00
 * });
 * const torusKnot = new THREE.Mesh(geometry, material);
 * scene.add(torusKnot);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/TorusKnotGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/TorusKnotGeometry.js | Source}
 */
@:native("THREE.TorusKnotGeometry")
extern class TorusKnotGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `TorusKnotGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.torusknotgeometry.Type, String>;
    
	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var radius(default, null) : Float; var tube(default, null) : Float; var tubularSegments(default, null) : Float; var radialSegments(default, null) : Float; var p(default, null) : Float; var q(default, null) : Float; };

	/**
	 * Creates a torus knot, the particular shape of which is defined by a pair of coprime integers, p and q
	 * If p and q are not coprime, the result will be a torus link.
	 * @example
	 * ```typescript
	 * const geometry = new THREE.TorusKnotGeometry(10, 3, 100, 16);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0xffff00
	 * });
	 * const torusKnot = new THREE.Mesh(geometry, material);
	 * scene.add(torusKnot);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/TorusKnotGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/TorusKnotGeometry.js | Source}
	 */
	function new(?radius:Float, ?tube:Float, ?tubularSegments:Float, ?radialSegments:Int, ?p:Float, ?q:Float) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : TorusKnotGeometry;
}