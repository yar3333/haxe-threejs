package js.three;

import js.lib.*;

extern interface RenderItem
{
	var id : Float;
	var object : Object3D;
	var geometry : BufferGeometry;
	var material : Material;
	var program : WebGLProgram;
	var groupOrder : Float;
	var renderOrder : Float;
	var z : Float;
	var group : Group;
}