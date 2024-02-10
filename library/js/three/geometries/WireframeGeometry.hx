package js.three.geometries;

import js.three.core.BufferGeometry;

/**
 * This can be used as a helper object to view a {@link BufferGeometry | geometry} as a wireframe.
 * @example
 * ```typescript
 * const geometry = new THREE.SphereGeometry(100, 100, 100);
 * const wireframe = new THREE.WireframeGeometry(geometry);
 * const line = new THREE.LineSegments(wireframe);
 * line.material.depthTest = false;
 * line.material.opacity = 0.25;
 * line.material.transparent = true;
 * scene.add(line);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_helpers | helpers}
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/WireframeGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/WireframeGeometry.js | Source}
 */
@:jsRequire("three")
@:native("THREE.WireframeGeometry")
extern class WireframeGeometry<TBufferGeometry:BufferGeometry = BufferGeometry> extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `WireframeGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.wireframegeometry.Type, String>;
    
	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var geometry(default, null) : TBufferGeometry; };

	/**
	 * This can be used as a helper object to view a {@link BufferGeometry | geometry} as a wireframe.
	 * @example
	 * ```typescript
	 * const geometry = new THREE.SphereGeometry(100, 100, 100);
	 * const wireframe = new THREE.WireframeGeometry(geometry);
	 * const line = new THREE.LineSegments(wireframe);
	 * line.material.depthTest = false;
	 * line.material.opacity = 0.25;
	 * line.material.transparent = true;
	 * scene.add(line);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_helpers | helpers}
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/WireframeGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/WireframeGeometry.js | Source}
	 */
	function new(?geometry:TBufferGeometry) : Void;
}