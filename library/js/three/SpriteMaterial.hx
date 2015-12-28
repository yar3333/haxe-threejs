package js.three;

import js.html.*;

@:native("THREE.SpriteMaterial")
extern class SpriteMaterial extends Material
{
	function new(?parameters:SpriteMaterialParameters) : Void;

	var color : Color;
	var map : Texture;
	var rotation : Float;
	var fog : Bool;

	@:overload(function():SpriteMaterial{})
	override function clone() : Material;
	function copy(source:SpriteMaterial) : SpriteMaterial;
}