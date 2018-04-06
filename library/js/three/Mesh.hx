package js.three;

import js.html.*;

@:native("THREE.Mesh")
extern class Mesh extends Object3D
{
	var geometry : haxe.extern.EitherType<Geometry, BufferGeometry>;
	var material : haxe.extern.EitherType<Material, Array<Material>>;
	var drawMode : TrianglesDrawModes;
	@:optional var morphTargetInfluences : Array<Float>;
	@:optional var morphTargetDictionary : Dynamic<Float>;

	@:overload(function(?geometry:haxe.extern.EitherType<Geometry,BufferGeometry>,?material:haxe.extern.EitherType<Material,Array<Material>>):Void{})
	function new() : Void;
	function setDrawMode(drawMode:TrianglesDrawModes) : Void;
	function updateMorphTargets() : Void;
	function getMorphTargetIndexByName(name:String) : Float;
	override function raycast(raycaster:Raycaster, intersects:Dynamic) : Void;
}