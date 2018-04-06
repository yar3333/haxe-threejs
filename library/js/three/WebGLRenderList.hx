package js.three;

import js.html.*;

@:native("THREE.WebGLRenderList")
extern class WebGLRenderList
{
	var opaque : Array<RenderItem>;
	var transparent : Array<Dynamic>;

	function init() : Void;
	function push(object:Object3D, geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, material:Material, z:Float, group:Group) : Void;
	function sort() : Void;
}