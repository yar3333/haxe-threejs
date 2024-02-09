package js.three;

import js.lib.*;

extern interface MeshPhysicalMaterialParameters extends MeshStandardMaterialParameters
{
	@:optional var clearcoat : haxe.extern.EitherType<Float, {}>;
	@:optional var clearcoatMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var clearcoatRoughness : haxe.extern.EitherType<Float, {}>;
	@:optional var clearcoatRoughnessMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var clearcoatNormalScale : haxe.extern.EitherType<Vector2, {}>;
	@:optional var clearcoatNormalMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var reflectivity : haxe.extern.EitherType<Float, {}>;
	@:optional var ior : haxe.extern.EitherType<Float, {}>;
	@:optional var sheen : haxe.extern.EitherType<Float, {}>;
	@:optional var sheenColor : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var sheenColorMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var sheenRoughness : haxe.extern.EitherType<Float, {}>;
	@:optional var sheenRoughnessMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var transmission : haxe.extern.EitherType<Float, {}>;
	@:optional var transmissionMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var thickness : haxe.extern.EitherType<Float, {}>;
	@:optional var thicknessMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var attenuationDistance : haxe.extern.EitherType<Float, {}>;
	@:optional var attenuationColor : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var specularIntensity : haxe.extern.EitherType<Float, {}>;
	@:optional var specularColor : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var specularIntensityMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var specularColorMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var iridescenceMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var iridescenceIOR : haxe.extern.EitherType<Float, {}>;
	@:optional var iridescence : haxe.extern.EitherType<Float, {}>;
	@:optional var iridescenceThicknessRange : haxe.extern.EitherType<[number, number], {}>;
	@:optional var iridescenceThicknessMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var anisotropy : haxe.extern.EitherType<Float, {}>;
	@:optional var anisotropyRotation : haxe.extern.EitherType<Float, {}>;
	@:optional var anisotropyMap : haxe.extern.EitherType<Texture, {}>;
}