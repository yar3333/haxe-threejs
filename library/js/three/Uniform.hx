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
	/**
	 * @deprecated Use {@link Object3D#onBeforeRender object.onBeforeRender()} instead.
	 */
	var dynamic_(get, null) : Bool;
	inline function get_dynamic_() : Bool return (cast this)[cast 'dynamic'];
	var onUpdateCallback : haxe.Constraints.Function;

	@:overload(function(type:String, value:Dynamic):Void{})
	function new(value:Dynamic) : Void;
	/**
	 * @deprecated Use {@link Object3D#onBeforeRender object.onBeforeRender()} instead.
	 */
	function onUpdate(callback:haxe.Constraints.Function) : Uniform;
}