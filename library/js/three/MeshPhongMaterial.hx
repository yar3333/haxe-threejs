package js.three;

import js.lib.*;
import js.three.Constants;

@:native("THREE.MeshPhongMaterial")
extern class MeshPhongMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link MeshPhongMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMeshPhongMaterial(default, null) : Bool;
	
    /**
	 * @default 'MeshNormalMaterial'
	 */
	//var type : String;

	/**
	 * @default new THREE.Color( 0xffffff )
	 */
	var color : Color;
	/**
	 * @default new THREE.Color( 0x111111 )
	 */
	var specular : Color;
	/**
	 * @default 30
	 */
	var shininess : Float;
	/**
	 * @default null
	 */
	var map : Texture;
	/**
	 * @default null
	 */
	var lightMap : Texture;
	/**
	 * @default null
	 */
	var lightMapIntensity : Float;
	/**
	 * @default null
	 */
	var aoMap : Texture;
	/**
	 * @default null
	 */
	var aoMapIntensity : Float;
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
	var normalMap : Texture;
	/**
	 * @default THREE.TangentSpaceNormalMap
	 */
	var normalMapType : NormalMapTypes;
	/**
	 * @default new Vector2( 1, 1 )
	 */
	var normalScale : Vector2;
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
	 * Define whether the material is rendered with flat shading. Default is false.
	 * @default false
	 */
	var flatShading : Bool;
	/**
	 * @deprecated Use {@link MeshStandardMaterial THREE.MeshStandardMaterial} instead.
	 */
	var metal : Bool;
	/**
	 * Whether the material is affected by fog. Default is true.
	 * @default fog
	 */
	var fog : Bool;

	function new(?parameters:MeshPhongMaterialParameters) : Void;
	function setValues(parameters:MeshPhongMaterialParameters) : Void;
}