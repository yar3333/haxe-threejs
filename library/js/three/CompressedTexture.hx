package js.three;

import js.html.*;

@:native("THREE.CompressedTexture")
extern class CompressedTexture extends Texture
{
	function new(
		mipmaps: Array<ImageData>,
		width: Int,
		height: Int,
		?format:PixelFormat,
		?type:TextureDataType,
		?mapping:Mapping,
		?wrapS:Wrapping,
		?wrapT:Wrapping,
		?magFilter:TextureFilter,
		?minFilter:TextureFilter,
		?anisotropy:Int
	) : Void;

	//var image : { width: Int, height:Int };
	//var mipmaps : Array<ImageData>;
	//var flipY : Bool;
	//var generateMipmaps : Bool;
}