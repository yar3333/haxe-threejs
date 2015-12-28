package js.three;

import js.html.*;

@:native("THREE.Sprite")
extern class Sprite extends Object3D
{
	function new(?material:Material) : Void;

	var geometry : BufferGeometry;
	var material : SpriteMaterial;

	override function raycast(raycaster:Raycaster, intersects:Dynamic) : Void;
	@:overload(function():Sprite{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(?source:Sprite):Sprite{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;
}