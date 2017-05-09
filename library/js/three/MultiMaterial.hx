package js.three;

import js.html.*;

@:native("THREE.MultiMaterial")
extern class MultiMaterial extends Material
{
	var materials : Array<Material>;

	@:overload(function(?materials:Array<Material>):Void{})
	override function new() : Void;
	override function toJSON(meta:Dynamic) : Dynamic;
}