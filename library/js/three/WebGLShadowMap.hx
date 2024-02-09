package js.three;

import js.lib.*;

@:native("THREE.WebGLShadowMap")
extern class WebGLShadowMap
{
	/**
	 * @default false
	 */
	var enabled : Bool;
	/**
	 * @default true
	 */
	var autoUpdate : Bool;
	/**
	 * @default false
	 */
	var needsUpdate : Bool;
	/**
	 * @default THREE.PCFShadowMap
	 */
	var type : ShadowMapType;
	/**
	 * @deprecated Use {@link Material#shadowSide} instead.
	 */
	var cullFace : Dynamic;

	function new(_renderer:WebGLRenderer, _objects:WebGLObjects, _capabilities:WebGLCapabilities) : Void;
	function render(shadowsArray:Array<Light>, scene:Scene, camera:Camera) : Void;
}