package js.three.materials;

import js.three.math.Color;
import js.three.textures.Texture;
import js.three.math.Vector2;

@:jsRequire("three", "MeshMatcapMaterial")
@:native("THREE.MeshMatcapMaterial")
extern class MeshMatcapMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link MeshMatcapMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMeshMatcapMaterial(default, null) : Bool;
	/**
	 * @default 'MeshMatcapMaterial'
	 */
	//var type : String;
	
    /**
	 * @default { 'MATCAP': '' }
	 */
	//var defines : Dynamic<Dynamic>;
	
    /**
	 * @default new THREE.Color( 0xffffff )
	 */
	var color : Color;
	/**
	 * @default null
	 */
	var matcap : Texture;
	/**
	 * @default null
	 */
	var map : Texture;
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
	var alphaMap : Texture;
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

	function new(?parameters:MeshMatcapMaterialParameters) : Void;
	function setValues(parameters:MeshMatcapMaterialParameters) : Void;
}