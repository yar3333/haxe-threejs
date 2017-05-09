package js.three;

import js.html.*;

@:native("THREE.TextGeometryParameters")
extern interface TextGeometryParameters
{
	@:optional var font : Font;
	@:optional var size : Float;
	@:optional var height : Float;
	@:optional var curveSegments : Int;
	@:optional var bevelEnabled : Bool;
	@:optional var bevelThickness : Float;
	@:optional var bevelSize : Float;
}