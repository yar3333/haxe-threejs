package js.three;

import js.lib.*;

/**
 * A class for generating plane geometries.
 * @example
 * ```typescript
 * const geometry = new THREE.PlaneGeometry(1, 1);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0xffff00,
 *     side: THREE.DoubleSide
 * });
 * const plane = new THREE.Mesh(geometry, material);
 * scene.add(plane);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/PlaneGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/PlaneGeometry.js | Source}
 */
@:native("THREE.PlaneGeometry")
extern class PlaneGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `PlaneGeometry`
	 */
	var override : Dynamic;
	var type : haxe.extern.EitherType<js.three.planegeometry.Type, String>;
	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var width(default, null) : Float; var height(default, null) : Float; var widthSegments(default, null) : Float; var heightSegments(default, null) : Float; };

	/**
	 * A class for generating plane geometries.
	 * @example
	 * ```typescript
	 * const geometry = new THREE.PlaneGeometry(1, 1);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0xffff00,
	 *     side: THREE.DoubleSide
	 * });
	 * const plane = new THREE.Mesh(geometry, material);
	 * scene.add(plane);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/PlaneGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/PlaneGeometry.js | Source}
	 */
	function new(?width:Float, ?height:Float, ?widthSegments:Float, ?heightSegments:Float) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : PlaneGeometry;
}