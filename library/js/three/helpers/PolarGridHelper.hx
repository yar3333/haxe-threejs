package js.three.helpers;

import js.lib.*;

/**
 * The {@link PolarGridHelper} is an object to define polar grids
 * @remarks
 * Grids are two-dimensional arrays of lines.
 * @example
 * ```typescript
 * const radius = 10;
 * const sectors = 16;
 * const rings = 8;
 * const divisions = 64;
 * const helper = new THREE.PolarGridHelper(radius, sectors, rings, divisions);
 * scene.add(helper);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_helpers | WebGL / helpers}
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/PolarGridHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/PolarGridHelper.js | Source}
 */
@:native("THREE.PolarGridHelper")
extern class PolarGridHelper extends LineSegments
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `PolarGridHelper`
	 */
	//var type : haxe.extern.EitherType<js.three.polargridhelper.Type, String>;

	/**
	 * The {@link PolarGridHelper} is an object to define polar grids
	 * @remarks
	 * Grids are two-dimensional arrays of lines.
	 * @example
	 * ```typescript
	 * const radius = 10;
	 * const sectors = 16;
	 * const rings = 8;
	 * const divisions = 64;
	 * const helper = new THREE.PolarGridHelper(radius, sectors, rings, divisions);
	 * scene.add(helper);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_helpers | WebGL / helpers}
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/PolarGridHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/PolarGridHelper.js | Source}
	 */
	function new(?radius:Float, ?radials:Float, ?circles:Float, ?divisions:Int, ?color1:ColorRepresentation, ?color2:ColorRepresentation) : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}