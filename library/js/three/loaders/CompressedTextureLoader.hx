package js.three.loaders;

import js.lib.*;

@:native("THREE.CompressedTextureLoader")
extern class CompressedTextureLoader extends Loader<CompressedTexture>
{
	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:CompressedTexture->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:Dynamic->Void) : CompressedTexture;
}