package js.three.materials;

import js.lib.*;

@:native("THREE.ShadowMaterial")
extern class ShadowMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link ShadowMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isShadowMaterial(default, null) : Bool;
	/**
	 * @default 'ShadowMaterial'
	 */
	//var type : String;

	/**
	 * @default new THREE.Color( 0x000000 )
	 */
	var color : Color;
	
    /**
	 * @default true
	 */
	//var transparent : Bool;
	
    /**
	 * Whether the material is affected by fog. Default is true.
	 * @default fog
	 */
	var fog : Bool;

	function new(?parameters:ShadowMaterialParameters) : Void;
}