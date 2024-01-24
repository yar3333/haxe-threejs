package js.three;

import js.lib.*;

@:native("THREE.ColladaLoader")
extern class ColladaLoader
{
	function new() : Void;
	function load(url:String, onLoad:ColladaModel->Void, ?onProgress:ProgressEvent->Void, ?onError:ErrorEvent->Void) : Void;
	function setCrossOrigin(value:Dynamic) : Void;
	function parse(text:String) : ColladaModel;
}