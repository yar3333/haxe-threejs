package js.three;

@:native("THREE.Clock")
extern class Clock
{
	var autoStart : Bool;
	var startTime : Float;
	var oldTime : Float;
	var elapsedTime : Float;
	var running : Bool;
	function new(autoStart=true) : Void;
	function start() : Void;
	function stop() : Void;
	function getElapsedTime() : Float;
	function getDelta() : Float;
}
