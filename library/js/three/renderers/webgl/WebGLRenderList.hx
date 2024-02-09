package js.three.renderers.webgl;

import js.lib.*;

@:native("THREE.WebGLRenderList")
extern class WebGLRenderList
{
	/**
	 * @default []
	 */
	var opaque : Array<RenderItem>;
	/**
	 * @default []
	 */
	var transparent : Array<RenderItem>;
	/**
	 * @default []
	 */
	var transmissive : Array<RenderItem>;

	function new(properties:WebGLProperties) : Void;
	function init() : Void;
	function push(object:Object3D, geometry:BufferGeometry, material:Material, groupOrder:Float, z:Float, group:Group) : Void;
	function unshift(object:Object3D, geometry:BufferGeometry, material:Material, groupOrder:Float, z:Float, group:Group) : Void;
	function sort(opaqueSort:Dynamic->Dynamic->Float, transparentSort:Dynamic->Dynamic->Float) : Void;
	function finish() : Void;
}