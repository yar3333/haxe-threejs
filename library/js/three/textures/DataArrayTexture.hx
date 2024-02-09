package js.three.textures;

import js.lib.*;

/**
 * Creates an array of textures directly from raw data, width and height and depth
 * @remarks Compatible only with {@link WebGL2RenderingContext | WebGL 2 Rendering Context}.
 * @example
 * ```typescript
 * This creates a[name] where each texture has a different color.
 * // create a buffer with color data
 * const width = 512;
 * const height = 512;
 * const depth = 100;
 * const size = width * height;
 * const data = new Uint8Array(4 * size * depth);
 * for (let i = 0; i & lt; depth; i++) {
 *     const color = new THREE.Color(Math.random(), Math.random(), Math.random());
 *     const r = Math.floor(color.r * 255);
 *     const g = Math.floor(color.g * 255);
 *     const b = Math.floor(color.b * 255);
 *     for (let j = 0; j & lt; size; j++) {
 *         const stride = (i * size + j) * 4;
 *         data[stride] = r;
 *         data[stride + 1] = g;
 *         data[stride + 2] = b;
 *         data[stride + 3] = 255;
 *     }
 * }
 * // used the buffer to create a [name]
 * const texture = new THREE.DataArrayTexture(data, width, height, depth);
 * texture.needsUpdate = true;
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl2_materials_texture2darray | WebGL2 / materials / texture2darray}
 * @see Example: {@link https://threejs.org/examples/#webgl2_rendertarget_texture2darray | WebGL2 / rendertarget / texture2darray}
 * @see {@link https://threejs.org/docs/index.html#api/en/textures/DataArrayTexture | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/DataArrayTexture.js | Source}
 */
@:native("THREE.DataArrayTexture")
extern class DataArrayTexture extends Texture
{
	/**
	 * Read-only flag to check if a given object is of type {@link DataArrayTexture}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isDataArrayTexture(default, null) : Bool;
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
	 * @defaultValue  {@link THREE.ClampToEdgeWrapping}
	 */
	var wrapR : Bool;
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
	 * Creates an array of textures directly from raw data, width and height and depth
	 * @remarks Compatible only with {@link WebGL2RenderingContext | WebGL 2 Rendering Context}.
	 * @example
	 * ```typescript
	 * This creates a[name] where each texture has a different color.
	 * // create a buffer with color data
	 * const width = 512;
	 * const height = 512;
	 * const depth = 100;
	 * const size = width * height;
	 * const data = new Uint8Array(4 * size * depth);
	 * for (let i = 0; i & lt; depth; i++) {
	 *     const color = new THREE.Color(Math.random(), Math.random(), Math.random());
	 *     const r = Math.floor(color.r * 255);
	 *     const g = Math.floor(color.g * 255);
	 *     const b = Math.floor(color.b * 255);
	 *     for (let j = 0; j & lt; size; j++) {
	 *         const stride = (i * size + j) * 4;
	 *         data[stride] = r;
	 *         data[stride + 1] = g;
	 *         data[stride + 2] = b;
	 *         data[stride + 3] = 255;
	 *     }
	 * }
	 * // used the buffer to create a [name]
	 * const texture = new THREE.DataArrayTexture(data, width, height, depth);
	 * texture.needsUpdate = true;
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl2_materials_texture2darray | WebGL2 / materials / texture2darray}
	 * @see Example: {@link https://threejs.org/examples/#webgl2_rendertarget_texture2darray | WebGL2 / rendertarget / texture2darray}
	 * @see {@link https://threejs.org/docs/index.html#api/en/textures/DataArrayTexture | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/DataArrayTexture.js | Source}
	 */
	function new(?data:BufferSource, ?width:Float, ?height:Float, ?depth:Float) : Void;
}