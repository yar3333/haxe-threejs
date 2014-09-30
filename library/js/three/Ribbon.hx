package js.three;

@:native("THREE.Ribbon")
extern class Ribbon extends Object3D
{
	var geometry : Geometry;
	var material : Material;
	function new(geometry:Geometry, material:Material) : Void;
	// override function clone(?object:Ribbon) : Ribbon;
}
