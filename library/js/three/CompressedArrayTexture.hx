package js.three;

import js.lib.*;

/**
 * Creates an texture 2D array based on data in compressed form, for example from a
 * {@link https://en.wikipedia.org/wiki/DirectDraw_Surface | DDS} file.
 * @remarks For use with the {@link THREE.CompressedTextureLoader | CompressedTextureLoader}.
 * @see {@link https://threejs.org/docs/index.html#api/en/textures/CompressedArrayTexture | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/CompressedArrayTexture.js | Source}
 */
@:native("THREE.CompressedArrayTexture")
extern class CompressedArrayTexture extends CompressedTexture
{
	/**
	 * Read-only flag to check if a given object is of type {@link CompressedArrayTexture}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isCompressedArrayTexture(default, null) : Bool;
	/**
	 * This defines how the texture is wrapped in the depth direction.
	 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
	 * @defaultValue {@link THREE.ClampToEdgeWrapping}
	 */
	var wrapR : Wrapping;

	/**
	 * Creates an texture 2D array based on data in compressed form, for example from a
	 * {@link https://en.wikipedia.org/wiki/DirectDraw_Surface | DDS} file.
	 * @remarks For use with the {@link THREE.CompressedTextureLoader | CompressedTextureLoader}.
	 * @see {@link https://threejs.org/docs/index.html#api/en/textures/CompressedArrayTexture | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/CompressedArrayTexture.js | Source}
	 */
	@:overload(function(mipmaps:Array<ImageData>,width:Float,height:Float,depth:Float,format:CompressedPixelFormat,?type:TextureDataType):Void{})
	function new(mipmaps:Array<ImageData>, width:Float, height:Float, format:CompressedPixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?anisotropy:Float, ?colorSpace:ColorSpace) : Void;
}