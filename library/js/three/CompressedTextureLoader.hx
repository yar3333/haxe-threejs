package js.three;

import js.lib.*;

@:native("THREE.CompressedTextureLoader")
extern class CompressedTextureLoader extends Loader<CompressedTexture>
{
	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:CompressedTexture->Void, ?onProgress:ProgressEvent->Void, ?onError:unknown->Void) : CompressedTexture;
}