package js.three.renderers.webgl;

import js.three.renderers.shaders.IUniform;

extern interface WebGLProgramParametersWithUniforms extends WebGLProgramParameters
{
	var uniforms : Dynamic<IUniform<Dynamic>>;
}