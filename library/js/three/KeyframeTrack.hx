package js.three;

import js.html.*;

@:native("THREE.KeyframeTrack")
extern class KeyframeTrack
{
	function new(name:String, keys:Array<Dynamic>) : Void;

	var name : String;
	var keys : Array<Dynamic>;
	var lastIndex : Int;

	function getAt(time:Float) : Dynamic;
	function shift(timeOffset:Float) : KeyframeTrack;
	function scale(timeScale:Float) : KeyframeTrack;
	function trim(startTime:Float, endTime:Float) : KeyframeTrack;
	function validate() : KeyframeTrack;
	function optimize() : KeyframeTrack;

	function keyComparator(key0:KeyframeTrack, key1:KeyframeTrack) : Float;
	function parse(json:Dynamic) : KeyframeTrack;
	function GetTrackTypeForTypeName(typeName:String) : Dynamic;
}