package js.three;

import js.lib.*;

@:native("THREE.RawShaderMaterial")
extern class RawShaderMaterial extends ShaderMaterial
{
	/**
	 * Read-only flag to check if a given object is of type {@link RawShaderMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isRawShaderMaterial(default, null) : Bool;
	var override : Dynamic;
	//var type : String; // "RawShaderMaterial"

	function new(?parameters:ShaderMaterialParameters) : Void;
}