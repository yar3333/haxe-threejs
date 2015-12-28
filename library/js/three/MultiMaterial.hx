package js.three;

import js.html.*;

// MultiMaterial does not inherit the Material class in the original code. However, it should treat as Material class.
// See tests/canvas/canvas_materials.ts.
@:native("THREE.MultiMaterial")
extern class MultiMaterial extends Material
{
	function new(?materials:Array<Material>) : Void;
	var materials : Array<Material>;

	@:overload(function():Dynamic{})
	override function toJSON(?meta:Dynamic) : Dynamic;
	@:overload(function():MultiMaterial{})
	override function clone() : Material;
}