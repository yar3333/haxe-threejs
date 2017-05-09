package js.three;

import js.html.*;

@:native("THREE.SpriteCanvasMaterial")
extern class SpriteCanvasMaterial extends Material
{
	var color : Color;

	function new(?parameters:SpriteCanvasMaterialParameters) : Void;
	function program(context:CanvasRenderingContext2D, color:Color) : Void;
}