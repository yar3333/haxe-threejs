package js.three;

import js.html.*;

@:native("THREE.TrackballControls")
extern class TrackballControls extends EventDispatcher
{
	#if !threejs_noEmbed
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/TrackballControls.js");
	}
	#end
	
	function new(object:Camera, ?domElement:HtmlElement) : Void;

	var object : Camera;
	var domElement : HtmlElement;

	// API
	var enabled : Bool;
	var screen : { left: Float, top:Float, width:Float, height:Float };
	var rotateSpeed : Float;
	var zoomSpeed : Float;
	var panSpeed : Float;
	var noRotate : Bool;
	var noZoom : Bool;
	var noPan : Bool;
	var noRoll : Bool;
	var staticMoving : Bool;
	var dynamicDampingFactor : Float;
	var minDistance : Float;
	var maxDistance : Float;
	var keys : Array<Float>;

	var position0 : Vector3;
	var target0 : Vector3;
	var up0 : Vector3;

	function update() : Void;
	function reset() : Void;
	function checkDistances() : Void;
	function zoomCamera() : Void;
	function panCamera() : Void;
	function rotateCamera() : Void;

	function handleResize() : Void;
	function handleEvent(event:Dynamic) : Void;
}