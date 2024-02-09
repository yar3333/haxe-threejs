package js.three;

import js.lib.*;

/**
 * Creates meshes with axial symmetry like vases
 * @remarks
 * The lathe rotates around the Y axis.
 * @example
 * ```typescript
 * const points = [];
 * for (let i = 0; i & lt; 10; i++) {
 *     points.push(new THREE.Vector2(Math.sin(i * 0.2) * 10 + 5, (i - 5) * 2));
 * }
 * const geometry = new THREE.LatheGeometry(points);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0xffff00
 * });
 * const lathe = new THREE.Mesh(geometry, material);
 * scene.add(lathe);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/LatheGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/LatheGeometry.js | Source}
 */
@:native("THREE.LatheGeometry")
extern class LatheGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `LatheGeometry`
	 */
	var override : Dynamic;
	var type : haxe.extern.EitherType<js.three.lathegeometry.Type, String>;
	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var points(default, null) : Array<Vector2>; var segments(default, null) : Float; var phiStart(default, null) : Float; var phiLength(default, null) : Float; };

	/**
	 * Creates meshes with axial symmetry like vases
	 * @remarks
	 * The lathe rotates around the Y axis.
	 * @example
	 * ```typescript
	 * const points = [];
	 * for (let i = 0; i & lt; 10; i++) {
	 *     points.push(new THREE.Vector2(Math.sin(i * 0.2) * 10 + 5, (i - 5) * 2));
	 * }
	 * const geometry = new THREE.LatheGeometry(points);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0xffff00
	 * });
	 * const lathe = new THREE.Mesh(geometry, material);
	 * scene.add(lathe);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/LatheGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/LatheGeometry.js | Source}
	 */
	function new(?points:Array<Vector2>, ?segments:Float, ?phiStart:Float, ?phiLength:Float) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : LatheGeometry;
}