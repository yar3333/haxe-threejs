package js.three;

import js.lib.*;

/**
 * This class generates a Prefiltered, Mipmapped Radiance Environment Map (PMREM) from a cubeMap environment texture.
 * @remarks
 * This allows different levels of blur to be quickly accessed based on material roughness
 * Unlike a traditional mipmap chain, it only goes down to the LOD_MIN level (above), and then creates extra even more filtered 'mips' at the same LOD_MIN resolution,
 * associated with higher roughness levels
 * In this way we maintain resolution to smoothly interpolate diffuse lighting while limiting sampling computation.
 * @remarks
 * Note: The minimum {@link THREE.MeshStandardMaterial | MeshStandardMaterial}'s roughness depends on the size of the provided texture
 * If your render has small dimensions or the shiny parts have a lot of curvature, you may still be able to get away with a smaller texture size.
 * 
 * | texture size | minimum roughness  |
 * |--------------|--------------------|
 * | 16           | 0.21               |
 * | 32           | 0.15               |
 * | 64           | 0.11               |
 * | 128          | 0.076              |
 * | 256          | 0.054              |
 * | 512          | 0.038              |
 * | 1024         | 0.027              |
 * 
 * @see {@link https://threejs.org/docs/index.html#api/en/extras/PMREMGenerator | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/PMREMGenerator.js | Source}
 */
@:native("THREE.PMREMGenerator")
extern class PMREMGenerator
{
	/**
	 * This class generates a Prefiltered, Mipmapped Radiance Environment Map (PMREM) from a cubeMap environment texture.
	 * @remarks
	 * This allows different levels of blur to be quickly accessed based on material roughness
	 * Unlike a traditional mipmap chain, it only goes down to the LOD_MIN level (above), and then creates extra even more filtered 'mips' at the same LOD_MIN resolution,
	 * associated with higher roughness levels
	 * In this way we maintain resolution to smoothly interpolate diffuse lighting while limiting sampling computation.
	 * @remarks
	 * Note: The minimum {@link THREE.MeshStandardMaterial | MeshStandardMaterial}'s roughness depends on the size of the provided texture
	 * If your render has small dimensions or the shiny parts have a lot of curvature, you may still be able to get away with a smaller texture size.
	 * 
	 * | texture size | minimum roughness  |
	 * |--------------|--------------------|
	 * | 16           | 0.21               |
	 * | 32           | 0.15               |
	 * | 64           | 0.11               |
	 * | 128          | 0.076              |
	 * | 256          | 0.054              |
	 * | 512          | 0.038              |
	 * | 1024         | 0.027              |
	 * 
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/PMREMGenerator | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/PMREMGenerator.js | Source}
	 */
	function new(renderer:WebGLRenderer) : Void;
	/**
	 * Generates a PMREM from a supplied Scene, which can be faster than using an image if networking bandwidth is low
	 * @remarks
	 * Optional near and far planes ensure the scene is rendered in its entirety (the cubeCamera is placed at the origin).
	 */
	function fromScene(scene:Scene, ?sigma:Float, ?near:Float, ?far:Float) : WebGLRenderTarget;
	/**
	 * Generates a PMREM from an equirectangular texture.
	 */
	function fromEquirectangular(equirectangular:Texture, ?renderTarget:WebGLRenderTarget) : WebGLRenderTarget;
	/**
	 * Generates a PMREM from an cubemap texture.
	 */
	function fromCubemap(cubemap:CubeTexture, ?renderTarget:WebGLRenderTarget) : WebGLRenderTarget;
	/**
	 * Pre-compiles the cubemap shader
	 * @remarks
	 * You can get faster start-up by invoking this method during your texture's network fetch for increased concurrency.
	 */
	function compileCubemapShader() : Void;
	/**
	 * Pre-compiles the equirectangular shader
	 * @remarks
	 * You can get faster start-up by invoking this method during your texture's network fetch for increased concurrency.
	 */
	function compileEquirectangularShader() : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
}