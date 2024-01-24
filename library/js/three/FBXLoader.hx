package js.three;

import js.lib.*;

@:native("THREE.FBXLoader")
extern class FBXLoader
{
	var manager : LoadingManager;

	function new(?manager:LoadingManager) : Void;
	function load(url:String, onLoad:Group->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:js.html.ErrorEvent->Void) : Void;
	function parse(FBXText:String, resourceDirectory:String) : Group;
}