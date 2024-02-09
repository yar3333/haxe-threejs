package js.three;

import js.lib.*;

extern interface BaseEvent<TEventType:String = String>
{
	var type(default, null) : TEventType;
}