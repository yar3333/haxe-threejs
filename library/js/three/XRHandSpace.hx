package js.three;

import js.lib.*;

@:native("THREE.XRHandSpace")
extern class XRHandSpace extends Group<WebXRSpaceEventMap>
{
	var joints(default, null) : Partial<XRHandJoints>;
	var inputState(default, null) : XRHandInputState;
}