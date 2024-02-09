package js.three;

import js.lib.*;

extern interface MeshStandardMaterialParameters extends MaterialParameters
{
	@:optional var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var roughness : haxe.extern.EitherType<Float, {}>;
	@:optional var metalness : haxe.extern.EitherType<Float, {}>;
	@:optional var map : haxe.extern.EitherType<Texture, {}>;
	@:optional var lightMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var lightMapIntensity : haxe.extern.EitherType<Float, {}>;
	@:optional var aoMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var aoMapIntensity : haxe.extern.EitherType<Float, {}>;
	@:optional var emissive : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var emissiveIntensity : haxe.extern.EitherType<Float, {}>;
	@:optional var emissiveMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var bumpMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var bumpScale : haxe.extern.EitherType<Float, {}>;
	@:optional var normalMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var normalMapType : haxe.extern.EitherType<NormalMapTypes, {}>;
	@:optional var normalScale : haxe.extern.EitherType<Vector2, {}>;
	@:optional var displacementMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var displacementScale : haxe.extern.EitherType<Float, {}>;
	@:optional var displacementBias : haxe.extern.EitherType<Float, {}>;
	@:optional var roughnessMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var metalnessMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var alphaMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var envMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var envMapIntensity : haxe.extern.EitherType<Float, {}>;
	@:optional var wireframe : haxe.extern.EitherType<Bool, {}>;
	@:optional var wireframeLinewidth : haxe.extern.EitherType<Float, {}>;
	@:optional var fog : haxe.extern.EitherType<Bool, {}>;
	@:optional var flatShading : haxe.extern.EitherType<Bool, {}>;
}