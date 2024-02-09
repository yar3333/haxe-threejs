package js.three;

import js.lib.*;

/**
 * An axis object to visualize the 3 axes in a simple way.
 * @remarks
 * The X axis is red
 * The Y axis is green
 * The Z axis is blue.
 * @example
 * ```typescript
 * const {@link AxesHelper} = new THREE.AxesHelper(5);
 * scene.add(axesHelper);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_buffergeometry_compression | WebGL / buffergeometry / compression}
 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_convex | WebGL / geometry / convex}
 * @see Example: {@link https://threejs.org/examples/#webgl_loader_nrrd | WebGL / loader / nrrd}
 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/AxesHelper | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/AxesHelper.js | Source}
 */
@:native("THREE.AxesHelper")
extern class AxesHelper extends LineSegments
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @override
	 * @defaultValue `AxesHelper`
	 */
	var override : Dynamic;
	var type : haxe.extern.EitherType<js.three.axeshelper.Type, String>;

	/**
	 * An axis object to visualize the 3 axes in a simple way.
	 * @remarks
	 * The X axis is red
	 * The Y axis is green
	 * The Z axis is blue.
	 * @example
	 * ```typescript
	 * const {@link AxesHelper} = new THREE.AxesHelper(5);
	 * scene.add(axesHelper);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_buffergeometry_compression | WebGL / buffergeometry / compression}
	 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_convex | WebGL / geometry / convex}
	 * @see Example: {@link https://threejs.org/examples/#webgl_loader_nrrd | WebGL / loader / nrrd}
	 * @see {@link https://threejs.org/docs/index.html#api/en/helpers/AxesHelper | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/helpers/AxesHelper.js | Source}
	 */
	function new(?size:Float) : Void;
	/**
	 * Sets the axes colors to {@link Color | xAxisColor}, {@link Color | yAxisColor}, {@link Color | zAxisColor}.
	 */
	function setColors(xAxisColor:ColorRepresentation, yAxisColor:ColorRepresentation, zAxisColor:ColorRepresentation) : AxesHelper;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}