package js.three;

import js.html.*;

@:native("THREE.VREffect")
extern class VREffect
{
	#if !threejs_noEmbed
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/VREffect.js");
	}
	#end
	
	function new(renderer:Renderer, ?callback:String->Void) : Void;
	function render(scene:Scene, camera:Camera) : Void;
	function setSize(width:Float, height:Float) : Void;
	function setFullScreen(flag:Bool) : Void;
	function startFullscreen() : Void;
	function FovToNDCScaleOffset(fov:VRFov) : VREffectOffset;
	function FovPortToProjection(fov:VRFov, rightHanded:Bool, zNear:Float, zFar:Float) : Matrix4;
	function FovToProjection(fov:VRFov, rightHanded:Bool, zNear:Float, zFar:Float) : Matrix4;
}