package js.three;

import js.html.*;

@:native("THREE.MTLLoader")
extern class MTLLoader extends EventDispatcher
{
	var manager : LoadingManager;
	var materialOptions : {};
	var materials : Array<Material>;
	var path : String;
	var texturePath : String;
	var crossOrigin : Bool;

	@:overload(function(?manager:LoadingManager):Void{})
	function new() : Void;
	function load(url:String, onLoad:MaterialCreator->Void, ?onProgress:ProgressEvent->Void, ?onError:ErrorEvent->Void) : Void;
	function parse(text:String) : MaterialCreator;
	function setPath(path:String) : Void;
	function setTexturePath(path:String) : Void;
	function setBaseUrl(path:String) : Void;
	function setCrossOrigin(value:Bool) : Void;
	function setMaterialOptions(value:Dynamic) : Void;
}