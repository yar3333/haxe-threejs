package js.three;

import js.lib.*;

extern interface MeshDistanceMaterialParameters extends MaterialParameters
{
	@:optional var map : haxe.extern.EitherType<Texture, {}>;
	@:optional var alphaMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var displacementMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var displacementScale : haxe.extern.EitherType<Float, {}>;
	@:optional var displacementBias : haxe.extern.EitherType<Float, {}>;
	@:optional var farDistance : haxe.extern.EitherType<Float, {}>;
	@:optional var nearDistance : haxe.extern.EitherType<Float, {}>;
	@:optional var referencePosition : haxe.extern.EitherType<Vector3, {}>;
}