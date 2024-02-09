package js.three;

import js.lib.*;

@:native("THREE.LineDashedMaterial")
extern class LineDashedMaterial extends LineBasicMaterial
{
	/**
	 * Read-only flag to check if a given object is of type {@link LineDashedMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isLineDashedMaterial(default, null) : Bool;
	/**
	 * @default 'LineDashedMaterial'
	 */
	//var type : String;
	/**
	 * @default 1
	 */
	var scale : Float;
	/**
	 * @default 1
	 */
	var dashSize : Float;
	/**
	 * @default 1
	 */
	var gapSize : Float;

	@:overload(function(?parameters:LineDashedMaterialParameters):Void{})
	function new(?parameters:LineBasicMaterialParameters) : Void;
	@:overload(function(parameters:LineDashedMaterialParameters):Void{})
	override function setValues(parameters:LineBasicMaterialParameters) : Void;
}