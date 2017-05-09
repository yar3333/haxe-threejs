package js.three;

import js.html.*;

@:native("THREE.Line")
extern class Line extends Object3D
{
	var geometry : haxe.extern.EitherType<Geometry, BufferGeometry>;
	var material : Material;

	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:haxe.extern.EitherType<LineDashedMaterial, haxe.extern.EitherType<LineBasicMaterial, ShaderMaterial>>, ?mode:Float) : Void;
	function raycast(raycaster:Raycaster, intersects:Dynamic) : Void;
}