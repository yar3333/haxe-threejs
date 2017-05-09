package js.three;

import js.html.*;

@:native("THREE.Audio")
extern class Audio extends Object3D
{
	var type : String;
	var context : AudioContext;
	var source : AudioBufferSourceNode;
	var gain : GainNode;
	var autoplay : Bool;
	var startTime : Float;
	var playbackRate : Float;
	var hasPlaybackControl : Bool;
	var isPlaying : Bool;
	var sourceType : String;
	var filters : Array<Dynamic>;

	function new(listener:AudioListener) : Void;
	function getOutput() : GainNode;
	function setNodeSource(audioNode:AudioBufferSourceNode) : Audio;
	function setBuffer(audioBuffer:AudioBuffer) : Audio;
	function play() : Audio;
	function pause() : Audio;
	function stop() : Audio;
	function connect() : Audio;
	function disconnect() : Audio;
	function getFilters() : Array<Dynamic>;
	function setFilter(value:Array<Dynamic>) : Audio;
	function getFilter() : Dynamic;
	function setFilter(filter:Dynamic) : Audio;
	function setPlaybackRate(value:Float) : Audio;
	function getPlaybackRate() : Float;
	function onEnded() : Void;
	function getLoop() : Bool;
	function setLoop(value:Bool) : Void;
	function getVolume() : Float;
	function setVolume(value:Float) : Audio;
	/**
	 * @deprecated Use AudioLoader instead.
	 */
	function load(file:String) : Audio;
}