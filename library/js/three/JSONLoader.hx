package js.three;

import js.html.*;

/**
 * A loader for loading objects in JSON format.
 */
@:native("THREE.JSONLoader")
extern class JSONLoader extends Loader
{
	function new(?manager:LoadingManager) : Void;
	var manager : LoadingManager;
	var withCredentials : Bool;

	function load(url:String, ?onLoad:Geometry->Array<Material>->Void, ?onProgress:Dynamic->Void, ?onError:Dynamic->Void) : Void;

	function setCrossOrigin(crossOrigin:String) : Void;
	function setTexturePath(value:String) : Void;
	function parse(json:Dynamic, ?texturePath:String) : { geometry: Geometry, ?materials:Array<Material> };
}