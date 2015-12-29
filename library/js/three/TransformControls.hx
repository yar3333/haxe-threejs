package js.three;

import js.html.*;

@:native("THREE.TransformControls")
extern class TransformControls extends Object3D
{
	#if !threejs_noEmbed
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/TransformControls.js");
	}
	#end
	
	function new(object:Camera, ?domElement:HtmlElement) : Void;

	var object : Object3D;

	function update() : Void;
	function detach() : Void;
	function attach(object:Object3D) : Void;
	function setMode(mode:String) : Void;
	function setSnap(snap:Dynamic) : Void;
	function setSize(size:Float) : Void;
	function setSpace(space:String) : Void;
}