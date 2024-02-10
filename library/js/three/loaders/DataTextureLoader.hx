package js.three.loaders;

import js.three.textures.DataTexture;

@:native("THREE.DataTextureLoader")
extern class DataTextureLoader extends Loader<DataTexture>
{
	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:DataTexture->Dynamic->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:Dynamic->Void) : DataTexture;
}