package js.three;

@:native("THREE.Mesh")
extern class Mesh extends Object3D
{
	var geometry : Geometry;
	var material : Material;
	function new(geometry:Geometry, ?material:Material) : Void;
	function updateMorphTargets() : Void;
	function getMorphTargetIndexByName(name:String) : Int;
	// override function clone(?object:Mesh) : Mesh;
}
