package js.three;

import js.html.*;

@:native("THREE.SpriteCanvasMaterialParameters")
extern interface SpriteCanvasMaterialParameters extends MaterialParameters
{
	@:optional var color : Float;
	@:optional var program : CanvasRenderingContext2D->Color->Void;
}