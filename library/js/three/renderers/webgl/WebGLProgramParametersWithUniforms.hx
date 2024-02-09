package js.three.renderers.webgl;

import js.lib.*;

extern interface WebGLProgramParametersWithUniforms extends WebGLProgramParameters
{
	var uniforms : Dynamic<IUniform<Dynamic>>;
}