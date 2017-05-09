package js.three;

import js.html.*;

@:native("THREE.Event")
extern interface Event
{
	var type : String;
	var target : Dynamic;
}