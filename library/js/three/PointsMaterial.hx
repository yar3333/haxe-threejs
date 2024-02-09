package js.three;

import js.lib.*;

@:native("THREE.PointsMaterial")
extern class PointsMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link PointsMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isPointsMaterial(default, null) : Bool;
	/**
	 * @default 'PointsMaterial'
	 */
	var type : String;
	/**
	 * @default new THREE.Color( 0xffffff )
	 */
	var color : Color;
	/**
	 * @default null
	 */
	var map : Texture;
	/**
	 * @default null
	 */
	var alphaMap : Texture;
	/**
	 * @default 1
	 */
	var size : Float;
	/**
	 * @default true
	 */
	var sizeAttenuation : Bool;
	/**
	 * Whether the material is affected by fog. Default is true.
	 * @default fog
	 */
	var fog : Bool;

	function new(?parameters:PointsMaterialParameters) : Void;
	function setValues(parameters:PointsMaterialParameters) : Void;
}