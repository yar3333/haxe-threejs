package js.three;

import js.lib.*;

extern interface Shader
{
	var uniforms : Dynamic<IUniform>;
	var vertexShader : String;
	var fragmentShader : String;
}