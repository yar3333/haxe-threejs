package js.three;

import js.lib.*;

@:native("THREE.UniformsUtils")
extern class UniformsUtils
{
	static function merge(uniforms:Array<Dynamic>) : Dynamic;
	static function clone(uniforms_src:Dynamic) : Dynamic;
}