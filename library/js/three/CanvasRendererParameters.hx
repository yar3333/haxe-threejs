package js.three;

import js.lib.*;

typedef CanvasRendererParameters =
{
	@:optional var canvas : js.html.CanvasElement;
	@:optional var devicePixelRatio : Float;
	@:optional var alpha : Bool;
}