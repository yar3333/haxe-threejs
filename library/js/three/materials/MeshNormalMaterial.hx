package js.three.materials;

import js.lib.*;
import js.three.Constants;

@:native("THREE.MeshNormalMaterial")
extern class MeshNormalMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link MeshNormalMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMeshNormalMaterial(default, null) : Bool;
	
    /**
	 * @default 'MeshNormalMaterial'
	 */
	//var type : String;

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
	 * @default false
	 */
	var wireframe : Bool;
	/**
	 * @default 1
	 */
	var wireframeLinewidth : Float;
	/**
	 * Define whether the material is rendered with flat shading. Default is false.
	 * @default false
	 */
	var flatShading : Bool;

	function new(?parameters:MeshNormalMaterialParameters) : Void;
	function setValues(parameters:MeshNormalMaterialParameters) : Void;
}