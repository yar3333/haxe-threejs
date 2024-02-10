package js.three.loaders;
import js.lib.ArrayBuffer;

@:jsRequire("three", "FileLoader")
@:native("THREE.FileLoader")
extern class FileLoader extends Loader<haxe.extern.EitherType<String, ArrayBuffer>>
{
	var mimeType : haxe.extern.EitherType<{}, js.html.MimeType>;
	var responseType : haxe.extern.EitherType<{}, String>;

	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:haxe.extern.EitherType<String, ArrayBuffer>->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:Dynamic->Void) : Void;
	function setMimeType(mimeType:js.html.MimeType) : FileLoader;
	function setResponseType(responseType:String) : FileLoader;
}