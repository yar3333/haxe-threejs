package js.three.geometries;

import js.three.core.BufferGeometry;

/**
 * {@link CircleGeometry} is a simple shape of Euclidean geometry
 * @remarks
 * It is constructed from a number of triangular segments that are oriented around a central point and extend as far out as a given radius
 * It is built counter-clockwise from a start angle and a given central angle
 * It can also be used to create regular polygons, where the number of segments determines the number of sides.
 * @example
 * ```typescript
 * const geometry = new THREE.CircleGeometry(5, 32);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0xffff00
 * });
 * const circle = new THREE.Mesh(geometry, material);
 * scene.add(circle);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/CircleGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/CircleGeometry.js | Source}
 */
@:native("THREE.CircleGeometry")
extern class CircleGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `CircleGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.circlegeometry.Type, String>;
    
	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var radius(default, null) : Float; var segments(default, null) : Float; var thetaStart(default, null) : Float; var thetaLength(default, null) : Float; };

	/**
	 * {@link CircleGeometry} is a simple shape of Euclidean geometry
	 * @remarks
	 * It is constructed from a number of triangular segments that are oriented around a central point and extend as far out as a given radius
	 * It is built counter-clockwise from a start angle and a given central angle
	 * It can also be used to create regular polygons, where the number of segments determines the number of sides.
	 * @example
	 * ```typescript
	 * const geometry = new THREE.CircleGeometry(5, 32);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0xffff00
	 * });
	 * const circle = new THREE.Mesh(geometry, material);
	 * scene.add(circle);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/CircleGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/CircleGeometry.js | Source}
	 */
	function new(?radius:Float, ?segments:Int, ?thetaStart:Float, ?thetaLength:Float) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : CircleGeometry;
}