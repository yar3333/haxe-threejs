package js.three;

import js.html.*;

@:native("THREE.OrbitControls")
extern class OrbitControls
{
	#if !threejs_noEmbed
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/OrbitControls.js");
	}
	#end
	
	function new(object:Camera, ?domElement:HtmlElement) : Void;

	var object : Camera;
	var domElement : HtmlElement;

	// API
	var enabled : Bool;
	var target : Vector3;

	/**
	 * @deprecated
	 */
	var center : Vector3;

	var noZoom : Bool;
	var zoomSpeed : Float;
	var minDistance : Float;
	var maxDistance : Float;
	var noRotate : Bool;
	var rotateSpeed : Float;
	var noPan : Bool;
	var keyPanSpeed : Float;
	var autoRotate : Bool;
	var autoRotateSpeed : Float;
	var minPolarAngle : Float;
	var maxPolarAngle : Float;
	var minAzimuthAngle : Float;
	var maxAzimuthAngle : Float;
	var noKeys : Bool;
	var keys : { LEFT: Float, UP:Float, RIGHT:Float, BOTTOM:Float };
	var mouseButtons : { ORBIT: MOUSE, ZOOM:MOUSE, PAN:MOUSE };

	function rotateLeft(?angle:Float) : Void;
	function rotateUp(?angle:Float) : Void;
	function panLeft(?distance:Float) : Void;
	function panUp(?distance:Float) : Void;
	function pan(deltaX:Float, deltaY:Float) : Void;
	function dollyIn(dollyScale:Float) : Void;
	function dollyOut(dollyScale:Float) : Void;
	function update() : Void;
	function reset() : Void;
	function getPolarAngle() : Float;
	function getAzimuthalAngle() : Float;
	
	// EventDispatcher mixins
	function addEventListener(type:String, listener:Dynamic->Void) : Void;
	function hasEventListener(type:String, listener:Dynamic->Void) : Void;
	function removeEventListener(type:String, listener:Dynamic->Void) : Void;
	function dispatchEvent(event: { type: String, target:Dynamic }) : Void;
}