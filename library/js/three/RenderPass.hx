package js.three;

import js.html.*;

@:native("THREE.RenderPass")
extern class RenderPass
{
	#if !threejs_noEmbed
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/RenderPass.js");
	}
	#end
	
	@:overload(function(scene:Scene, camera:Camera, ?overrideMaterial:Material, ?clearColor:String, ?clearAlpha:Float):Void{})
	@:overload(function(scene:Scene, camera:Camera, ?overrideMaterial:Material, ?clearColor:Float, ?clearAlpha:Float):Void{})
	function new(scene:Scene, camera:Camera, ?overrideMaterial:Material, ?clearColor:Color, ?clearAlpha:Float) : Void;

	var scene : Scene;
	var camera : Camera;
	var overrideMaterial : Material;
	var clearColor : Dynamic;// Color or string or number
	var clearAlpha : Float;
	var oldClearColor : Color;
	var oldClearAlpha : Float;
	var enabled : Bool;
	var clear : Bool;
	var needsSwap : Bool;

	function render(renderer:WebGLRenderer, writeBuffer:WebGLRenderTarget, readBuffer:WebGLRenderTarget, delta:Float) : Void;
}