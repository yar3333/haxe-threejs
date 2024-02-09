package js.three.renderers.webxr;

import js.lib.*;

@:native("THREE.XRTargetRaySpace")
extern class XRTargetRaySpace extends Group<WebXRSpaceEventMap>
{
	var hasLinearVelocity : Bool;
	var linearVelocity(default, null) : Vector3;
	var hasAngularVelocity : Bool;
	var angularVelocity(default, null) : Vector3;
}