package js.three;

import js.html.*;

typedef ShaderMaterialParameters =
{
	>MaterialParameters,

	@:optional var defines : Dynamic;
	@:optional var uniforms : Dynamic;
	@:optional var fragmentShader : String;
	@:optional var vertexShader : String;
	@:optional var shading : Shading;
	@:optional var blending : Blending;
	@:optional var depthTest : Bool;
	@:optional var depthWrite : Bool;
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
	@:optional var lights : Bool;
	@:optional var vertexColors : Colors;
	@:optional var skinning : Bool;
	@:optional var morphTargets : Bool;
	@:optional var morphNormals : Bool;
	@:optional var fog : Bool;
}