package js.three;

import js.lib.*;

typedef SpriteCanvasMaterialParameters =
{>MaterialParameters,
	@:optional var color : Float;
	@:optional var program : js.html.CanvasRenderingContext2D->Color->Void;
}