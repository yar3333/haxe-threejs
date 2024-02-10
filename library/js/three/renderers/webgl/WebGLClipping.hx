package js.three.renderers.webgl;

import js.three.math.Plane;
import js.three.cameras.Camera;
import js.three.materials.Material;

@:native("THREE.WebGLClipping")
extern class WebGLClipping
{
	var uniform : { var value : Dynamic; var needsUpdate : Bool; };
	/**
	 * @default 0
	 */
	var numPlanes : Float;
	/**
	 * @default 0
	 */
	var numIntersection : Float;

	function new(properties:WebGLProperties) : Void;
	function init(planes:Array<Dynamic>, enableLocalClipping:Bool) : Bool;
	function beginShadows() : Void;
	function endShadows() : Void;
	function setGlobalState(planes:Array<Plane>, camera:Camera) : Void;
	function setState(material:Material, camera:Camera, useCache:Bool) : Void;
}