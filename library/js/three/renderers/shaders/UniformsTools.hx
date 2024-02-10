package js.three.renderers.shaders;

import js.three.core.UniformsGroup;

@:jsRequire("three")
@:native("THREE")
extern class UniformsTools
{
    static function cloneUniforms<T:Dynamic<IUniform>>(uniformsSrc:T) : T;
	static function mergeUniforms(uniforms:Array<Dynamic<IUniform>>) : Dynamic<IUniform>;
	static function cloneUniformsGroups(src:Array<UniformsGroup>) : Array<UniformsGroup>;
}