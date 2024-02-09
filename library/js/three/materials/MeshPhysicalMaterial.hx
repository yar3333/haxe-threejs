package js.three.materials;

import js.lib.*;

@:native("THREE.MeshPhysicalMaterial")
extern class MeshPhysicalMaterial extends MeshStandardMaterial
{
	/**
	 * Read-only flag to check if a given object is of type {@link MeshPhysicalMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMeshPhysicalMaterial(default, null) : Bool;
	
    /**
	 * @default 'MeshPhysicalMaterial'
	 */
	//var type : String;
	
    /**
	 * @default { 'STANDARD': '', 'PHYSICAL': '' }
	 */
	//var defines : Dynamic<Dynamic>;

	/**
	 * @default 0
	 */
	var clearcoat : Float;
	/**
	 * @default null
	 */
	var clearcoatMap : Texture;
	/**
	 * @default 0
	 */
	var clearcoatRoughness : Float;
	/**
	 * @default null
	 */
	var clearcoatRoughnessMap : Texture;
	/**
	 * @default new THREE.Vector2( 1, 1 )
	 */
	var clearcoatNormalScale : Vector2;
	/**
	 * @default null
	 */
	var clearcoatNormalMap : Texture;
	/**
	 * @default 0.5
	 */
	var reflectivity : Float;
	/**
	 * @default 1.5
	 */
	var ior : Float;
	/**
	 * @default 0.0
	 */
	var sheen : Float;
	/**
	 * @default Color( 0x000000 )
	 */
	var sheenColor : Color;
	/**
	 * @default null
	 */
	var sheenColorMap : Texture;
	/**
	 * @default 1.0
	 */
	var sheenRoughness : Float;
	/**
	 * @default null
	 */
	var sheenRoughnessMap : Texture;
	/**
	 * @default 0
	 */
	var transmission : Float;
	/**
	 * @default null
	 */
	var transmissionMap : Texture;
	/**
	 * @default 0.01
	 */
	var thickness : Float;
	/**
	 * @default null
	 */
	var thicknessMap : Texture;
	/**
	 * @default 0.0
	 */
	var attenuationDistance : Float;
	/**
	 * @default Color( 1, 1, 1 )
	 */
	var attenuationColor : Color;
	/**
	 * @default 1.0
	 */
	var specularIntensity : Float;
	/**
	 * @default Color(1, 1, 1)
	 */
	var specularColor : Color;
	/**
	 * @default null
	 */
	var specularIntensityMap : Texture;
	/**
	 * @default null
	 */
	var specularColorMap : Texture;
	/**
	 * @default null
	 */
	var iridescenceMap : Texture;
	/**
	 * @default 1.3
	 */
	var iridescenceIOR : Float;
	/**
	 * @default 0
	 */
	var iridescence : Float;
	/**
	 * @default [100, 400]
	 */
	var iridescenceThicknessRange : Array<Float>;
	/**
	 * @default null
	 */
	var iridescenceThicknessMap : Texture;
	/**
	 * @default 0
	 */
	@:optional var anisotropy : Int;
	/**
	 * @default 0
	 */
	@:optional var anisotropyRotation : Float;
	/**
	 * @default null
	 */
	@:optional var anisotropyMap : Texture;

	function new(?parameters:MeshPhysicalMaterialParameters) : Void;
}