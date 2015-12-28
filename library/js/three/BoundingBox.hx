package js.three;

import js.html.*;

@:native("THREE.BoundingBox")
extern interface BoundingBox
{
	var minX : Float;
	var minY : Float;
	@:optional var minZ : Float;
	var maxX : Float;
	var maxY : Float;
	@:optional var maxZ : Float;
}