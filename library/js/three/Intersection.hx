package js.three;

import js.html.*;

@:native("THREE.Intersection")
extern interface Intersection
{
	var distance : Float;
	var distanceToRay : Float;
	var point : Vector3;
	var index : Int;
	var face : Face3;
	var faceIndex : Float;
	var object : Object3D;
}