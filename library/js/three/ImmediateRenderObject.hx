package js.three;

import js.html.*;

@:native("THREE.ImmediateRenderObject")
extern class ImmediateRenderObject extends Object3D
{
	function new(material:Material) : Void;

	var material : Material;
	function render(renderCallback:Dynamic) : Void;
}