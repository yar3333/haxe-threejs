package js.three;

import js.lib.*;

extern interface AnyLoader
{
	function load(url:String, ?onLoad:Dynamic->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:js.html.ErrorEvent->Void) : Dynamic;
}