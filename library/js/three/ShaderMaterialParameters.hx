package js.three;

import js.lib.*;

extern interface ShaderMaterialParameters extends MaterialParameters
{
	@:optional var uniforms : haxe.extern.EitherType<Dynamic<IUniform>, {}>;
	@:optional var uniformsGroups : haxe.extern.EitherType<Array<UniformsGroup>, {}>;
	@:optional var vertexShader : haxe.extern.EitherType<String, {}>;
	@:optional var fragmentShader : haxe.extern.EitherType<String, {}>;
	@:optional var linewidth : haxe.extern.EitherType<Float, {}>;
	@:optional var wireframe : haxe.extern.EitherType<Bool, {}>;
	@:optional var wireframeLinewidth : haxe.extern.EitherType<Float, {}>;
	@:optional var lights : haxe.extern.EitherType<Bool, {}>;
	@:optional var clipping : haxe.extern.EitherType<Bool, {}>;
	@:optional var fog : haxe.extern.EitherType<Bool, {}>;
	@:optional var extensions : haxe.extern.EitherType<, haxe.extern.EitherType<{ @:optional var derivatives : haxe.extern.EitherType<Bool, {}>; @:optional var fragDepth : haxe.extern.EitherType<Bool, {}>; @:optional var drawBuffers : haxe.extern.EitherType<Bool, {}>; @:optional var shaderTextureLOD : haxe.extern.EitherType<Bool, {}>; }, {}>>;
	@:optional var glslVersion : haxe.extern.EitherType<GLSLVersion, {}>;
}