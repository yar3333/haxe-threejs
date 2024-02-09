package js.three;

import js.lib.*;

@:native("THREE.ShaderMaterial")
extern class ShaderMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link ShaderMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isShaderMaterial(default, null) : Bool;
	/**
	 * @default 'ShaderMaterial'
	 */
	var type : String;
	/**
	 * @default {}
	 */
	var defines : Dynamic<Dynamic>;
	/**
	 * @default {}
	 */
	var uniforms : Dynamic<IUniform>;
	var uniformsGroups : Array<UniformsGroup>;
	var vertexShader : String;
	var fragmentShader : String;
	/**
	 * @default 1
	 */
	var linewidth : Float;
	/**
	 * @default false
	 */
	var wireframe : Bool;
	/**
	 * @default 1
	 */
	var wireframeLinewidth : Float;
	/**
	 * @default false
	 */
	var fog : Bool;
	/**
	 * @default false
	 */
	var lights : Bool;
	/**
	 * @default false
	 */
	var clipping : Bool;
	/**
	 * @deprecated Use {@link ShaderMaterial#extensions.derivatives extensions.derivatives} instead.
	 */
	var derivatives : Dynamic;
	/**
	 * @default {
	 *   derivatives: false,
	 *   fragDepth: false,
	 *   drawBuffers: false,
	 *   shaderTextureLOD: false,
	 *   clipCullDistance: false,
	 *   multiDraw: false
	 * }
	 */
	var extensions : { var derivatives : Bool; var fragDepth : Bool; var drawBuffers : Bool; var shaderTextureLOD : Bool; var clipCullDistance : Bool; var multiDraw : Bool; };
	/**
	 * @default { 'color': [ 1, 1, 1 ], 'uv': [ 0, 0 ], 'uv1': [ 0, 0 ] }
	 */
	var defaultAttributeValues : Dynamic;
	/**
	 * @default undefined
	 */
	var index0AttributeName : haxe.extern.EitherType<String, {}>;
	/**
	 * @default false
	 */
	var uniformsNeedUpdate : Bool;
	/**
	 * @default null
	 */
	var glslVersion : GLSLVersion;

	function new(?parameters:ShaderMaterialParameters) : Void;
	function setValues(parameters:ShaderMaterialParameters) : Void;
	function toJSON(meta:Dynamic) : Dynamic;
}