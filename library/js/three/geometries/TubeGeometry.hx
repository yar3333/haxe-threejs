package js.three.geometries;

import js.three.core.BufferGeometry;
import js.three.extras.core.Curve;
import js.three.math.Vector3;

/**
 * Creates a tube that extrudes along a 3d curve.
 * @example
 * ```typescript
 * class CustomSinCurve extends THREE.Curve {
 *     constructor(scale = 1) {
 *         super();
 *         this.scale = scale;
 *     }
 *     getPoint(t, optionalTarget = new THREE.Vector3()) {
 *         const tx = t * 3 - 1.5;
 *         const ty = Math.sin(2 * Math.PI * t);
 *         const tz = 0;
 *         return optionalTarget.set(tx, ty, tz).multiplyScalar(this.scale);
 *     }
 * }
 * const path = new CustomSinCurve(10);
 * const geometry = new THREE.TubeGeometry(path, 20, 2, 8, false);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0x00ff00
 * });
 * const mesh = new THREE.Mesh(geometry, material);
 * scene.add(mesh);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/TubeGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/TubeGeometry.js | Source}
 */
@:jsRequire("three", "TubeGeometry")
@:native("THREE.TubeGeometry")
extern class TubeGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `TubeGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.tubegeometry.Type, String>;
    
	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var path(default, null) : Curve<Vector3>; var tubularSegments(default, null) : Float; var radius(default, null) : Float; var radialSegments(default, null) : Float; var closed(default, null) : Bool; };
	/**
	 * An array of {@link THREE.Vector3 | Vector3} tangents
	 */
	var tangents : Array<Vector3>;
	/**
	 * An array of {@link THREE.Vector3 | Vector3} normals
	 */
	var normals : Array<Vector3>;
	/**
	 * An array of {@link THREE.Vector3 | Vector3} binormals
	 */
	var binormals : Array<Vector3>;

	/**
	 * Creates a tube that extrudes along a 3d curve.
	 * @example
	 * ```typescript
	 * class CustomSinCurve extends THREE.Curve {
	 *     constructor(scale = 1) {
	 *         super();
	 *         this.scale = scale;
	 *     }
	 *     getPoint(t, optionalTarget = new THREE.Vector3()) {
	 *         const tx = t * 3 - 1.5;
	 *         const ty = Math.sin(2 * Math.PI * t);
	 *         const tz = 0;
	 *         return optionalTarget.set(tx, ty, tz).multiplyScalar(this.scale);
	 *     }
	 * }
	 * const path = new CustomSinCurve(10);
	 * const geometry = new THREE.TubeGeometry(path, 20, 2, 8, false);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0x00ff00
	 * });
	 * const mesh = new THREE.Mesh(geometry, material);
	 * scene.add(mesh);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/TubeGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/TubeGeometry.js | Source}
	 */
	function new(?path:Curve<Vector3>, ?tubularSegments:Float, ?radius:Float, ?radialSegments:Int, ?closed:Bool) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : TubeGeometry;
}