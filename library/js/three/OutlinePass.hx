package js.three;

import js.html.*;

@:native("THREE.OutlinePass")
extern class OutlinePass
{
	var selectedObjects : Array<Object3D>;
	var renderCamera : Camera;
	var visibleEdgeColor : Color;
	var hiddenEdgeColor : Color;
	var edgeGlow : Float;
	var usePatternTexture : Bool;
	var edgeThickness : Float;
	var edgeStrength : Float;
	var downSampleRatio : Float;
	var pulsePeriod : Float;
	var resolution : Vector2;

	function new(size:Vector2, scene:Scene, camer:Camera, ?selectedObjects:Array<Object3D>) : Void;
}