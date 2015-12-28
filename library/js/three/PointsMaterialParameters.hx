package js.three;

import js.html.*;

typedef PointsMaterialParameters =
{
	>MaterialParameters,

	@:optional var color : Int;
	@:optional var opacity : Float;
	@:optional var map : Texture;
	@:optional var size : Float;
	@:optional var sizeAttenuation : Bool;
	?blending:Blending,
	@:optional var depthTest : Bool;
	@:optional var depthWrite : Bool;
	@:optional var vertexColors : Colors;
	@:optional var fog : Bool;
}