package js.three.materials;

import js.three.core.UniformsGroup;
import js.three.renderers.shaders.IUniform;
import js.three.Constants.GLSLVersion;

typedef ShaderMaterialParameters =
{>MaterialParameters,
	@:optional var uniforms : Dynamic<IUniform>;
	@:optional var uniformsGroups : Array<UniformsGroup>;
	@:optional var vertexShader : String;
	@:optional var fragmentShader : String;
	@:optional var linewidth : Float;
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
	@:optional var lights : Bool;
	@:optional var clipping : Bool;
	@:optional var fog : Bool;
	@:optional var extensions : { 
        @:optional var derivatives : Bool;
        @:optional var fragDepth : Bool;
        @:optional var drawBuffers : Bool;
        @:optional var shaderTextureLOD : Bool;
    };
	@:optional var glslVersion : GLSLVersion;
}