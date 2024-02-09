package js.three;

import js.lib.*;

/**
 * A class for generating sphere geometries.
 * @example
 * ```typescript
 * const geometry = new THREE.SphereGeometry(15, 32, 16);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0xffff00
 * });
 * const sphere = new THREE.Mesh(geometry, material);
 * scene.add(sphere);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/SphereGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/SphereGeometry.js | Source}
 */
@:native("THREE.SphereGeometry")
extern class SphereGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `SphereGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.spheregeometry.Type, String>;
    
	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var radius(default, null) : Float; var widthSegments(default, null) : Float; var heightSegments(default, null) : Float; var phiStart(default, null) : Float; var phiLength(default, null) : Float; var thetaStart(default, null) : Float; var thetaLength(default, null) : Float; };

	/**
	 * A class for generating sphere geometries.
	 * @example
	 * ```typescript
	 * const geometry = new THREE.SphereGeometry(15, 32, 16);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0xffff00
	 * });
	 * const sphere = new THREE.Mesh(geometry, material);
	 * scene.add(sphere);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/SphereGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/SphereGeometry.js | Source}
	 */
	function new(?radius:Float, ?widthSegments:Float, ?heightSegments:Int, ?phiStart:Float, ?phiLength:Float, ?thetaStart:Float, ?thetaLength:Float) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : SphereGeometry;
}