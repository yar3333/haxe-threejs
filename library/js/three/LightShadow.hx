package js.three;

import js.html.*;

@:native("THREE.LightShadow")
extern class LightShadow
{
	function new(camera:Camera) : Void;

	var camera : Camera;
	var bias : Float;
	var darkness : Float;
	var mapSize : Vector2;
	var map : RenderTarget;
	var matrix : Matrix4;

	function copy(source:LightShadow) : Void;
	function clone() : LightShadow;
}