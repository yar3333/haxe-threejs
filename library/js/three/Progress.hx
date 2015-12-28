package js.three;

import js.html.*;

@:native("THREE.Progress")
extern interface Progress
{
	var total : Int;
	var loaded : Int;
}