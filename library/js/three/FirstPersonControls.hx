package js.three;

import js.html.*;

@:native("THREE.FirstPersonControls")
extern class FirstPersonControls
{
	#if !noEmbedJS
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/FirstPersonControls.js");
	}
	#end
	
	function new(object:Camera, ?domElement:HtmlElement) : Void;
	var object : Object3D;
	var target : Vector3;
	var domElement : js.html.CanvasElement;
	var movementSpeed : Float;
	var lookSpeed : Float;
	var noFly : Bool;
	var lookVertical : Bool;
	var autoForward : Bool;
	var activeLook : Bool;
	var heightSpeed : Bool;
	var heightCoef : Bool;
	var heightMin : Bool;
	var constrainVertical : Bool;
	var verticalMin : Float;
	var verticalMax : Float;
	var autoSpeedFactor : Float;
	var mouseX : Float;
	var mouseY : Float;
	var lat : Float;
	var lon : Float;
	var phi : Float;
	var theta : Float;
	var moveForward : Bool;
	var moveBackward : Bool;
	var moveLeft : Bool;
	var moveRight : Bool;
	var freeze : Bool;
	var mouseDragOn : Bool;
	function update(?delta:Float) : Void;
}