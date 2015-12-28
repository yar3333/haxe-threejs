package js.three;

import js.html.*;

@:native("THREE.WebGLShadowMapInstance")
extern class WebGLShadowMapInstance
{
	function new(_renderer:Renderer, _lights:Array<Dynamic>, _objects:Array<Dynamic>) : Void;

	var enabled : Bool;
	var autoUpdate : Bool;
	var needsUpdate : Bool;
	var type : ShadowMapType;
	var cullFace : CullFace;

	function render(scene:Scene) : Void;
}