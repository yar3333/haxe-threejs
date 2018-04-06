package js.three;

import js.html.*;

extern interface RenderItem
{
	var id : Int;
	var object : Object3D;
	var geometry : haxe.extern.EitherType<Geometry, BufferGeometry>;
	var material : Material;
	var program : WebGLProgram;
	var renderOrder : Float;
	var z : Float;
	var group : Group;
}