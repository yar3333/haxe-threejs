package js.three.geometries;

/**
 * A class for generating cone geometries.
 * @example
 * ```typescript
 * const geometry = new THREE.ConeGeometry(5, 20, 32);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0xffff00
 * });
 * const cone = new THREE.Mesh(geometry, material);
 * scene.add(cone);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/ConeGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/ConeGeometry.js | Source}
 */
@:native("THREE.ConeGeometry")
extern class ConeGeometry extends CylinderGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `ConeGeometry`
	 * An object with a property for each of the constructor parameters.
	 * @remarks {@link radiusTop} and {@link radiusBottom} are from base {@link THREE.CylinderGeometry} class.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	//var type : haxe.extern.EitherType<js.three.conegeometry.Type, String>;

	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `ConeGeometry`
	 * An object with a property for each of the constructor parameters.
	 * @remarks {@link radiusTop} and {@link radiusBottom} are from base {@link THREE.CylinderGeometry} class.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	//var parameters : { var radius(default, null) : Float; var radiusTop(default, null) : Float; var radiusBottom(default, null) : Float; var height(default, null) : Float; var radialSegments(default, null) : Float; var heightSegments(default, null) : Float; var openEnded(default, null) : Bool; var thetaStart(default, null) : Float; var thetaLength(default, null) : Float; };

	/**
	 * A class for generating cone geometries.
	 * @example
	 * ```typescript
	 * const geometry = new THREE.ConeGeometry(5, 20, 32);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0xffff00
	 * });
	 * const cone = new THREE.Mesh(geometry, material);
	 * scene.add(cone);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/ConeGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/ConeGeometry.js | Source}
	 */
	function new(?radius:Float, ?height:Float, ?radialSegments:Int, ?heightSegments:Int, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float) : Void;
    
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : ConeGeometry;
}