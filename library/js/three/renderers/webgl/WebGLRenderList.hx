package js.three.renderers.webgl;

import js.three.core.Object3D;
import js.three.core.BufferGeometry;
import js.three.materials.Material;
import js.three.objects.Group;

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