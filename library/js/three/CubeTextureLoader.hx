package js.three;

import js.html.*;

@:native("THREE.CubeTextureLoader")
extern class CubeTextureLoader
{
	function new(?manager:LoadingManager) : Void;

	var manager : LoadingManager;
	function load(urls:Array<String>, ?onLoad:CubeTexture->Void, ?onProgress:Dynamic->Void, ?onError:Dynamic->Void) : Void;
	function setCrossOrigin(crossOrigin:String) : Void;
}