package js.three;

import js.lib.*;

extern interface AnyLoader
{
	function load(url:String, ?onLoad:Dynamic->Void, ?onProgress:ProgressEvent->Void, ?onError:ErrorEvent->Void) : Dynamic;
}