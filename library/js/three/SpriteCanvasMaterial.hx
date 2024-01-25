package js.three;

import js.lib.*;

@:native("THREE.SpriteCanvasMaterial")
extern class SpriteCanvasMaterial extends Material
{
	var color : Color;

	@:overload(function(?parameters:SpriteCanvasMaterialParameters):Void{})
	function new() : Void;
	function program(context:js.html.CanvasRenderingContext2D, color:Color) : Void;
}