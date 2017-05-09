package js.three;

import js.html.*;

@:native("THREE.OrthographicTrackballControls")
extern class OrthographicTrackballControls extends EventDispatcher
{
	var object : Camera;
	var domElement : HTMLElement;
	var enabled : Bool;
	var screen : { var left : Float; var top : Float; var width : Float; var height : Float; };
	var radius : Float;
	var rotateSpeed : Float;
	var zoomSpeed : Float;
	var panSpeed : Float;
	var noRotate : Bool;
	var noZoom : Bool;
	var noPan : Bool;
	var noRoll : Bool;
	var staticMoving : Bool;
	var dynamicDampingFactor : Float;
	var keys : Array<Float>;
	var target : Vector3;
	var position0 : Vector3;
	var target0 : Vector3;
	var up0 : Vector3;
	var left0 : Float;
	var right0 : Float;
	var top0 : Float;
	var bottom0 : Float;

	function new(object:Camera, ?domElement:HTMLElement) : Void;
	function update() : Void;
	function reset() : Void;
	function checkDistances() : Void;
	function zoomCamera() : Void;
	function panCamera() : Void;
	function rotateCamera() : Void;
	function handleResize() : Void;
	function handleEvent(event:Dynamic) : Void;
}