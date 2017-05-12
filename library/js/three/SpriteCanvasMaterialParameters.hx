package js.three;

import js.html.*;

@:native("THREE.SpriteCanvasMaterialParameters")
typedef SpriteCanvasMaterialParameters =
{>MaterialParameters,
	@:optional var color : Float;
	@:optional var program : CanvasRenderingContext2D->Color->Void;
}