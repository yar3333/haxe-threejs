package js.three.scenes;

import js.three.math.Color;

extern interface FogBase
{
	/**
	 * Optional name of the `Fog` object
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
	 * Returns a new Fog instance with the same parameters as this one.
	 */
	function clone() : FogBase;
	/**
	 * Return Fog data in JSON format.
	 */
	function toJSON() : Dynamic;
}