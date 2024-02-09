package js.three;

import js.lib.*;

extern interface Event<TEventType:String, string:Dynamic, TTarget:Dynamic, unknown:Dynamic>
{
	var type(default, null) : TEventType;
	var target(default, null) : TTarget;
}