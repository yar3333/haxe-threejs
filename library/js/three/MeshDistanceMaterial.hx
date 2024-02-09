package js.three;

import js.lib.*;

@:native("THREE.MeshDistanceMaterial")
extern class MeshDistanceMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link MeshDistanceMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMeshDistanceMaterial(default, null) : Bool;
	/**
	 * @default 'MeshDistanceMaterial'
	 */
	var type : String;
	/**
	 * @default null
	 */
	var map : Texture;
	/**
	 * @default null
	 */
	var alphaMap : Texture;
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
	var fog : Bool;

	function new(?parameters:MeshDistanceMaterialParameters) : Void;
	function setValues(parameters:MeshDistanceMaterialParameters) : Void;
}