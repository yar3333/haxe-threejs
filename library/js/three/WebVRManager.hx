package js.three;

import js.html.*;

extern interface WebVRManager
{
	var enabled : Bool;

	function getDevice() : VRDisplay;
	function setDevice(device:VRDisplay) : Void;
	function setPoseTarget(object:Object3D) : Void;
	function getCamera(camera:PerspectiveCamera) : haxe.extern.EitherType<PerspectiveCamera, ArrayCamera>;
	function submitFrame() : Void;
	function dispose() : Void;
}