package js.three;

import js.html.*;

@:native("THREE.ShaderMaterialParameters")
extern interface ShaderMaterialParameters extends MaterialParameters
{
	@:optional var defines : Dynamic;
	@:optional var uniforms : Dynamic;
	@:optional var vertexShader : String;
	@:optional var fragmentShader : String;
	@:optional var lineWidth : Float;
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
	@:optional var lights : Bool;
	@:optional var clipping : Bool;
	@:optional var skinning : Bool;
	@:optional var morphTargets : Bool;
	@:optional var morphNormals : Bool;
}