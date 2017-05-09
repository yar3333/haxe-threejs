package js.three;

import js.html.*;

@:native("THREE.EditorControls")
extern class EditorControls extends EventDispatcher
{
	var enabled : Bool;
	var center : Vector3;

	function new(object:Camera, ?domElement:HTMLElement) : Void;
	function focus(target:Object3D, frame:Bool) : Void;
	function pan(delta:Vector3) : Void;
	function zoom(delta:Vector3) : Void;
	function rotate(delta:Vector3) : Void;
	function dispose() : Void;
}