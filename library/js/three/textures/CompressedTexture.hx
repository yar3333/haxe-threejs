package js.three.textures;

/**
 * Creates a texture based on data in compressed form, for example from a {@link https://en.wikipedia.org/wiki/DirectDraw_Surface | DDS} file.
 * @remarks For use with the {@link THREE.CompressedTextureLoader | CompressedTextureLoader}.
 * @see {@link https://threejs.org/docs/index.html#api/en/textures/CompressedTexture | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/CompressedTexture.js | Source}
 */
@:jsRequire("three", "CompressedTexture")
@:native("THREE.CompressedTexture")
extern class CompressedTexture extends Texture
{
	/**
	 * Read-only flag to check if a given object is of type {@link CompressedTexture}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isCompressedTexture(default, null) : Bool;
    
	/**
	 * The mipmaps array should contain objects with data, width and height. The mipmaps should be of the correct {@link format} and {@link type}.
	 */
	//var mipmaps : Array<js.html.ImageData>;

	/**
	 * @override
	 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
	 * @see {@link THREE.CompressedPixelFormat}
	 */
	//var format : CompressedPixelFormat;

	/**
	 * @override No flipping for cube textures. (also flipping doesn't work for compressed textures)
	 * @defaultValue `false`
	 */
	//var flipY : Bool;

	/**
	 * @override Can't generate mipmaps for compressed textures. mips must be embedded in DDS files
	 * @defaultValue `false`
	 */
	//var generateMipmaps : Bool;

	/**
	 * Creates a texture based on data in compressed form, for example from a {@link https://en.wikipedia.org/wiki/DirectDraw_Surface | DDS} file.
	 * @remarks For use with the {@link THREE.CompressedTextureLoader | CompressedTextureLoader}.
	 * @see {@link https://threejs.org/docs/index.html#api/en/textures/CompressedTexture | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/CompressedTexture.js | Source}
	 */
	function new(mipmaps:Array<js.html.ImageData>, width:Float, height:Float, format:CompressedPixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?anisotropy:Int, ?colorSpace:ColorSpace) : Void;
}