package js.three;

import js.lib.*;

extern interface LineDashedMaterialParameters extends LineBasicMaterialParameters
{
	@:optional var scale : haxe.extern.EitherType<Float, {}>;
	@:optional var dashSize : haxe.extern.EitherType<Float, {}>;
	@:optional var gapSize : haxe.extern.EitherType<Float, {}>;
}