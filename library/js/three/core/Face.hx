package js.three.core;

import js.three.math.Vector3;

extern interface Face
{
	var a : Float;
	var b : Float;
	var c : Float;
	var normal : Vector3;
	var materialIndex : Float;
}