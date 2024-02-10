package js.three.core;

extern interface BaseEvent<TEventType:String = String>
{
	var type(default, null) : TEventType;
}