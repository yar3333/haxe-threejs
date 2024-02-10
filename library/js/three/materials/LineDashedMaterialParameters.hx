package js.three.materials;

typedef LineDashedMaterialParameters =
{>LineBasicMaterialParameters,
	@:optional var scale : haxe.extern.EitherType<Float, {}>;
	@:optional var dashSize : haxe.extern.EitherType<Float, {}>;
	@:optional var gapSize : haxe.extern.EitherType<Float, {}>;
}