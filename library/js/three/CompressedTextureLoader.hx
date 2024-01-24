package js.three;

import js.lib.*;

@:native("THREE.CompressedTextureLoader")
extern class CompressedTextureLoader
{
	var manager : LoadingManager;
	var path : String;

	function new(?manager:LoadingManager) : Void;
	function load(url:String, onLoad:CompressedTexture->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:js.html.ErrorEvent->Void) : Void;
	function setPath(path:String) : CompressedTextureLoader;
}