package js.three;

import js.html.*;

@:native("THREE.Uniform")
extern class Uniform
{
	/**
	 * @deprecated
	 */
	var type : String;
	var value : Dynamic;
	var dynamic_(get, null) : Bool;
	inline function get_dynamic_() : Bool return (cast this)['dynamic'];
	var onUpdateCallback : Function;

	function new(value:Dynamic) : Void;
	function new(type:String, value:Dynamic) : Void;
	function onUpdate(callback:Function) : Uniform;
}