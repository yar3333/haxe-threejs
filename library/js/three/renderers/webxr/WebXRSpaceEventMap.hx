package js.three;

import js.lib.*;

typedef XRInputSource = Dynamic;
typedef XRHandedness = Dynamic;

extern interface WebXRSpaceEventMap extends Object3DEventMap
{
	var select : { var data : XRInputSource; };
	var selectstart : { var data : XRInputSource; };
	var selectend : { var data : XRInputSource; };
	var squeeze : { var data : XRInputSource; };
	var squeezestart : { var data : XRInputSource; };
	var squeezeend : { var data : XRInputSource; };
	var connected : { var data : XRInputSource; };
	var disconnected : { var data : XRInputSource; };
	var pinchend : { var handedness : XRHandedness; var target : WebXRController; };
	var pinchstart : { var handedness : XRHandedness; var target : WebXRController; };
	var move : {};
}