package js.three;

import js.lib.*;

extern interface WebGLProgramParametersWithUniforms extends WebGLProgramParameters
{
	var uniforms : Dynamic<IUniform>;
}