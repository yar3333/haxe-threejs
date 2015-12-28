package js.three;

import js.html.*;

// Wrapping modes
@:native("THREE")
extern enum Wrapping
{
	RepeatWrapping;
	ClampToEdgeWrapping;
	MirroredRepeatWrapping;
}