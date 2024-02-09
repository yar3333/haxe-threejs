package js.three;

import js.lib.*;
import js.three.Constants;

/**
 * Creates a texture from a {@link https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas | canvas element}.
 * @remarks
 * This is almost the same as the base {@link Texture | Texture} class,
 * except that it sets {@link Texture.needsUpdate | needsUpdate} to `true` immediately.
 * @see {@link THREE.Texture | Texture}
 * @see {@link https://threejs.org/docs/index.html#api/en/textures/CanvasTexture | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/CanvasTexture.js | Source}
 */
@:native("THREE.CanvasTexture")
extern class CanvasTexture extends Texture
{
	/**
	 * Read-only flag to check if a given object is of type {@link CanvasTexture}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isCanvasTexture(default, null) : Bool;

	/**
	 * Creates a texture from a {@link https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas | canvas element}.
	 * @remarks
	 * This is almost the same as the base {@link Texture | Texture} class,
	 * except that it sets {@link Texture.needsUpdate | needsUpdate} to `true` immediately.
	 * @see {@link THREE.Texture | Texture}
	 * @see {@link https://threejs.org/docs/index.html#api/en/textures/CanvasTexture | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/CanvasTexture.js | Source}
	 */
	function new(canvas:haxe.extern.EitherType<TexImageSource, OffscreenCanvas>, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Int) : Void;
}