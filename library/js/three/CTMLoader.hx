package js.three;

import js.html.*;

@:native("THREE.CTMLoader")
extern class CTMLoader extends Loader
{
	function new() : Void;
	/**
	 * load multiple CTM parts defined in JSON.
	 */
	function loadParts(url:String, callback:Void->haxe.extern.EitherType<Dynamic, Void>, parameters:Dynamic) : Dynamic;
	/**
	 * Load CTMLoader compressed models
	 */
	function load(url:String, callback:Dynamic->haxe.extern.EitherType<Dynamic, Void>, parameters:Dynamic) : Dynamic;
	/**
	 * create buffergeometry by ctm file.
	 */
	function createModel(file:String, callback:Void->haxe.extern.EitherType<Dynamic, Void>) : Dynamic;
}