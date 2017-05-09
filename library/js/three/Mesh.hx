package js.three;

import js.html.*;

@:native("THREE.Mesh")
extern class Mesh extends Object3D
{
	var geometry : haxe.extern.EitherType<Geometry, BufferGeometry>;
	var material : Material;
	var drawMode : TrianglesDrawModes;

	function new(?geometry:Geometry, ?material:Material) : Void;
	function new(?geometry:BufferGeometry, ?material:Material) : Void;
	function setDrawMode(drawMode:TrianglesDrawModes) : Void;
	function updateMorphTargets() : Void;
	function getMorphTargetIndexByName(name:String) : Float;
	function raycast(raycaster:Raycaster, intersects:Dynamic) : Void;
}