package js.three;

import js.html.*;

@:native("THREE.AnimationUtils")
extern class AnimationUtils
{
	static function getEqualsFunc(exemplarValue:Dynamic) : Bool;
	clone<T>(exemplarValue:T) : T;
	static function lerp(a:Dynamic, b:Dynamic, alpha:Float, interTrack:Bool) : Dynamic;
	static function lerp_object(a:Dynamic, b:Dynamic, alpha:Float) : Dynamic;
	static function slerp_object(a:Dynamic, b:Dynamic, alpha:Float) : Dynamic;
	static function lerp_number(a:Dynamic, b:Dynamic, alpha:Float) : Dynamic;
	static function lerp_boolean(a:Dynamic, b:Dynamic, alpha:Float) : Dynamic;
	static function lerp_boolean_immediate(a:Dynamic, b:Dynamic, alpha:Float) : Dynamic;
	static function lerp_string(a:Dynamic, b:Dynamic, alpha:Float) : Dynamic;
	static function lerp_string_immediate(a:Dynamic, b:Dynamic, alpha:Float) : Dynamic;
	static function getLerpFunc(exemplarValue:Dynamic, interTrack:Bool) : Dynamic;
}