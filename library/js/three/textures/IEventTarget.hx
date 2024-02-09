package js.three.textures;

import js.html.*;

typedef IEventTarget =
{
	/**
		Register an event handler of a specific event type on the `EventTarget`.
		@throws DOMError
	**/
	@:overload( function( type : String, listener : EventListener, ?options : haxe.extern.EitherType<AddEventListenerOptions,Bool>, ?wantsUntrusted : Bool ) : Void {} )
    function addEventListener( type: String, listener: haxe.Constraints.Function, ?options : haxe.extern.EitherType<AddEventListenerOptions,Bool>, ?wantsUntrusted : Bool ) : Void;
    
    /**
        Removes an event listener from the `EventTarget`.
        @throws DOMError
    **/
    @:overload( function( type : String, listener : EventListener, ?options : haxe.extern.EitherType<EventListenerOptions,Bool>) : Void {} )
    function removeEventListener( type : String, listener : haxe.Constraints.Function, ?options : haxe.extern.EitherType<EventListenerOptions,Bool> ) : Void;
    
    /**
        Dispatch an event to this `EventTarget`.
        @throws DOMError
    **/
    function dispatchEvent(event : js.html.Event) : Bool;
};