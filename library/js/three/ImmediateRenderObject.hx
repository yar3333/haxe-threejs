package js.three;

import js.html.*;

@:native("THREE.ImmediateRenderObject")
extern class ImmediateRenderObject extends Object3D
{
	var material : Material;

	function new(material:Material) : Void;
	function render(renderCallback:Function) : Void;
}