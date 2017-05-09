package js.three;

import js.html.*;

@:native("THREE.MultiMaterial")
extern class MultiMaterial extends Material
{
	var materials : Array<Material>;

	function new(?materials:Array<Material>) : Void;
	function toJSON(meta:Dynamic) : Dynamic;
}