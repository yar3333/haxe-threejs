package js.three;

import js.lib.*;

@:native("THREE.DataTextureLoader")
extern class DataTextureLoader
{
	var manager : LoadingManager;

	function new(?manager:LoadingManager) : Void;
	function load(url:String, onLoad:DataTexture->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:js.html.ErrorEvent->Void) : Void;
}