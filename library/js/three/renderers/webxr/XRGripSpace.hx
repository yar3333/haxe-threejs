package js.three.renderers.webxr;

import js.lib.*;

@:native("THREE.XRGripSpace")
extern class XRGripSpace extends Group<WebXRSpaceEventMap>
{
	var hasLinearVelocity : Bool;
	var linearVelocity(default, null) : Vector3;
	var hasAngularVelocity : Bool;
	var angularVelocity(default, null) : Vector3;
}