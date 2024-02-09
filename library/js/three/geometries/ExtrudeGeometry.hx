package js.three.geometries;

import js.lib.*;

/**
 * Creates extruded geometry from a path shape.
 * @remarks This object extrudes a 2D shape to a 3D geometry.
 * @remarks When creating a Mesh with this geometry, if you'd like to have a separate material used for its face and its extruded sides, you can use an array of materials
 * @remarks The first material will be applied to the face; the second material will be applied to the sides.
 * @example
 * ```typescript
 * const length = 12, width = 8;
 * const shape = new THREE.Shape();
 * shape.moveTo(0, 0);
 * shape.lineTo(0, width);
 * shape.lineTo(length, width);
 * shape.lineTo(length, 0);
 * shape.lineTo(0, 0);
 * const extrudeSettings = {
 *     steps: 2,
 *     depth: 16,
 *     bevelEnabled: true,
 *     bevelThickness: 1,
 *     bevelSize: 1,
 *     bevelOffset: 0,
 *     bevelSegments: 1
 * };
 * const geometry = new THREE.ExtrudeGeometry(shape, extrudeSettings);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0x00ff00
 * });
 * const mesh = new THREE.Mesh(geometry, material);
 * scene.add(mesh);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/ExtrudeGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/ExtrudeGeometry.js | Source}
 */
@:native("THREE.ExtrudeGeometry")
extern class ExtrudeGeometry extends BufferGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `ExtrudeGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.extrudegeometry.Type, String>;

	/**
	 * An object with a property for each of the constructor parameters.
	 * @remarks Any modification after instantiation does not change the geometry.
	 */
	var parameters(default, null) : { var shapes(default, null) : haxe.extern.EitherType<Shape, Array<Shape>>; var options(default, null) : ExtrudeGeometryOptions; };

	/**
	 * Creates extruded geometry from a path shape.
	 * @remarks This object extrudes a 2D shape to a 3D geometry.
	 * @remarks When creating a Mesh with this geometry, if you'd like to have a separate material used for its face and its extruded sides, you can use an array of materials
	 * @remarks The first material will be applied to the face; the second material will be applied to the sides.
	 * @example
	 * ```typescript
	 * const length = 12, width = 8;
	 * const shape = new THREE.Shape();
	 * shape.moveTo(0, 0);
	 * shape.lineTo(0, width);
	 * shape.lineTo(length, width);
	 * shape.lineTo(length, 0);
	 * shape.lineTo(0, 0);
	 * const extrudeSettings = {
	 *     steps: 2,
	 *     depth: 16,
	 *     bevelEnabled: true,
	 *     bevelThickness: 1,
	 *     bevelSize: 1,
	 *     bevelOffset: 0,
	 *     bevelSegments: 1
	 * };
	 * const geometry = new THREE.ExtrudeGeometry(shape, extrudeSettings);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0x00ff00
	 * });
	 * const mesh = new THREE.Mesh(geometry, material);
	 * scene.add(mesh);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/ExtrudeGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/ExtrudeGeometry.js | Source}
	 */
	function new(?shapes:haxe.extern.EitherType<Shape, Array<Shape>>, ?options:ExtrudeGeometryOptions) : Void;
	
    function addShape(shape:Shape) : Void;
	
    /**
	 * @internal 
	 */
	static function fromJSON(data:{}, shapes:Dynamic) : ExtrudeGeometry;
}