package js.three.scenes;

import js.three.math.Color;
import js.three.math.ColorRepresentation;

/**
 * This class contains the parameters that define linear fog, i.e., that grows linearly denser with the distance.
 *  @example
 * ```typescript
 * const scene = new THREE.Scene();
 * scene.fog = new THREE.Fog(0xcccccc, 10, 15);
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/scenes/Fog | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/scenes/Fog.js | Source}
 */
@:jsRequire("three")
@:native("THREE.Fog")
extern class Fog
	implements FogBase
{
	/**
	 * Read-only flag to check if a given object is of type {@link Fog}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isFog(default, null) : Bool;
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
	 * The minimum distance to start applying fog.
	 * @remarks Objects that are less than **near** units from the active camera won't be affected by fog.
	 * @defaultValue `1`
	 * @remarks Expects a `Float`
	 */
	var near : Float;
	/**
	 * The maximum distance at which fog stops being calculated and applied.
	 * @remarks Objects that are more than **far** units away from the active camera won't be affected by fog.
	 * @defaultValue `1000`
	 * @remarks Expects a `Float`
	 */
	var far : Float;

	/**
	 * This class contains the parameters that define linear fog, i.e., that grows linearly denser with the distance.
	 *  @example
	 * ```typescript
	 * const scene = new THREE.Scene();
	 * scene.fog = new THREE.Fog(0xcccccc, 10, 15);
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/scenes/Fog | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/scenes/Fog.js | Source}
	 */
	function new(color:ColorRepresentation, ?near:Float, ?far:Float) : Void;
	/**
	 * Returns a new {@link Fog} instance with the same parameters as this one.
	 */
	function clone() : Fog;
	/**
	 * Return {@link Fog} data in JSON format.
	 */
	function toJSON() : Dynamic;
}