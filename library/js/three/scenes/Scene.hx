package js.three;

import js.lib.*;

/**
 * Scenes allow you to set up what and where is to be rendered by three.js
 * @remarks
 * This is where you place objects, lights and cameras.
 * @see Example: {@link https://threejs.org/examples/#webgl_multiple_scenes_comparison | webgl multiple scenes comparison}
 * @see {@link https://threejs.org/docs/index.html#manual/en/introduction/Creating-a-scene | Manual: Creating a scene}
 * @see {@link https://threejs.org/docs/index.html#api/en/scenes/Scene | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/scenes/Scene.js | Source}
 */
@:native("THREE.Scene")
extern class Scene extends Object3D
{
	/**
	 * Read-only flag to check if a given object is of type {@link Scene}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isScene(default, null) : Bool;
	/**
	 * @defaultValue `Scene`
	 */
	//var type : String; // "Scene"
	/**
	 * A {@link Fog | fog} instance defining the type of fog that affects everything rendered in the scene.
	 * @defaultValue `null`
	 */
	var fog : FogBase;
	/**
	 * Sets the blurriness of the background. Only influences environment maps assigned to {@link THREE.Scene.background | Scene.background}.
	 * @defaultValue `0`
	 * @remarks Expects a `Float` between `0` and `1`.
	 */
	var backgroundBlurriness : Float;
	/**
	 * Attenuates the color of the background. Only applies to background textures.
	 * @defaultValue `1`
	 * @remarks Expects a `Float`
	 */
	var backgroundIntensity : Float;
	/**
	 * Forces everything in the {@link Scene} to be rendered with the defined material.
	 * @defaultValue `null`
	 */
	var overrideMaterial : Material;
	/**
	 * Defines the background of the scene.
	 * @remarks Valid inputs are:
	 *  - A {@link THREE.Color | Color} for defining a uniform colored background.
	 *  - A {@link THREE.Texture | Texture} for defining a (flat) textured background.
	 *  - Texture cubes ({@link THREE.CubeTexture | CubeTexture}) or equirectangular textures for defining a skybox.</li>
	 * @defaultValue `null`
	 */
	var background : haxe.extern.EitherType<Color, haxe.extern.EitherType<Texture, CubeTexture>>;
	/**
	 * Sets the environment map for all physical materials in the scene.
	 * However, it's not possible to overwrite an existing texture assigned to {@link THREE.MeshStandardMaterial.envMap | MeshStandardMaterial.envMap}.
	 * @defaultValue `null`
	 */
	var environment : Texture;

	/**
	 * Scenes allow you to set up what and where is to be rendered by three.js
	 * @remarks
	 * This is where you place objects, lights and cameras.
	 * @see Example: {@link https://threejs.org/examples/#webgl_multiple_scenes_comparison | webgl multiple scenes comparison}
	 * @see {@link https://threejs.org/docs/index.html#manual/en/introduction/Creating-a-scene | Manual: Creating a scene}
	 * @see {@link https://threejs.org/docs/index.html#api/en/scenes/Scene | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/scenes/Scene.js | Source}
	 */
	function new() : Void;
	/**
	 * Convert the {@link Scene} to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	 */
	function toJSON(?meta:Dynamic) : Dynamic;
}