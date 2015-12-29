package js.three;

import js.html.*;

@:native("THREE.VRControls")
extern class VRControls
{
	function new(camera:Camera, ?callback:String->Void) : Void;

	/**
	 * Update VR Instance Tracking
	 */
	function update() : Void;
	function zeroSensor() : Void;

	var scale : Float;
}