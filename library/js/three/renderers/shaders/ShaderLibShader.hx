package js.three.renderers.shaders;

import js.lib.*;

extern interface ShaderLibShader
{
	var uniforms : Dynamic<IUniform>;
	var vertexShader : String;
	var fragmentShader : String;
}