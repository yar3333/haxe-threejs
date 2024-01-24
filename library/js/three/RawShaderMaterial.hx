package js.three;

import js.lib.*;

@:native("THREE.RawShaderMaterial")
extern class RawShaderMaterial extends ShaderMaterial
{
	@:overload(function(?parameters:ShaderMaterialParameters):Void{})
	function new() : Void;
}