package js.three.materials;

import js.three.math.Color;
import js.three.textures.Texture;

@:jsRequire("three", "SpriteMaterial")
@:native("THREE.SpriteMaterial")
extern class SpriteMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link SpriteMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isSpriteMaterial(default, null) : Bool;
	/**
	 * @default 'SpriteMaterial'
	 */
	//var type : String;
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
	 * @default 0
	 */
	var rotation : Float;
	/**
	 * @default true
	 */
	var sizeAttenuation : Bool;
	/**
	 * @default true
	 */
	//var transparent : Bool;
	/**
	 * Whether the material is affected by fog. Default is true.
	 * @default fog
	 */
	var fog : Bool;

	function new(?parameters:SpriteMaterialParameters) : Void;
	function setValues(parameters:SpriteMaterialParameters) : Void;
	function copy(source:SpriteMaterial) : SpriteMaterial;
}