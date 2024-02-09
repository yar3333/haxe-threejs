package js.three;

import js.lib.*;

@:native("THREE.FileLoader")
extern class FileLoader extends Loader<string | ArrayBuffer>
{
	var mimeType : haxe.extern.EitherType<{}, MimeType>;
	var responseType : haxe.extern.EitherType<{}, String>;

	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:haxe.extern.EitherType<String, ArrayBuffer>->Void, ?onProgress:ProgressEvent->Void, ?onError:unknown->Void) : Void;
	function setMimeType(mimeType:MimeType) : FileLoader;
	function setResponseType(responseType:String) : FileLoader;
}