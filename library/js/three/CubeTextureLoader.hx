package js.three;

import js.lib.*;

@:native("THREE.CubeTextureLoader")
extern class CubeTextureLoader extends Loader<CubeTexture, readonly string[]>
{
	function new(?manager:LoadingManager) : Void;
	function load(url:readonly, ?onLoad:CubeTexture->Void, ?onProgress:ProgressEvent->Void, ?onError:unknown->Void) : CubeTexture;
}