package js.three;

import js.html.*;

@:native("THREE.LOD")
extern class LOD extends Object3D
{
	function new() : Void;

	var levels : Array<Dynamic>;

	function addLevel(object:Object3D, ?distance:Float) : Void;
	function getObjectForDistance(distance:Float) : Object3D;
	override function raycast(raycaster:Raycaster, intersects:Dynamic) : Void;
	function update(camera:Camera) : Void;

	@:overload(function():LOD{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(source:LOD):LOD{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;
	@:overload(function(meta:Dynamic):Dynamic{})
	override function toJSON(?meta:Dynamic) : Dynamic;
}