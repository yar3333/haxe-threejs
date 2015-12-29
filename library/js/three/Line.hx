package js.three;

import js.html.*;

@:native("THREE.Line")
extern class Line extends Object3D
{
	function new(
		?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>,
		?material:haxe.extern.EitherType<haxe.extern.EitherType<LineDashedMaterial, LineBasicMaterial>, ShaderMaterial>,
		?mode:Float
	) : Void;
	
	var geometry : haxe.extern.EitherType<Geometry, BufferGeometry>;
	var material : Material;// LineDashedMaterial or LineBasicMaterial or ShaderMaterial
	
	override function raycast(raycaster:Raycaster, intersects:Dynamic) : Void;
	@:overload(function():Line{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(source:Line):Line{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;
}