package js.three;

import js.lib.*;

extern interface Event<TEventType:String = String, TTarget = Dynamic>
{
	var type(default, null) : TEventType;
	var target(default, null) : TTarget;
}