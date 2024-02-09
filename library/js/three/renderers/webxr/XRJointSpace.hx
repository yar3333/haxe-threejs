package js.three;

import js.lib.*;

@:native("THREE.XRJointSpace")
extern class XRJointSpace extends Group
{
	var jointRadius(default, null) : haxe.extern.EitherType<Float, {}>;
}