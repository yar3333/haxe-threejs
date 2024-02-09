package js.three;

import js.lib.*;

/**
 * Defines an arbitrary 2d {@link Shape} plane using paths with optional holes
 * @remarks
 * It can be used with {@link THREE.ExtrudeGeometry | ExtrudeGeometry}, {@link THREE.ShapeGeometry | ShapeGeometry}, to get points, or to get triangulated faces.
 * @example
 * ```typescript
 * const heartShape = new THREE.Shape();
 * heartShape.moveTo(25, 25);
 * heartShape.bezierCurveTo(25, 25, 20, 0, 0, 0);
 * heartShape.bezierCurveTo(-30, 0, -30, 35, -30, 35);
 * heartShape.bezierCurveTo(-30, 55, -10, 77, 25, 95);
 * heartShape.bezierCurveTo(60, 77, 80, 55, 80, 35);
 * heartShape.bezierCurveTo(80, 35, 80, 0, 50, 0);
 * heartShape.bezierCurveTo(35, 0, 25, 25, 25, 25);
 * const extrudeSettings = {
 *     depth: 8,
 *     bevelEnabled: true,
 *     bevelSegments: 2,
 *     steps: 2,
 *     bevelSize: 1,
 *     bevelThickness: 1
 * };
 * const geometry = new THREE.ExtrudeGeometry(heartShape, extrudeSettings);
 * const mesh = new THREE.Mesh(geometry, new THREE.MeshPhongMaterial());
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_shapes | geometry / shapes }
 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_extrude_shapes | geometry / extrude / shapes }
 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_extrude_shapes2 | geometry / extrude / shapes2 }
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/core/Shape | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/core/Shape.js | Source}
 */
@:native("THREE.Shape")
extern class Shape extends Path
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `Shape`
	 */
	//var type : haxe.extern.EitherType<js.three.shape.Type, String>;

	/**
	 * {@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	 * @remarks This gets automatically assigned and shouldn't be edited.
	 */
	var uuid : String;
	
    /**
	 * An array of {@link Path | paths} that define the holes in the shape.
	 * @defaultValue `[]`
	 */
	var holes : Array<Path>;

	/**
	 * Defines an arbitrary 2d {@link Shape} plane using paths with optional holes
	 * @remarks
	 * It can be used with {@link THREE.ExtrudeGeometry | ExtrudeGeometry}, {@link THREE.ShapeGeometry | ShapeGeometry}, to get points, or to get triangulated faces.
	 * @example
	 * ```typescript
	 * const heartShape = new THREE.Shape();
	 * heartShape.moveTo(25, 25);
	 * heartShape.bezierCurveTo(25, 25, 20, 0, 0, 0);
	 * heartShape.bezierCurveTo(-30, 0, -30, 35, -30, 35);
	 * heartShape.bezierCurveTo(-30, 55, -10, 77, 25, 95);
	 * heartShape.bezierCurveTo(60, 77, 80, 55, 80, 35);
	 * heartShape.bezierCurveTo(80, 35, 80, 0, 50, 0);
	 * heartShape.bezierCurveTo(35, 0, 25, 25, 25, 25);
	 * const extrudeSettings = {
	 *     depth: 8,
	 *     bevelEnabled: true,
	 *     bevelSegments: 2,
	 *     steps: 2,
	 *     bevelSize: 1,
	 *     bevelThickness: 1
	 * };
	 * const geometry = new THREE.ExtrudeGeometry(heartShape, extrudeSettings);
	 * const mesh = new THREE.Mesh(geometry, new THREE.MeshPhongMaterial());
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_shapes | geometry / shapes }
	 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_extrude_shapes | geometry / extrude / shapes }
	 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_extrude_shapes2 | geometry / extrude / shapes2 }
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/core/Shape | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/core/Shape.js | Source}
	 */
	function new(?points:Array<Vector2>) : Void;
	/**
	 * Call {@link THREE.Curve.getPoints | getPoints} on the {@link Shape} and the {@link holes} array
	 */
	function extractPoints(divisions:Int) : { var shape : Array<Vector2>; var holes : Array<Array<Vector2>>; };
	/**
	 * Get an array of {@link Vector2 | Vector2's} that represent the holes in the shape.
	 */
	function getPointsHoles(divisions:Int) : Array<Array<Vector2>>;
}