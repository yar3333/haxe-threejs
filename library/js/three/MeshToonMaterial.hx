package js.three;

import js.lib.*;

@:native("THREE.MeshToonMaterial")
extern class MeshToonMaterial extends Material
{
	/**
	 * Read-only flag to check if a given object is of type {@link MeshToonMaterial}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMeshToonMaterial(default, null) : Bool;
	/**
	 * @default 'MeshToonMaterial'
	 */
	var type : String;
	/**
	 * @default { 'TOON': '' }
	 */
	var defines : Dynamic<Dynamic>;
	/**
	 * @default new THREE.Color( 0xffffff )
	 */
	var color : Color;
	/**
	 * @default null
	 */
	var gradientMap : Texture;
	/**
	 * @default null
	 */
	var map : Texture;
	/**
	 * @default null
	 */
	var lightMap : Texture;
	/**
	 * @default 1
	 */
	var lightMapIntensity : Float;
	/**
	 * @default null
	 */
	var aoMap : Texture;
	/**
	 * @default 1
	 */
	var aoMapIntensity : Float;
	/**
	 * @default new THREE.Color( 0x000000 )
	 */
	var emissive : Color;
	/**
	 * @default 1
	 */
	var emissiveIntensity : Float;
	/**
	 * @default null
	 */
	var emissiveMap : Texture;
	/**
	 * @default null
	 */
	var bumpMap : Texture;
	/**
	 * @default 1
	 */
	var bumpScale : Float;
	/**
	 * @default null
	 */
	var normalMap : Texture;
	/**
	 * @default THREE.TangentSpaceNormalMap
	 */
	var normalMapType : NormalMapTypes;
	/**
	 * @default new THREE.Vector2( 1, 1 )
	 */
	var normalScale : Vector2;
	/**
	 * @default null
	 */
	var displacementMap : Texture;
	/**
	 * @default 1
	 */
	var displacementScale : Float;
	/**
	 * @default 0
	 */
	var displacementBias : Float;
	/**
	 * @default null
	 */
	var alphaMap : Texture;
	/**
	 * @default false
	 */
	var wireframe : Bool;
	/**
	 * @default 1
	 */
	var wireframeLinewidth : Float;
	/**
	 * @default 'round'
	 */
	var wireframeLinecap : String;
	/**
	 * @default 'round'
	 */
	var wireframeLinejoin : String;
	/**
	 * Whether the material is affected by fog. Default is true.
	 * @default fog
	 */
	var fog : Bool;

	function new(?parameters:MeshToonMaterialParameters) : Void;
	function setValues(parameters:MeshToonMaterialParameters) : Void;
}