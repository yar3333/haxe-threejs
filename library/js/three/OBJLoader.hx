package js.three;

import js.html.*;

@:native("THREE.OBJLoader")
extern class OBJLoader
{
	var manager : LoadingManager;
	var regexp : Dynamic;
	var materials : Array<Material>;
	var path : String;

	function new(?manager:LoadingManager) : Void;
	function load(url:String, onLoad:Group->Void, ?onProgress:ProgressEvent->Void, ?onError:ErrorEvent->Void) : Void;
	function parse(data:String) : Group;
	function setPath(value:String) : Void;
	function setMaterials(materials:MaterialCreator) : Void;
	function _createParserState() : Dynamic;
}