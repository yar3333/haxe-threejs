package js.three.loaders;

import js.lib.*;

@:native("THREE.CubeTextureLoader")
extern class CubeTextureLoader extends Loader<CubeTexture, Array<String>>
{
	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:CubeTexture->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:Dynamic->Void) : CubeTexture;
}