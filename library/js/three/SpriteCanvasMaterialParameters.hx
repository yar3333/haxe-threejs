package js.three;

import js.html.*;

typedef SpriteCanvasMaterialParameters =
{
	>MaterialParameters,

	@:optional var color : Int;
	@:optional var program : Dynamic->Color->Void;
}