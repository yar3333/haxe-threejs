package js.three;

import js.html.*;

@:native("THREE.Sprite")
extern class Sprite extends Object3D
{
	var geometry : BufferGeometry;
	var material : SpriteMaterial;

	function new(?material:Material) : Void;
	function raycast(raycaster:Raycaster, intersects:Dynamic) : Void;
}