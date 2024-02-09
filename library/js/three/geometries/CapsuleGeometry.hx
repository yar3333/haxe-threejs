package js.three.geometries;

import js.lib.*;

/**
 * {@link CapsuleGeometry} is a geometry class for a capsule with given radii and height
 * @remarks It is constructed using a lathe.
 * @example
 * ```typescript
 * const geometry = new THREE.CapsuleGeometry(1, 1, 4, 8);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0x00ff00
 * });
 * const capsule = new THREE.Mesh(geometry, material);
 * scene.add(capsule);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/CapsuleGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/CapsuleGeometry.js | Source}
 */
@:native("THREE.CapsuleGeometry")
extern class CapsuleGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `CapsuleGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.capsulegeometry.Type, String>;
	
    /**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var radius(default, null) : Float; var length(default, null) : Float; var capSegments(default, null) : Float; var radialSegments(default, null) : Float; };

	/**
	 * {@link CapsuleGeometry} is a geometry class for a capsule with given radii and height
	 * @remarks It is constructed using a lathe.
	 * @example
	 * ```typescript
	 * const geometry = new THREE.CapsuleGeometry(1, 1, 4, 8);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0x00ff00
	 * });
	 * const capsule = new THREE.Mesh(geometry, material);
	 * scene.add(capsule);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/CapsuleGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/CapsuleGeometry.js | Source}
	 */
	function new(?radius:Float, ?length:Float, ?capSegments:Float, ?radialSegments:Int) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : CapsuleGeometry;
}