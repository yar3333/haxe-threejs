package js.three.renderers.webgl;

import js.three.core.Object3D;
import js.three.core.BufferGeometry;
import js.three.materials.Material;
import js.three.objects.Group;

extern interface RenderItem
{
	var id : Int;
	var object : Object3D;
	var geometry : BufferGeometry;
	var material : Material;
	var program : WebGLProgram;
	var groupOrder : Float;
	var renderOrder : Float;
	var z : Float;
	var group : Group;
}