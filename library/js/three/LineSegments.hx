package js.three;

import js.html.*;

@:native("THREE.LineSegments")
extern class LineSegments extends Line
{
	function new(
		?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>,
		?material:haxe.extern.EitherType<haxe.extern.EitherType<LineDashedMaterial, LineBasicMaterial>, ShaderMaterial>,
		?mode:Float
	) : Void;

	@:overload(function():LineSegments{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(source:LineSegments):LineSegments{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;
}