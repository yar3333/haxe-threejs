package js.three.materials;

import js.three.Constants;
import js.three.math.Color;
import js.three.textures.Texture;

@:jsRequire("three", "MeshBasicMaterial")
@:native("THREE.MeshBasicMaterial")
extern class MeshBasicMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link MeshBasicMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMeshBasicMaterial(default, null) : Bool;
	/**
	 * @default 'MeshBasicMaterial'
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
	var lightMap : Texture;
	/**
	 * @default 1
	 */
	var lightMapIntensity : Float;
	/**
	 * @default null
	 */
	var aoMap : Texture;
	/**
	 * @default 1
	 */
	var aoMapIntensity : Float;
	/**
	 * @default null
	 */
	var specularMap : Texture;
	/**
	 * @default null
	 */
	var alphaMap : Texture;
	/**
	 * @default null
	 */
	var envMap : Texture;
	/**
	 * @default THREE.MultiplyOperation
	 */
	var combine : Combine;
	/**
	 * @default 1
	 */
	var reflectivity : Float;
	/**
	 * @default 0.98
	 */
	var refractionRatio : Float;
	/**
	 * @default false
	 */
	var wireframe : Bool;
	/**
	 * @default 1
	 */
	var wireframeLinewidth : Float;
	/**
	 * @default 'round'
	 */
	var wireframeLinecap : String;
	/**
	 * @default 'round'
	 */
	var wireframeLinejoin : String;
	/**
	 * Whether the material is affected by fog. Default is true.
	 * @default fog
	 */
	var fog : Bool;

	function new(?parameters:MeshBasicMaterialParameters) : Void;
	function setValues(parameters:MeshBasicMaterialParameters) : Void;
}