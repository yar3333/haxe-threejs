package js.three;

import js.lib.*;
import js.three.Constants;

/**
 * Creates a three-dimensional texture from raw data, with parameters to divide it into width, height, and depth
 * @remarks Compatible only with {@link WebGL2RenderingContext | WebGL 2 Rendering Context}.
 * @example
 * ```typescript
 * This creates a[name] with repeating data, 0 to 255
 * // create a buffer with some data
 * const sizeX = 64;
 * const sizeY = 64;
 * const sizeZ = 64;
 * const data = new Uint8Array(sizeX * sizeY * sizeZ);
 * let i = 0;
 * for (let z = 0; z & lt; sizeZ; z++) {
 *     for (let y = 0; y & lt; sizeY; y++) {
 *         for (let x = 0; x & lt; sizeX; x++) {
 *             data[i] = i % 256;
 *             i++;
 *         }
 *     }
 * }
 * // use the buffer to create the texture
 * const texture = new THREE.Data3DTexture(data, sizeX, sizeY, sizeZ);
 * texture.needsUpdate = true;
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl2_materials_texture3d | WebGL2 / materials / texture3d}
 * @see Example: {@link https://threejs.org/examples/#webgl2_materials_texture3d_partialupdate | WebGL2 / materials / texture3d / partialupdate}
 * @see Example: {@link https://threejs.org/examples/#webgl2_volume_cloud | WebGL2 / volume / cloud}
 * @see Example: {@link https://threejs.org/examples/#webgl2_volume_perlin | WebGL2 / volume / perlin}
 * @see {@link https://threejs.org/docs/index.html#api/en/textures/Data3DTexture | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/Data3DTexture.js | Source}
 */
@:native("THREE.Data3DTexture")
extern class Data3DTexture extends Texture
{
	/**
	 * Read-only flag to check if a given object is of type {@link Data3DTexture}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isData3DTexture(default, null) : Bool;
	/**
	 * @override
	 * @defaultValue {@link THREE.NearestFilter}
	 */
	//var magFilter : MagnificationTextureFilter;
	/**
	 * @override
	 * @defaultValue {@link THREE.NearestFilter}
	 */
	//var minFilter : MinificationTextureFilter;
	/**
	 * @override
	 * @defaultValue {@link THREE.ClampToEdgeWrapping}
	 */
	var wrapR : Wrapping;
	/**
	 * @override
	 * @defaultValue `false`
	 */
	//var flipY : Bool;
	/**
	 * @override
	 * @defaultValue `false`
	 */
	//var generateMipmaps : Bool;
	/**
	 * @override
	 * @defaultValue `1`
	 */
	//var unpackAlignment : Float;

	/**
	 * Creates a three-dimensional texture from raw data, with parameters to divide it into width, height, and depth
	 * @remarks Compatible only with {@link WebGL2RenderingContext | WebGL 2 Rendering Context}.
	 * @example
	 * ```typescript
	 * This creates a[name] with repeating data, 0 to 255
	 * // create a buffer with some data
	 * const sizeX = 64;
	 * const sizeY = 64;
	 * const sizeZ = 64;
	 * const data = new Uint8Array(sizeX * sizeY * sizeZ);
	 * let i = 0;
	 * for (let z = 0; z & lt; sizeZ; z++) {
	 *     for (let y = 0; y & lt; sizeY; y++) {
	 *         for (let x = 0; x & lt; sizeX; x++) {
	 *             data[i] = i % 256;
	 *             i++;
	 *         }
	 *     }
	 * }
	 * // use the buffer to create the texture
	 * const texture = new THREE.Data3DTexture(data, sizeX, sizeY, sizeZ);
	 * texture.needsUpdate = true;
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl2_materials_texture3d | WebGL2 / materials / texture3d}
	 * @see Example: {@link https://threejs.org/examples/#webgl2_materials_texture3d_partialupdate | WebGL2 / materials / texture3d / partialupdate}
	 * @see Example: {@link https://threejs.org/examples/#webgl2_volume_cloud | WebGL2 / volume / cloud}
	 * @see Example: {@link https://threejs.org/examples/#webgl2_volume_perlin | WebGL2 / volume / perlin}
	 * @see {@link https://threejs.org/docs/index.html#api/en/textures/Data3DTexture | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/Data3DTexture.js | Source}
	 */
	function new(?data:BufferSource, ?width:Float, ?height:Float, ?depth:Float) : Void;
}