package js.three;

import js.html.*;

@:native("THREE.ShadowMaterial")
extern class ShadowMaterial extends ShaderMaterial
{
	@:overload(function(?parameters:ShaderMaterialParameters):Void{})
	override function new() : Void;
}