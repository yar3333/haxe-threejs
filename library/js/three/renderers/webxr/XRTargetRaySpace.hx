package js.three.renderers.webxr;

import js.three.objects.Group;
import js.three.math.Vector3;

@:jsRequire("three")
@:native("THREE.XRTargetRaySpace")
extern class XRTargetRaySpace extends Group<WebXRSpaceEventMap>
{
	var hasLinearVelocity : Bool;
	var linearVelocity(default, null) : Vector3;
	var hasAngularVelocity : Bool;
	var angularVelocity(default, null) : Vector3;
}