package js.three.textures;

import js.lib.*;
import js.three.Constants;

/**
 * Creates a cube texture made up of six images.
 * @remarks
 * {@link CubeTexture} is almost equivalent in functionality and usage to {@link Texture}.
 * The only differences are that the images are an array of _6_ images as opposed to a single image,
 * and the mapping options are {@link THREE.CubeReflectionMapping} (default) or {@link THREE.CubeRefractionMapping}
 * @example
 * ```typescript
 * const loader = new THREE.CubeTextureLoader();
 * loader.setPath('textures/cube/pisa/');
 * const textureCube = loader.load(['px.png', 'nx.png', 'py.png', 'ny.png', 'pz.png', 'nz.png']);
 * const material = new THREE.MeshBasicMaterial({
 *     color: 0xffffff,
 *     envMap: textureCube
 * });
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/textures/CubeTexture | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/CubeTexture.js | Source}
 */
@:native("THREE.CubeTexture")
extern class CubeTexture extends Texture
{
	/**
	 * Read-only flag to check if a given object is of type {@link CubeTexture}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isCubeTexture(default, null) : Bool;
	/**
	 * @inheritDoc
	 * @defaultValue {@link THREE.CubeReflectionMapping}
	 */
	//var mapping : CubeTextureMapping;
	/**
	 * @inheritDoc
	 * @defaultValue `false`
	 */
	//var flipY : Bool;

	/**
	 * Creates a cube texture made up of six images.
	 * @remarks
	 * {@link CubeTexture} is almost equivalent in functionality and usage to {@link Texture}.
	 * The only differences are that the images are an array of _6_ images as opposed to a single image,
	 * and the mapping options are {@link THREE.CubeReflectionMapping} (default) or {@link THREE.CubeRefractionMapping}
	 * @example
	 * ```typescript
	 * const loader = new THREE.CubeTextureLoader();
	 * loader.setPath('textures/cube/pisa/');
	 * const textureCube = loader.load(['px.png', 'nx.png', 'py.png', 'ny.png', 'pz.png', 'nz.png']);
	 * const material = new THREE.MeshBasicMaterial({
	 *     color: 0xffffff,
	 *     envMap: textureCube
	 * });
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/textures/CubeTexture | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/CubeTexture.js | Source}
	 */
	function new(?images:Array<Dynamic>, ?mapping:CubeTextureMapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Int, ?colorSpace:ColorSpace) : Void;
}