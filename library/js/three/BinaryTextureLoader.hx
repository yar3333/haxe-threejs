package js.three;

import js.html.*;

@:native("THREE.BinaryTextureLoader")
extern class BinaryTextureLoader
{
	function new(?manager:LoadingManager) : Void;

	var manager : LoadingManager;
	function load(url:String, onLoad:DataTexture->Void, ?onProgress:Dynamic->Void, ?onError:Dynamic->Void) : Void;
	function setCrossOrigin(crossOrigin:String) : Void;
}