package js.three;

import js.html.*;

@:native("THREE.ImmediateRenderObject")
extern class ImmediateRenderObject extends Object3D
{
	var material : Material;

	@:overload(function(material:Material):Void{})
	override function new() : Void;
	function render(renderCallback:Function) : Void;
}