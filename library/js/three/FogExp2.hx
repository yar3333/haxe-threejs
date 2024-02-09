package js.three;

import js.lib.*;

/**
 * This class contains the parameters that define exponential squared fog, which gives a clear view near the camera and a faster than exponentially densening fog farther from the camera.
 * @example
 * ```typescript
 * const scene = new THREE.Scene();
 * scene.fog = new THREE.FogExp2(0xcccccc, 0.002);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_terrain | webgl geometry terrain}
 * @see {@link https://threejs.org/docs/index.html#api/en/scenes/FogExp2 | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/scenes/FogExp2.js | Source}
 */
@:native("THREE.FogExp2")
extern class FogExp2
	implements FogBase
{
	/**
	 * Read-only flag to check if a given object is of type {@link FogExp2}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isFogExp2(default, null) : Bool;
	/**
	 * Optional name of the object
	 * @remarks _(doesn't need to be unique)_.
	 * @defaultValue `""`
	 */
	var name : String;
	/**
	 * Fog color.
	 * @remarks If set to black, far away objects will be rendered black.
	 */
	var color : Color;
	/**
	 * Defines how fast the fog will grow dense.
	 * @defaultValue `0.00025`
	 * @remarks Expects a `Float`
	 */
	var density : Float;

	/**
	 * This class contains the parameters that define exponential squared fog, which gives a clear view near the camera and a faster than exponentially densening fog farther from the camera.
	 * @example
	 * ```typescript
	 * const scene = new THREE.Scene();
	 * scene.fog = new THREE.FogExp2(0xcccccc, 0.002);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_terrain | webgl geometry terrain}
	 * @see {@link https://threejs.org/docs/index.html#api/en/scenes/FogExp2 | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/scenes/FogExp2.js | Source}
	 */
	function new(color:ColorRepresentation, ?density:Float) : Void;
	/**
	 * Returns a new {@link FogExp2} instance with the same parameters as this one.
	 */
	@:overload(function():FogExp2{})
	function clone() : FogBase;
	/**
	 * Return {@link FogExp2} data in JSON format.
	 */
	function toJSON() : Dynamic;
}