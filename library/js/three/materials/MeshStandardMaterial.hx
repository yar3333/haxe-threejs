package js.three.materials;

import js.three.Constants;
import js.three.math.Color;
import js.three.textures.Texture;
import js.three.math.Vector2;

@:jsRequire("three", "MeshStandardMaterial")
@:native("THREE.MeshStandardMaterial")
extern class MeshStandardMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link MeshStandardMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMeshStandardMaterial(default, null) : Bool;
	
    /**
	 * @default 'MeshStandardMaterial'
	 */
	//var type : String;
	
    /**
	 * @default { 'STANDARD': '' }
	 */
	//var defines : Dynamic<Dynamic>;

	/**
	 * @default new THREE.Color( 0xffffff )
	 */
	var color : Color;
	/**
	 * @default 1
	 */
	var roughness : Float;
	/**
	 * @default 0
	 */
	var metalness : Float;
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
	 * @default new THREE.Vector2( 1, 1 )
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
	var roughnessMap : Texture;
	/**
	 * @default null
	 */
	var metalnessMap : Texture;
	/**
	 * @default null
	 */
	var alphaMap : Texture;
	/**
	 * @default null
	 */
	var envMap : Texture;
	/**
	 * @default 1
	 */
	var envMapIntensity : Float;
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
	 * Whether the material is affected by fog. Default is true.
	 * @default fog
	 */
	var fog : Bool;

	function new(?parameters:MeshStandardMaterialParameters) : Void;
	function setValues(parameters:MeshStandardMaterialParameters) : Void;
}