package js.three;

import js.html.*;

@:native("THREE.VRFov")
extern interface VRFov
{
	var leftTan : Float;
	var rightTan : Float;
	var upTan : Float;
	var downTan : Float;
}