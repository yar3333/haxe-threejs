package js.three;

import js.lib.*;

@:native("THREE.DataTextureLoader")
extern class DataTextureLoader extends Loader<DataTexture>
{
	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:DataTexture->object->Void, ?onProgress:ProgressEvent->Void, ?onError:unknown->Void) : DataTexture;
}