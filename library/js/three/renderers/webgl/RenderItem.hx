package js.three.renderers.webgl;

import js.lib.*;

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