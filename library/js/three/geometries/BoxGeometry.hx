package js.three.geometries;

import js.lib.*;

/**
 * {@link BoxGeometry} is a geometry class for a rectangular cuboid with a given 'width', 'height', and 'depth'
 * @remarks On creation, the cuboid is centred on the origin, with each edge parallel to one of the axes.
 * @example
 * ```typescript
 * const geometry = new THREE.BoxGeometry(1, 1, 1);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0x00ff00
 * });
 * const cube = new THREE.Mesh(geometry, material);
 * scene.add(cube);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/BoxGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/BoxGeometry.js | Source}
 */
@:native("THREE.BoxGeometry")
extern class BoxGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `BoxGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.boxgeometry.Type, String>;
	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var width(default, null) : Float; var height(default, null) : Float; var depth(default, null) : Float; var widthSegments(default, null) : Float; var heightSegments(default, null) : Float; var depthSegments(default, null) : Float; };

	/**
	 * {@link BoxGeometry} is a geometry class for a rectangular cuboid with a given 'width', 'height', and 'depth'
	 * @remarks On creation, the cuboid is centred on the origin, with each edge parallel to one of the axes.
	 * @example
	 * ```typescript
	 * const geometry = new THREE.BoxGeometry(1, 1, 1);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0x00ff00
	 * });
	 * const cube = new THREE.Mesh(geometry, material);
	 * scene.add(cube);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/BoxGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/BoxGeometry.js | Source}
	 */
	function new(?width:Float, ?height:Float, ?depth:Float, ?widthSegments:Float, ?heightSegments:Int, ?depthSegments:Float) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : BoxGeometry;
}