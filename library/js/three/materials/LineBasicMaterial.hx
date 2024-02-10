package js.three.materials;

import js.three.math.Color;
import js.three.textures.Texture;

@:jsRequire("three")
@:native("THREE.LineBasicMaterial")
extern class LineBasicMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link LineBasicMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isLineBasicMaterial(default, null) : Bool;
	
    /**
	 * @default 'LineBasicMaterial'
	 */
	//var type : String;

	/**
	 * @default 0xffffff
	 */
	var color : Color;
	/**
	 * Whether the material is affected by fog. Default is true.
	 * @default true
	 */
	var fog : Bool;
	/**
	 * @default 1
	 */
	var linewidth : Float;
	/**
	 * @default 'round'
	 */
	var linecap : String;
	/**
	 * @default 'round'
	 */
	var linejoin : String;
	/**
	 * Sets the color of the lines using data from a {@link Texture}.
	 */
	var map : Texture;

	function new(?parameters:LineBasicMaterialParameters) : Void;
	function setValues(parameters:LineBasicMaterialParameters) : Void;
}