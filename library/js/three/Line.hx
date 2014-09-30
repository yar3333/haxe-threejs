package js.three;

@:native("THREE.Line")
extern class Line extends Object3D
{
	var geometry : Geometry;
	var materials : Material;
	var type : Int; // LineStrip
	function new(geometry:Geometry, ?material:Material, ?type:Int) : Void;
	// override function clone(?object:Line) : Line;
}
