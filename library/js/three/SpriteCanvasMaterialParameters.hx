package js.three;

import js.html.*;

@:native("THREE.SpriteCanvasMaterialParameters")
extern interface SpriteCanvasMaterialParameters extends MaterialParameters
{
	@:optional var color : Int;
	@:optional var program : CanvasRenderingContext2D->Color->Void;
}