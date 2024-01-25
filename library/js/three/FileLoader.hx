package js.three;

import js.lib.*;

@:native("THREE.FileLoader")
extern class FileLoader
{
	var manager : LoadingManager;
	var mimeType : js.html.MimeType;
	var path : String;
	var responseType : String;
	var withCredentials : String;

	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:String->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:js.html.ErrorEvent->Void) : Dynamic;
	function setMimeType(mimeType:js.html.MimeType) : FileLoader;
	function setPath(path:String) : FileLoader;
	function setResponseType(responseType:String) : FileLoader;
	function setWithCredentials(value:String) : FileLoader;
}