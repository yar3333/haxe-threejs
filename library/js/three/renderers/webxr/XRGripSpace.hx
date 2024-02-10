package js.three.renderers.webxr;

import js.three.objects.Group;
import js.three.math.Vector3;

@:native("THREE.XRGripSpace")
extern class XRGripSpace extends Group<WebXRSpaceEventMap>
{
	var hasLinearVelocity : Bool;
	var linearVelocity(default, null) : Vector3;
	var hasAngularVelocity : Bool;
	var angularVelocity(default, null) : Vector3;
}