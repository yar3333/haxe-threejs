package js.three.renderers.shaders;

@:jsRequire("three", "ShaderLib")
@:native("THREE.ShaderLib")
extern class ShaderLib
{
	static var basic : ShaderLibShader;
	static var lambert : ShaderLibShader;
	static var phong : ShaderLibShader;
	static var standard : ShaderLibShader;
	static var matcap : ShaderLibShader;
	static var points : ShaderLibShader;
	static var dashed : ShaderLibShader;
	static var depth : ShaderLibShader;
	static var normal : ShaderLibShader;
	static var sprite : ShaderLibShader;
	static var background : ShaderLibShader;
	static var cube : ShaderLibShader;
	static var equirect : ShaderLibShader;
	static var distanceRGBA : ShaderLibShader;
	static var shadow : ShaderLibShader;
	static var physical : ShaderLibShader;
}
