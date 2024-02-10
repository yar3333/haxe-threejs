package js.three.renderers.shaders;

@:jsRequire("three", "UniformsUtils")
@:native("THREE.UniformsUtils")
extern class UniformsUtils
{
    static function clone<T:Dynamic<IUniform>>(uniformsSrc:T) : T;
	static function merge(uniforms:Array<Dynamic<IUniform>>) : Dynamic<IUniform>;
}