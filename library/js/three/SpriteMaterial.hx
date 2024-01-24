package js.three;

import js.lib.*;

@:native("THREE.SpriteMaterial")
extern class SpriteMaterial extends Material
{
	var color : Color;
	var map : Texture;
	var rotation : Float;

	@:overload(function(?parameters:SpriteMaterialParameters):Void{})
	function new() : Void;
	@:overload(function(parameters:SpriteMaterialParameters):Void{})
	override function setValues(values:MaterialParameters) : Void;
}