package js.three.renderers.shaders;

extern interface ShaderLibShader
{
	var uniforms : Dynamic<IUniform>;
	var vertexShader : String;
	var fragmentShader : String;
}