package js.three;

import js.html.*;

@:native("THREE.FontLoader")
extern class FontLoader
{
	var manager : LoadingManager;

	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:Font->Void, ?onProgress:ProgressEvent->Void, ?onError:ErrorEvent->Void) : Void;
	function parse(json:String) : Font;
}