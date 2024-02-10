package js.three.materials;

import js.three.Constants;
import js.three.math.Color;
import js.three.textures.Texture;
import js.three.math.Vector2;

@:jsRequire("three", "MeshLambertMaterial")
@:native("THREE.MeshLambertMaterial")
extern class MeshLambertMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link MeshLambertMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMeshLambertMaterial(default, null) : Bool;
	
    /**
	 * @default 'MeshLambertMaterial'
	 */
	//var type : String;

	/**
	 * @default new THREE.Color( 0xffffff )
	 */
	var color : Color;
	/**
	 * @default null
	 */
	var bumpMap : Texture;
	/**
	 * @default 1
	 */
	var bumpScale : Float;
	/**
	 * @default null
	 */
	var displacementMap : Texture;
	/**
	 * @default 1
	 */
	var displacementScale : Float;
	/**
	 * @default 0
	 */
	var displacementBias : Float;
	/**
	 * @default new THREE.Color( 0x000000 )
	 */
	var emissive : Color;
	/**
	 * @default 1
	 */
	var emissiveIntensity : Float;
	/**
	 * @default null
	 */
	var emissiveMap : Texture;
	/**
	 * @default false
	 */
	var flatShading : Bool;
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
	var normalMap : Texture;
	var normalMapType : NormalMapTypes;
	/**
	 * @default new THREE.Vector2( 1, 1 )
	 */
	var normalScale : Vector2;
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

	function new(?parameters:MeshLambertMaterialParameters) : Void;
	function setValues(parameters:MeshLambertMaterialParameters) : Void;
}