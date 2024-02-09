package js.three;

import js.lib.*;

/**
 * A class for generating torus geometries.
 * @example
 * ```typescript
 * const geometry = new THREE.TorusGeometry(10, 3, 16, 100);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0xffff00
 * });
 * const torus = new THREE.Mesh(geometry, material);
 * scene.add(torus);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/TorusGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/TorusGeometry.js | Source}
 */
@:native("THREE.TorusGeometry")
extern class TorusGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `TorusGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.torusgeometry.Type, String>;
    
	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var radius(default, null) : Float; var tube(default, null) : Float; var radialSegments(default, null) : Float; var tubularSegments(default, null) : Float; var arc(default, null) : Float; };

	/**
	 * A class for generating torus geometries.
	 * @example
	 * ```typescript
	 * const geometry = new THREE.TorusGeometry(10, 3, 16, 100);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0xffff00
	 * });
	 * const torus = new THREE.Mesh(geometry, material);
	 * scene.add(torus);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/TorusGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/TorusGeometry.js | Source}
	 */
	function new(?radius:Float, ?tube:Float, ?radialSegments:Int, ?tubularSegments:Float, ?arc:Float) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:Dynamic) : TorusGeometry;
}