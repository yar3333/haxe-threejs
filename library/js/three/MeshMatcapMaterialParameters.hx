package js.three;

import js.lib.*;

extern interface MeshMatcapMaterialParameters extends MaterialParameters
{
	@:optional var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var matcap : haxe.extern.EitherType<Texture, {}>;
	@:optional var map : haxe.extern.EitherType<Texture, {}>;
	@:optional var bumpMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var bumpScale : haxe.extern.EitherType<Float, {}>;
	@:optional var normalMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var normalMapType : haxe.extern.EitherType<NormalMapTypes, {}>;
	@:optional var normalScale : haxe.extern.EitherType<Vector2, {}>;
	@:optional var displacementMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var displacementScale : haxe.extern.EitherType<Float, {}>;
	@:optional var displacementBias : haxe.extern.EitherType<Float, {}>;
	@:optional var alphaMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var fog : haxe.extern.EitherType<Bool, {}>;
	@:optional var flatShading : haxe.extern.EitherType<Bool, {}>;
}