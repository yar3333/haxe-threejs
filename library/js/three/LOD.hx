package js.three;

import js.html.*;

@:native("THREE.LOD")
extern class LOD extends Object3D
{
	var levels : Array<Dynamic>;
	/**
	 * @deprecated
	 */
	var objects : Array<Dynamic>;

	function new() : Void;
	function addLevel(object:Object3D, distance:Float) : Void;
	function getObjectForDistance(distance:Float) : Object3D;
	function raycast(raycaster:Raycaster, intersects:Dynamic) : Void;
	function update(camera:Camera) : Void;
	function toJSON(meta:Dynamic) : Dynamic;
}