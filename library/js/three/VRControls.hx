package js.three;

import js.html.*;

@:native("THREE.VRControls")
extern class VRControls
{
	#if !threejs_noEmbed
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/VRControls.js");
	}
	#end
	
	function new(camera:Camera, ?callback:String->Void) : Void;

	/**
	 * Update VR Instance Tracking
	 */
	function update() : Void;
	function zeroSensor() : Void;

	var scale : Float;
}