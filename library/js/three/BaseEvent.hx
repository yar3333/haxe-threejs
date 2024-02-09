package js.three;

import js.lib.*;

extern interface BaseEvent<TEventType:String, string:Dynamic>
{
	var type(default, null) : TEventType;
}