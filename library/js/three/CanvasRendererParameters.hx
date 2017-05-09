package js.three;

import js.html.*;

@:native("THREE.CanvasRendererParameters")
extern interface CanvasRendererParameters
{
	@:optional var canvas : HTMLCanvasElement;
	@:optional var devicePixelRatio : Float;
	@:optional var alpha : Bool;
}