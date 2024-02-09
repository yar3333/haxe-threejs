package js.three;

import js.lib.*;

typedef MeshPhysicalMaterialParameters =
{>MeshStandardMaterialParameters,
	@:optional var clearcoat : Float;
	@:optional var clearcoatMap : Texture;
	@:optional var clearcoatRoughness : Float;
	@:optional var clearcoatRoughnessMap : Texture;
	@:optional var clearcoatNormalScale : Vector2;
	@:optional var clearcoatNormalMap : Texture;
	@:optional var reflectivity : Float;
	@:optional var ior : Float;
	@:optional var sheen : Float;
	@:optional var sheenColor : ColorRepresentation;
	@:optional var sheenColorMap : Texture;
	@:optional var sheenRoughness : Float;
	@:optional var sheenRoughnessMap : Texture;
	@:optional var transmission : Float;
	@:optional var transmissionMap : Texture;
	@:optional var thickness : Float;
	@:optional var thicknessMap : Texture;
	@:optional var attenuationDistance : Float;
	@:optional var attenuationColor : ColorRepresentation;
	@:optional var specularIntensity : Float;
	@:optional var specularColor : ColorRepresentation;
	@:optional var specularIntensityMap : Texture;
	@:optional var specularColorMap : Texture;
	@:optional var iridescenceMap : Texture;
	@:optional var iridescenceIOR : Float;
	@:optional var iridescence : Float;
	@:optional var iridescenceThicknessRange : Array<Float>;
	@:optional var iridescenceThicknessMap : Texture;
	@:optional var anisotropy : Float;
	@:optional var anisotropyRotation : Float;
	@:optional var anisotropyMap : Texture;
}