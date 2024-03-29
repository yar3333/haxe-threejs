package js.three.renderers.webxr;

import js.three.objects.Group;

@:jsRequire("three", "XRJointSpace")
@:native("THREE.XRJointSpace")
extern class XRJointSpace extends Group
{
	var jointRadius(default, null) : haxe.extern.EitherType<Float, {}>;
}