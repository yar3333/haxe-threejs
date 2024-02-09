package js.three;

import js.lib.*;

extern interface MeshNormalMaterialParameters extends MaterialParameters
{
	@:optional var bumpMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var bumpScale : haxe.extern.EitherType<Float, {}>;
	@:optional var normalMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var normalMapType : haxe.extern.EitherType<NormalMapTypes, {}>;
	@:optional var normalScale : haxe.extern.EitherType<Vector2, {}>;
	@:optional var displacementMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var displacementScale : haxe.extern.EitherType<Float, {}>;
	@:optional var displacementBias : haxe.extern.EitherType<Float, {}>;
	@:optional var wireframe : haxe.extern.EitherType<Bool, {}>;
	@:optional var wireframeLinewidth : haxe.extern.EitherType<Float, {}>;
	@:optional var flatShading : haxe.extern.EitherType<Bool, {}>;
}