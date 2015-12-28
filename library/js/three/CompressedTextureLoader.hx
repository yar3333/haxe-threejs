package js.three;

import js.html.*;

@:native("THREE.CompressedTextureLoader")
extern class CompressedTextureLoader
{
	function new(?manager:LoadingManager) : Void;

	var manager : LoadingManager;
	function load(url:String, onLoad:CompressedTexture->Void, ?onProgress:Dynamic->Void, ?onError:Dynamic->Void) : Void;
	function setCrossOrigin(crossOrigin:String) : Void;
}