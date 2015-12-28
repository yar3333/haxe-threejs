package js.three;

import js.html.*;

/**
 * Abstract base class for lights.
 */
@:native("THREE.Light")
extern class Light extends Object3D
{
	function new(?hex:Int) : Void;

	var color : Color;
	//var receiveShadow : Bool;

	var shadowCameraFov : Float;
	var shadowCameraLeft : Float;
	var shadowCameraRight : Float;
	var shadowCameraTop : Float;
	var shadowCameraBottom : Float;
	var shadowCameraNear : Float;
	var shadowCameraFar : Float;
	var shadowBias : Float;
	var shadowDarkness : Float;
	var shadowMapWidth : Float;
	var shadowMapHeight : Float;

	@:overload(function(?recursive:Bool):Light{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(source:Light):Light{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;
	@:overload(function(meta:Dynamic):Dynamic{})
	override function toJSON(?meta:Dynamic) : Dynamic;
}