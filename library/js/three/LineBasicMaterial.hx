package js.three;

import js.html.*;

@:native("THREE.LineBasicMaterial")
extern class LineBasicMaterial extends Material
{
	function new(?parameters:LineBasicMaterialParameters) : Void;

	var color : Color;
	var linewidth : Float;
	var linecap : String;
	var linejoin : String;
	var vertexColors : Colors;
	var fog : Bool;

	@:overload(function():LineBasicMaterial{})
	override function clone() : Material;
	function copy(source:LineBasicMaterial) : LineBasicMaterial;
}