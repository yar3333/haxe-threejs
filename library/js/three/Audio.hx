package js.three;

import js.html.*;

@:native("THREE.Audio")
extern class Audio extends Object3D
{
	function new(listener:AudioListener) : Void;
	//var type : String;
	var context : AudioContext;
	var source : AudioBufferSourceNode;
	var gain : GainNode;
	var panner : PannerNode;
	var autoplay : Bool;
	var startTime : Float;
	var playbackRate : Float;
	var isPlaying : Bool;

	function load(file:String) : Audio;
	function play() : Void;
	function pause() : Void;
	function stop() : Void;
	function connect() : Void;
	function disconnect() : Void;
	function setFilter(value:Dynamic) : Void;
	function getFilter() : Dynamic;
	function setPlaybackRate(value:Float) : Void;
	function getPlaybackRate() : Float;

	function setLoop(value:Bool) : Void;
	function getLoop() : Bool;
	function setRefDistance(value:Float) : Void;
	function getRefDistance() : Float;
	function setRolloffFactor(value:Float) : Void;
	function getRolloffFactor() : Float;
	function setVolume(value:Float) : Void;
	function getVolume() : Float;
	@:overload(function(?force:Bool):Void{})
	override function updateMatrixWorld(force:Bool) : Void;
}