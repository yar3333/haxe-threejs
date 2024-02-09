package js.three;

import js.lib.*;
import js.three.Constants;

@:native("THREE.MeshDepthMaterial")
extern class MeshDepthMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link MeshDepthMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMeshDepthMaterial(default, null) : Bool;
	
    /**
	 * @default 'MeshDepthMaterial'
	 */
	//var type : String;

	/**
	 * @default null
	 */
	var map : Texture;
	/**
	 * @default null
	 */
	var alphaMap : Texture;
	/**
	 * @default THREE.BasicDepthPacking
	 */
	var depthPacking : DepthPackingStrategies;
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
	 * @default false
	 */
	var fog : Bool;

	function new(?parameters:MeshDepthMaterialParameters) : Void;
	function setValues(parameters:MeshDepthMaterialParameters) : Void;
}