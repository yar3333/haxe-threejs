package js.three.geometries;

import js.three.core.BufferGeometry;

/**
 * A class for generating cylinder geometries.
 * @example
 * ```typescript
 * const geometry = new THREE.CylinderGeometry(5, 5, 20, 32);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0xffff00
 * });
 * const cylinder = new THREE.Mesh(geometry, material);
 * scene.add(cylinder);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/CylinderGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/CylinderGeometry.js | Source}
 */
@:native("THREE.CylinderGeometry")
extern class CylinderGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `CylinderGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.cylindergeometry.Type, String>;

	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var radiusTop(default, null) : Float; var radiusBottom(default, null) : Float; var height(default, null) : Float; var radialSegments(default, null) : Float; var heightSegments(default, null) : Float; var openEnded(default, null) : Bool; var thetaStart(default, null) : Float; var thetaLength(default, null) : Float; };

	/**
	 * A class for generating cylinder geometries.
	 * @example
	 * ```typescript
	 * const geometry = new THREE.CylinderGeometry(5, 5, 20, 32);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0xffff00
	 * });
	 * const cylinder = new THREE.Mesh(geometry, material);
	 * scene.add(cylinder);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/CylinderGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/CylinderGeometry.js | Source}
	 */
	function new(?radiusTop:Float, ?radiusBottom:Float, ?height:Float, ?radialSegments:Int, ?heightSegments:Int, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float) : Void;
	
    /**
	 * @internal 
	 */
	static function fromJSON(data:Dynamic) : CylinderGeometry;
}