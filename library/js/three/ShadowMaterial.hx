package js.three;

import js.lib.*;

@:native("THREE.ShadowMaterial")
extern class ShadowMaterial extends ShaderMaterial
{
	@:overload(function(?parameters:ShaderMaterialParameters):Void{})
	function new() : Void;
}