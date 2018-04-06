package js.three;

import js.html.*;

/**
 * @deprecated Use an Array instead.
 */
@:native("THREE.MultiMaterial")
extern class MultiMaterial extends Material
{
	var isMultiMaterial : Bool;
	var materials : Array<Material>;

	/**
	 * @deprecated Use an Array instead.
	 */
	@:overload(function(?materials:Array<Material>):Void{})
	function new() : Void;
	@:overload(function(meta:Dynamic):Dynamic{})
	override function toJSON(?meta:Dynamic) : Dynamic;
}