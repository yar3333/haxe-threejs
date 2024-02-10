package js.three.helpers;

import js.three.objects.LineSegments;
import js.three.core.BufferGeometry;
import js.three.materials.LineBasicMaterial;
import js.three.math.ColorRepresentation;

/**
 * The {@link GridHelper} is an object to define grids
 * @remarks
 * Grids are two-dimensional arrays of lines.
 * @example
 * ```typescript
 * const size = 10;
 * const divisions = 10;
 * const {@link GridHelper} = new THREE.GridHelper(size, divisions);
 * scene.add(gridHelper);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_helpers | WebGL / helpers}
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/GridHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/GridHelper.js | Source}
 */
@:jsRequire("three", "GridHelper")
@:native("THREE.GridHelper")
extern class GridHelper extends LineSegments<BufferGeometry, LineBasicMaterial>
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `GridHelper`
	 */
	//var type : haxe.extern.EitherType<js.three.gridhelper.Type, String>;

	/**
	 * The {@link GridHelper} is an object to define grids
	 * @remarks
	 * Grids are two-dimensional arrays of lines.
	 * @example
	 * ```typescript
	 * const size = 10;
	 * const divisions = 10;
	 * const {@link GridHelper} = new THREE.GridHelper(size, divisions);
	 * scene.add(gridHelper);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_helpers | WebGL / helpers}
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/GridHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/GridHelper.js | Source}
	 */
	function new(?size:Float, ?divisions:Int, ?color1:ColorRepresentation, ?color2:ColorRepresentation) : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}