package js.three;

import js.html.*;

@:native("THREE.FBXLoader")
extern class FBXLoader
{
	var manager : LoadingManager;

	function new(?manager:LoadingManager) : Void;
	function load(url:String, onLoad:Group->Void, ?onProgress:ProgressEvent->Void, ?onError:ErrorEvent->Void) : Void;
	function parse(FBXText:String, resourceDirectory:String) : Group;
}