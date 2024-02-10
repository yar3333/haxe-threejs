package js.three.core;

extern interface Event<TEventType:String = String, TTarget = Dynamic>
{
	var type(default, null) : TEventType;
	var target(default, null) : TTarget;
}