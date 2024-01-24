package js.three;

import js.lib.*;

@:native("THREE.ImmediateRenderObject")
extern class ImmediateRenderObject extends Object3D
{
	var material : Material;

	@:overload(function(material:Material):Void{})
	function new() : Void;
	function render(renderCallback:haxe.Constraints.Function) : Void;
}