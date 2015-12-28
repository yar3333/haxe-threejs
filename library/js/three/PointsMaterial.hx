package js.three;

import js.html.*;

@:native("THREE.PointsMaterial")
extern class PointsMaterial extends Material
{
	function new(?parameters:PointsMaterialParameters) : Void;

	var color : Color;
	var map : Texture;
	var size : Float;
	var sizeAttenuation : Bool;
	var vertexColors : Bool;
	var fog : Bool;

	@:overload(function():PointsMaterial{})
	override function clone() : Material;
	function copy(source:PointsMaterial) : PointsMaterial;
}