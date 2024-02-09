package js.three;

import js.lib.*;

@:native("THREE.WebXRController")
extern class WebXRController
{
	function new() : Void;
	function getHandSpace() : XRHandSpace;
	function getTargetRaySpace() : XRTargetRaySpace;
	function getGripSpace() : XRGripSpace;
	function dispatchEvent(event:{ var type : XRControllerEventType; @:optional var data : XRInputSource; }) : WebXRController;
	function connect(inputSource:XRInputSource) : WebXRController;
	function disconnect(inputSource:XRInputSource) : WebXRController;
	function update(inputSource:XRInputSource, frame:XRFrame, referenceSpace:XRReferenceSpace) : WebXRController;
}