package js.three.core;

import js.three.Constants.Usage;

/**
 * @see Example: {@link https://threejs.org/examples/#webgl2_ubo | WebGL2 / UBO}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/UniformsGroup.js | Source}
 */
@:jsRequire("three", "UniformsGroup")
@:native("THREE.UniformsGroup")
extern class UniformsGroup extends EventDispatcher<{ dispose: {} }>
{
	var isUniformsGroup(default, null) : Bool;
	var id : Int;
	var usage : Usage;
	var uniforms : Array<haxe.extern.EitherType<Uniform, Array<Uniform>>>;

	/**
	 * @see Example: {@link https://threejs.org/examples/#webgl2_ubo | WebGL2 / UBO}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/UniformsGroup.js | Source}
	 */
	function new() : Void;
	function add(uniform:haxe.extern.EitherType<Uniform, Array<Uniform>>) : UniformsGroup;
	function remove(uniform:haxe.extern.EitherType<Uniform, Array<Uniform>>) : UniformsGroup;
	function setName(name:String) : UniformsGroup;
	function setUsage(value:Usage) : UniformsGroup;
	function dispose() : UniformsGroup;
	function copy(source:UniformsGroup) : UniformsGroup;
	function clone() : UniformsGroup;
}